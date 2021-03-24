import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { UserService } from 'src/app/services/user.service';
import { Socket } from 'ngx-socket-io';
import {  Observable } from 'rxjs';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-nav-bar-template',
  templateUrl: './nav-bar-template.component.html',
  styleUrls: ['./nav-bar-template.component.scss']
})
export class NavBarTemplateComponent implements OnInit {
  unseen_count=0;
  user_data:any;
  user_role_id:any;
  user_profile_details:any;
  user_profile:any;
  isLoading:boolean = false;
  isEmpty:boolean = false;
  message_count=0;
  conversation_limit=100;
  conversation_current_page=1;
  conversation_total_pages:any;
  notification_total_pages:any;
  notification_limit=5;
  notification_current_page=1;
  notification_list=[];
  notification_total=0;
  isNotifEmpty:boolean=false;
  token:any;
  constructor(
    private socket: Socket,
    private router: Router,
    public userService: UserService,
    private spinner: NgxSpinnerService,    
    public ngxSmartModalService: NgxSmartModalService,
  ) { 
    this.userService.getCountObservable().subscribe( res  =>{
      this.unseen_count = res
    })
  }

  ngOnInit(){
    this.token=localStorage.getItem('token');
    console.log('token',this.token)
    let params={
      token: this.token,
    }
    this.userService.validateToken(params).then(response => {
      if(response['success']!=true){
        localStorage.removeItem('user_id');
        localStorage.removeItem('user_role_id');
        localStorage.removeItem('token');
        this.ngxSmartModalService.open('expired');
      }
    });
    this.getMessage();
    this.getNotification();
    this.getNotificationList(JSON.parse(localStorage.getItem('user_id')));
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    this.user_role_id=JSON.parse(localStorage.getItem('user_role_id'));
    this.getUserProfile(this.user_data);
    this.getChatConversationCount(localStorage.getItem('user_id'));
    console.log(this.user_role_id)
    if(!this.user_data){
      this.router.navigate(['admin/login']);
    }
    if(this.user_role_id=='2'){
      this.router.navigate(['partners/partners_dashboard']);
    }
  }
  getMessage(){
    return this.socket
    .fromEvent("chat message").subscribe(data=>{
      this.playAudio();
      this.getChatConversationCount(localStorage.getItem('user_id'));
    });
  }
  getNotification(){
    return this.socket
    .fromEvent("notification").subscribe(data=>{
      if(data['notification_sender']==JSON.parse(localStorage.getItem('user_id')) && (data['notification_type']!='1'||data['notification_type']!='2'||data['notification_type']!='3') ){
        this.getUserProfileNotification(data['notification_receiver'],data['notification_id'])
        console.log('count');
      }
      if(data['notification_receiver']==JSON.parse(localStorage.getItem('user_id'))){
        this.notification_total++;
        this.isNotifEmpty=false;
        this.notification_list.unshift(data);
      }
    });
  }
  logout(){
    localStorage.removeItem('user_id');
    localStorage.removeItem('user_role_id');
    localStorage.removeItem('token');
		this.router.navigate(['admin/login']);
  }
  getUserProfile(user_id){
    this.isLoading = true;
    this.userService.getProfile(user_id).then(response => {
      this.user_profile=response['result'];
      console.log(this.user_profile);
      this.isLoading = false;
    })
  }
  getChatConversationCount(user_id){
    let params={
      user_id: user_id,
    }
    this.userService.getConversationCount(params).then(response => {
      console.log('unseen_count',response['unseen_count'][0].unseen_count);
      this.message_count=response['unseen_count'][0].unseen_count;
      this.userService.unseen_count_function(this.message_count);
    })
  }
  playAudio(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/alert.mp3";
    audio.load();
    audio.play();
  }
  sendNotification(){
    console.log('test emit')
    let notification={
      notification_receiver: this.user_data,
    }
    this.socket.emit("notification", notification);
  }
  getNotificationList(user_id){
    this.isNotifEmpty=false;
    let params={
      user_id: user_id,
      page: this.notification_current_page,
      limit: this.notification_limit,
    }
    this.userService.notificationList(params).then(response => {
      if(response['success']==true){
        this.notification_list=response['result']['data'];
        this.notification_total=response['result']['unseen_total'];
        console.log('notification_list',this.notification_list);
      }else{
        this.isNotifEmpty=true;
      }
    });
  }

  toggleDropdown(ev){
    ev.preventDefault();
    ev.stopPropagation();
    let x = document.getElementById('dropdown-delete');
    x.classList.add('show');
  }
  
  onScrollBottom(){
    this.notification_current_page++;
    let params={
      user_id: JSON.parse(localStorage.getItem('user_id')),
      page: this.notification_current_page,
      limit: this.notification_limit,
    }
    this.userService.notificationList(params).then(response => {
      for(let i=0;i<response['result']['data'].length;i++){
        this.notification_list.push(response['result']['data'][i]);
      }
      console.log('notification_list',this.notification_list);
    });
  }
  seeNotificationNewLogin(notification_link, notification_id){
    let params={
      notification_id: notification_id,
      notification_read:1,
    }
    this.userService.seeNotification(params).then(response => {
      console.log(response);
      if(response['success']==true){
        window.location.href = '/admin/partners-details/'+notification_link;
      }
    });
  }
  seeNotificationNewPriceCheck(notification_link, notification_id){
    let params={
      notification_id: notification_id,
      notification_read:1,
    }
    this.userService.seeNotification(params).then(response => {
      console.log(response);
      if(response['success']==true){
        window.location.href = '/admin/price-checks-details/'+notification_link;
      }
    });
  }
  seeNotificationNewJobOrder(notification_link, notification_id){
    let params={
      notification_id: notification_id,
      notification_read:1,
    }
    this.userService.seeNotification(params).then(response => {
      console.log(response);
      if(response['success']==true){
        window.location.href = '/admin/job-order-details/'+notification_link;
      }
    });
  }

  deleteNotification(e, notification_id){ 
    this.spinner.show();
    e.preventDefault();
    e.stopPropagation();
    let params={
      notification_id: notification_id,
      notification_isDeleted:1,
    }
    this.userService.seeNotification(params).then(response => {
     if(response['success']==true){
      var indexToDelete = this.notification_list.map(function(e) { return e.notification_id; }).indexOf(notification_id);
      this.notification_list.splice(indexToDelete, 1);
      this.spinner.hide();
      setTimeout(()=>{  
        this.ngxSmartModalService.open('wrong');
      }, 500);
     }else{
      this.spinner.hide();
     }
    });
  }

  closeWrong(){
    this.ngxSmartModalService.close('wrong');
    window.location.href = "/partners/partners_dashboard";
  }

  markRead(){
    this.spinner.show();
    let params={
      notification_receiver: JSON.parse(localStorage.getItem('user_id')),
    }
    this.userService.seeAllNotification(params).then(response => {
      console.log(response);
      this.getNotificationList(JSON.parse(localStorage.getItem('user_id')));
    });
    setTimeout(()=>{  
      this.spinner.hide();
    }, 500);
    console.log('mark as read');
  }
  getUserProfileNotification(user_id,notification){
    this.userService.getProfile(user_id).then(response => {
      console.log(response['result'][0].email_notification);
      // if(response['result'][0].email_notification==1){
      //   this.userService.partnerNotitificationEmail(notification);
      // }
    })
  }
}
