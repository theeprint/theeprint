import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { Socket } from 'ngx-socket-io';
import { UserService } from 'src/app/services/user.service';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { NavBarTemplateComponent } from '../../nav_bar_template/nav-bar-template/nav-bar-template.component';
import { DebounceService } from 'src/app/services/debounce.service';

@Component({
  selector: 'app-admin-messages',
  templateUrl: './admin-messages.component.html',
  styleUrls: ['./admin-messages.component.scss']
})
export class AdminMessagesComponent implements OnInit {
  // @ViewChild('scrollContainer', {static:false}) scrollContainer:ElementRef;
  //delete conversation
  public deleteForm: FormGroup;
  passType = 'password';
  showPassword : boolean = false;
  errorMessage:any;
  partner_list:any;
  message_count:any;
  searchForm : FormGroup;
  searchNewMessageForm : FormGroup;
  search_keyword='';
  sendMessageForm : FormGroup;
  current_page=1;
  partner_company = "Happy Shop"
  message = "Hi! Thee Print, I just want to follow up my job order."
  created_at = '11/22/2020 10:30 am'
  partner_logo = '/assets/images/Happy_Shop.svg'
  owner_logo = '/assets/images/theeprint.svg'
  partner_first_name = 'Eleanor'
  partner_last_name = 'Pena'
  showNewMessage:boolean = false;
  isEmpty = false;
  conversations:any;
  conversationId:any;
  currentConversation:any;
  chat=[];
  limit=10;
  searchKey: any=null;
  isScrolling:boolean = false;
  user_id:any;
  total_pages: any;
  user_profile: any;
  seen_by:any;
  conversation_limit=10;
  conversation_total_pages:any;
  conversation_isScrolling:boolean =false;
  conversation_current_page=1;
  receiver:any;
  conversationEmpty:boolean=true;
  messageEmpty:boolean=true;
  newMessageSearchField:any;
  deletedBy='';
  showInputMessage:boolean=false;
  newConvo:boolean=false;
  searchNewKey:any=null;
  newMessageSearchField2: any;
  today = new Date();
  constructor(
    private spinner: NgxSpinnerService,
    private router: Router,
    private socket: Socket,
    protected formBuilder : FormBuilder,  
    public debounce: DebounceService,
    public ngxSmartModalService: NgxSmartModalService,
    public userService: UserService,
  ) { 
    this.searchKey = this.debounce.debounce(() => {
      this.newMessageSearchField=this.searchForm.value.search;
      this.searchList();
    }, 500);
    this.searchNewKey = this.debounce.debounce(() => {
      this.newMessageSearchField2=this.searchNewMessageForm.value.search_keyword;
      this.newMessageSearch();
    }, 500);

    this.searchNewMessageForm = this.formBuilder.group({
      search_keyword: [''],
    });

    this.sendMessageForm = this.formBuilder.group({
      message: ['', Validators.compose([Validators.required,Validators.minLength(1)])],
    });
    this.searchForm = this.formBuilder.group({
      search:['']
    });

    this.deleteForm = this.formBuilder.group({
      password: ['',[Validators.required]],
      id: ['',[Validators.required]],
    })
  }

  ngOnInit(
  ){
    this.user_id=JSON.parse(localStorage.getItem('user_id'));
    this.getUserProfile(localStorage.getItem('user_id'));
    if(JSON.parse(localStorage.getItem('partner_message'))){
      this.getChatConversation2(JSON.parse(localStorage.getItem('user_id')));
      this.userService.getProfile(JSON.parse(localStorage.getItem('partner_message'))).then(response => {
        this.receiver=JSON.parse(localStorage.getItem('user_id'));
        if(response['success']==true){
          this.partner_list=response['result'];          
          this.checkConversation(JSON.parse(localStorage.getItem('partner_message')),'0' );
          this.getDeleteMessage();
          this.getMessage();
        }
      });
    }else{
      this.getChatConversation(localStorage.getItem('user_id'));
      this.getDeleteMessage();
      this.getMessage();
    }
  }
  
  newMessage(){
    this.showNewMessage = true
    this.showInputMessage = true
  }

  getChatConversation(user_id){
    let params={
      user_id: user_id,
      limit : this.conversation_limit,
      page : this.conversation_current_page,
    }
    this.userService.getConversation(params).then(response => {
      if(response['success']==true){
        this.conversationEmpty=false;
        this.conversation_total_pages=response['result'].total_pages;
        this.conversations=response['result']['data'];
        for(let i=0;i<1;i++){
          this.currentConversation=response['result']['data'][0];
        }
        this.getChatMessage(this.currentConversation.id,'',this.currentConversation.seen_by);
      }else{
        this.conversationEmpty=true;
      }
      console.log('current conversation',this.currentConversation)
    })
  }

  getChatMessage(conversation_id, i, seen_by){
    this.partner_list=[];
    this.showNewMessage=false;
    if(i!=''){
      this.currentConversation=i;
      this.current_page=1;
      this.chat=[];
    }
    let param = {
      id:conversation_id,
      seen_by: seen_by+localStorage.getItem('user_id')+',',
    }
    this.userService.updateConversation(param).then(response => {
      if(response['success']==true){
        let myCompOneObj = new NavBarTemplateComponent(this.socket,this.router, this.userService, this.spinner, this.ngxSmartModalService);
        myCompOneObj.getChatConversationCount(localStorage.getItem('user_id'));
        let params={
          user_id: localStorage.getItem('user_id'),
          limit : this.conversation_limit,
          page : this.conversation_current_page,
        }
        this.userService.getConversation(params).then(response => {
          if(response['success']==true){
            this.conversation_total_pages=response['result'].total_pages;
            this.conversations=response['result']['data'];
          }
        });
      }
    })
    this.isEmpty = false;
    let params={
      conversation_id:conversation_id,
      limit : this.limit,
      page : this.current_page,
    }

    this.userService.getConversationMessage(params).then(response => {
      if(response['success']==true){
        this.messageEmpty=false;
        this.total_pages=response['result'].total_pages;
        for(let i=0;i<response['result']['data'].length;i++){
          this.chat.unshift(response['result']['data'][i]);
        }
        this.chat = this.chat.filter(obj => Object.keys(obj).includes("chat_conversation_id"));
        if(this.isScrolling){
          setTimeout(()=>{   
            this.afterScroll();
          }, 1);
        }else{
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.scrollToBottom();
          }, 1);
        }
      }else{
        this.messageEmpty = true;
      }
    });
    this.conversationId=conversation_id;
    console.log('current_conversation_id',this.conversationId)
  }
  sendMessage(msg){
    this.messageEmpty=false;
    this.socket.emit("message", msg);
  }
  sendMsg(){
    if (this.sendMessageForm.valid) {
      this.current_page=1;
      let message={
        user_id: JSON.parse(localStorage.getItem('user_id')),
        message: this.sendMessageForm.value.message,
        user_profile_avatar: this.user_profile[0].user_profile_avatar,
        user_role_id: this.user_profile[0].user_role_id,
        user_profile_first_name: this.user_profile[0].user_profile_first_name,
        user_profile_last_name: this.user_profile[0].user_profile_last_name,
        deleted_by:'',
        update_at: this.today,
      }
      if(this.conversationId){
        message['conversation_id']=this.conversationId
      }
      if(this.receiver){
        message['user_id']=this.user_id
        message['receiver']=this.receiver
        message['sender']=this.user_id
      }
      if(JSON.parse(localStorage.getItem('partner_message'))){
        message['user_id']=this.user_id
        message['receiver']=JSON.parse(localStorage.getItem('partner_message'))
        message['sender']=this.user_id
      }
      // if(this.conversationId==this.currentConversation.id){
      //   this.chat.push(message);
      // }
      localStorage.removeItem('partner_message');
      this.messageEmpty = false;
      this.sendMessage(message);
      setTimeout(()=>{    
        this.sendMessageForm.reset();                       //<<<---using ()=> syntax
        this.scrollToBottom();
      }, 500);
    }
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      if (this.sendMessageForm.valid) {
        this.sendMsg();
        this.sendMessageForm.reset();
      }else{
        this.sendMessageForm.reset();
      }
    }
  }
  onKeydown(event){
    event.preventDefault();
  }
  getMessage(){
    return this.socket
    .fromEvent("chat message").subscribe(data=>{
      console.log('emit message', data)
      if(data['chat_conversation_id']){
        this.chat=[];
        this.getChatConversation(localStorage.getItem('user_id'));
      } 
      // if(data['conversation_id']){
      //   this.chat=[];
      //   this.getChatConversation(localStorage.getItem('user_id'));
      // } 
      if(this.currentConversation){
        console.log('this currentConversatio', this.currentConversation.id, data['conversation_id'])
        if(data['conversation_id']==this.currentConversation.id){
          let params={
            user_id: this.user_id,
            limit : this.conversation_limit,
            page : this.conversation_current_page,
          }
          this.userService.getConversation(params).then(response => {
            if(response['success']==true){
              this.conversations=response['result']['data'];
            }
          });
          let message={
            id:data['message_id'],
            user_id: data['user_id'],
            message: data['message'],
            created_at: data['created_at'],
            deleted: 'no',
            update_at: data['update_at'],
            user_profile_avatar: data['user_profile_avatar'],
            partner_logo: data['partner_logo'],
            user_role_id: data['user_role_id'],
            user_profile_first_name: data['user_profile_first_name'],
            user_profile_last_name: data['user_profile_last_name'],
            deleted_by: data['deleted_by']
          }
          this.chat.push(message);
          console.log('messagsse', this.chat)
          console.log('message', message)
          console.log('user_id', this.user_id)
          console.log('emit conversation id', data['conversation_id'])
          console.log('current conversation id', this.currentConversation.id)
          let myCompOneObj = new NavBarTemplateComponent(this.socket,this.router, this.userService, this.spinner, this.ngxSmartModalService);
          myCompOneObj.getChatConversationCount(localStorage.getItem('user_id'));
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.scrollToBottom();
          }, 1);
        }else{
          let params={
            user_id: this.user_id,
            limit : this.conversation_limit,
            page : this.conversation_current_page,
          }
          this.userService.getConversation(params).then(response => {
            if(response['success']==true){
              this.conversations=response['result']['data'];
            }
          });
        }
      }
    });
  }

  //infinite scroll
  onScrollUp(){
    this.spinner.show();
    this.isScrolling=true;
    this.current_page++;
    if(this.current_page<=this.total_pages){
      this.getChatMessage(this.conversationId, '', this.currentConversation.seen_by);
    }
    setTimeout(()=>{
      this.spinner.hide();
    }, 1000);
  }
  scrollToBottom(){
    if(this.chat.length>0){
      var div=document.getElementById('scrollContainer')
      setTimeout(()=>{                           //<<<---using ()=> syntax
        div.scrollTop=div.scrollHeight;
      }, 1);
    }
  }
  afterScroll(){  
    if(this.chat.length>0){
      var div=document.getElementById('scrollContainer')
      setTimeout(()=>{                           //<<<---using ()=> syntax
        div.scrollTop=300;
      }, 1);
    }
  }
  getUserProfile(user_id){
    this.userService.getProfile(user_id).then(response => {
      this.user_profile=response['result'];
    })
  }

  //conversation infinite scroll
  onScrollBottom(){
    // this.spinner.show();
    this.conversation_isScrolling=true;
    this.conversation_current_page++;
    if(this.conversation_current_page<=this.conversation_total_pages){
      let params={
        user_id: this.user_id,
        limit : this.conversation_limit,
        page : this.conversation_current_page,
      }
      this.userService.getConversation(params).then(response => {
        if(response['success']==true){
          for(let i=0;i<response['result']['data'].length;i++){
            this.conversations.push(response['result']['data'][i]);
          }
        }
      });
    }
    // setTimeout(()=>{
    //   this.spinner.hide();
    // }, 1000);
  }
  scrollToTop(){
    if(this.chat.length>0){
      var div=document.getElementById('conversationScrollContainer')
      setTimeout(()=>{                           //<<<---using ()=> syntax
        div.scrollTop=0;
      }, 1);
    }
  }
  conversationAfterScroll(){  
    if(this.conversations.length>0){
      var div=document.getElementById('conversationScrollContainer')
      setTimeout(()=>{                           //<<<---using ()=> syntax
        div.scrollTop=300;
      }, 1);
    }
  }
  searchList(){
    this.conversationEmpty=false;
    this.conversation_current_page=1;
    this.search_keyword=this.searchForm.value.search;
    let params={
      user_id: this.user_id,
      limit : this.conversation_limit,
      page : this.conversation_current_page,
      search_keyword : this.search_keyword,
    }
    this.userService.getConversation(params).then(response => {
      if(response['success']==true){
        this.conversations=response['result']['data'];
      }else{
        this.conversationEmpty=true;
      }
    });
  }
  searchkeyDownFunction(event) {
    if (event.keyCode === 13) {
      this.sendMsg();
    }
  }
  playAudio(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/alert.mp3";
    audio.load();
    audio.play();
  }
  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  //delete conversation
  deleteModal(id){
    this.deleteForm.reset();
    this.deleteForm.controls.id.setValue(id);
    this.playAudioError();
    this.ngxSmartModalService.open('deleteConversationModal');
    
  }
  closeModal(){
    this.ngxSmartModalService.close('deleteConversationModal');
  }
  showPass() {
    this.passType = "text";
    this.showPassword = true;
  }

  hidePass() {
    this.passType = "password";
    this.showPassword = false;
  }
  deleteConversation(){
    this.spinner.show();
    let params = {
      password:this.deleteForm.controls.password.value,
      user_id: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.validatePassword(params).then(response => {
      if(response['success']==true){
        let params = {
        	id:this.deleteForm.controls.id.value,
          user_id:JSON.parse(localStorage.getItem('user_id')),
          deleted_by_user:1,
        }
        this.userService.deleteConversation(params).then(response => {
          if(response['success']==true){
            this.spinner.show();
            window.location.href = "/admin/messages";
          }
        })
         
      }else{
        this.spinner.hide();
        this.errorMessage=response['results'].message;
      }
    });
  }
  newMessageSearch(){
    let params ={ 
      partner_status : "1",
      limit : 20,
      page : 1,
      search_keyword : this.newMessageSearchField2,
    }
    this.userService.partnersList(params).then(response => {
      this.partner_list=response['result']['datas'];
      console.log(this.partner_list)
    })
  }

  checkConversation(user_id, index){
    console.log('user_id', user_id);
    console.log('index', index)
    this.searchNewMessageForm.reset();
    let params={
      partner_id: user_id,
      user_id: this.user_id
    }
    this.userService.getConversation(params).then(response => {
      if(response['success']==true){
        this.chat=[];
        this.conversationId=response['result']['data'][0].id;
        this.seen_by=response['result']['data'][0].seen_by;
        for(let i=0;i<1;i++){
          this.currentConversation=response['result']['data'][0];
        }
        this.getChatMessage(this.conversationId, '', this.seen_by);
        this.receiver=user_id;
        console.log('current conversation', this.currentConversation)
      }else{
        console.log(this.partner_list[index])
        this.currentConversation={};
        this.currentConversation={
          partner_company:this.partner_list[index].partner_company,
          user_profile_first_name:this.partner_list[index].user_profile_first_name,
          user_profile_last_name:this.partner_list[index].user_profile_last_name,
          partner_logo:this.partner_list[index].partner_logo,
        }
        this.receiver=user_id;
        this.partner_list=[];
        this.conversationId='';
        this.showNewMessage = false;
        this.messageEmpty = true;
        this.newConvo=true;
      }
    })
    this.showInputMessage = false
    
  }
  deleteMsg(message_id, deleted_by){
    if(deleted_by!=''){
      this.deletedBy=deleted_by.slice(0, -1)
    }else{
      this.deletedBy=''
    }
    let params ={ 
      id : message_id,
      deleted_by:  this.deletedBy+','+this.user_id+','
    }
    this.socket.emit("deleteMessage", params);
    this.userService.updateMessage(params).then(response => {
    });
  }
  getDeleteMessage() {
    return this.socket
    .fromEvent("deleteMessage").subscribe(data=>{
      this.playAudio();
      let index=this.chat.findIndex(x => x.id === data['id']);
      this.chat[index].deleted_by=data['deleted_by'];
    });
  }
  getChatConversation2(user_id){
    let params={
      user_id: user_id,
      limit : this.conversation_limit,
      page : this.conversation_current_page,
    }
    this.userService.getConversation(params).then(response => {
      if(response['success']==true){
        this.conversationEmpty=false;
        this.conversation_total_pages=response['result'].total_pages;
        this.conversations=response['result']['data'];
      }else{
        this.conversationEmpty=true;
      }
    })
  }
}
