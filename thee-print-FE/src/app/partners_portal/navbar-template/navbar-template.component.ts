import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { Socket } from 'ngx-socket-io';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { UserService } from 'src/app/services/user.service';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-navbar-template',
  templateUrl: './navbar-template.component.html',
  styleUrls: ['./navbar-template.component.scss']
})
export class NavbarTemplateComponent implements OnInit {
  user_data:any;
  user_role_id:any;
  user_profile_details:any;
  user_profile:any;
  isLoading:boolean = false;
  isEmpty:boolean = false;
  message_count=0;
  chat:any;
  conversationId:any;
  notification_total_pages:any;
  notification_limit=5;
  notification_current_page=1;
  notification_list=[];
  notification_total=0;
  isNotifEmpty:boolean = false;
  disableNotification:boolean=false;
  token:any;
  constructor(
    private socket: Socket,
    private router: Router,
    public userService: UserService,
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,
  ) { 
    
  }

  ngOnInit() {
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
    this.getNotification()
    this.getNotificationList(JSON.parse(localStorage.getItem('user_id')));
    this.getChatConversation(localStorage.getItem('user_id'));
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    this.user_role_id=JSON.parse(localStorage.getItem('user_role_id'));
    if(!this.user_data){
      this.router.navigate(['partners_login']);
    }
    if(this.user_role_id=='1'){
      this.router.navigate(['admin/dashboard']);
    }
    this.getUserProfile(this.user_data);
  }
  logout(){
    localStorage.removeItem('user_id');
    localStorage.removeItem('user_role_id');
    localStorage.removeItem('token');
		this.router.navigate(['partners_login']);
  }

  getUserProfile(user_id){
    this.isLoading = true;
    this.userService.getProfile(user_id).then(response => {
      this.user_profile=response['result'];
      if(this.user_profile[0].web_notification==0){
        this.disableNotification=true;
      }else{
        this.disableNotification=false;
      }
      this.isLoading = false;
    })
  }
  getChatConversation(user_id){
    let params={
      partner_id: user_id
    }
    this.userService.getConversation(params).then(response => {
      if(response['success']==true){
        this.conversationId=response['result']['data'][0].id;
        this.isLoading = false;
      }
    })
  }
  
  getMessage() {
    return this.socket
    .fromEvent("chat message").subscribe(data=>{
      console.log('socket',data);
      console.log('socket conversation_id',data['chat_conversation_id']);
      console.log('default conversation_id',this.conversationId);
      if(this.conversationId==data['conversation_id']||this.conversationId==data['chat_conversation_id']){
        if(data['user_id']!=JSON.parse(localStorage.getItem('user_id'))){
          this.playAudio();
          this.message_count=1;
          console.log('console',this.message_count);
        }
      }
      if(data['receiver']==JSON.parse(localStorage.getItem('user_id'))&&data['sender']!=JSON.parse(localStorage.getItem('user_id'))){
        this.playAudio();
        this.message_count=1;
        console.log('console',this.message_count);
      }
    });
  }
  playAudio(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/alert.mp3";
    audio.load();
    audio.play();
  }
  seeMessage(){
    this.message_count--;
  }

  toggleDropdown(ev){
    console.log('tesdasst');
    let x = document.getElementById('dropdown-delete');
    // x.classList.add('show');
    ev.preventDefault();
    ev.stopPropagation();
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
  getNotification() {
    return this.socket
    .fromEvent("notification").subscribe(data=>{
      console.log(data)
      if(data['notification_receiver']==JSON.parse(localStorage.getItem('user_id'))){
        this.isNotifEmpty=false;
        this.notification_total++;
        this.notification_list.unshift(data); 
      }
    });
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
  seeNotificationJobOrder(notification_link, notification_id){
    let params={
      notification_id: notification_id,
      notification_read:1,
    }
    this.userService.seeNotification(params).then(response => {
      console.log(response);
      if(response['success']==true){
        window.location.href = '/partners/partners_job_order_details/'+notification_link;
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
  closeWrong(){
    this.ngxSmartModalService.close('wrong');
    window.location.href = "/partners/partners_dashboard";
  }
}
