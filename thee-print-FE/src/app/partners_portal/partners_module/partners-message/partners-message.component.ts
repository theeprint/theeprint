import { Component, OnInit } from '@angular/core';
import { Socket } from 'ngx-socket-io';
import { UserService } from 'src/app/services/user.service';
import { NgxSpinnerService } from "ngx-spinner";
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';

@Component({
  selector: 'app-partners-message',
  templateUrl: './partners-message.component.html',
  styleUrls: ['./partners-message.component.scss']
})
export class PartnersMessageComponent implements OnInit {
  sendMessageForm : FormGroup;
  created_at = "05/24/2020";
  chat=[];
  isEmpty:boolean=true;
  conversationId:any;
  user_id:any;
  user_profile:any;
  current_page=1;
  total_pages: any;
  isScrolling:boolean = false;
  limit=10;
  seen_by:any;
  currentConversation:any;
  deletedBy='';
  constructor(
    private socket: Socket,
    protected formBuilder : FormBuilder,  
    private spinner: NgxSpinnerService,
    public userService: UserService,
  ) { 
    this.sendMessageForm = this.formBuilder.group({
      message: ['', Validators.compose([Validators.required,Validators.minLength(1)])],
    });
  }

  ngOnInit() {
    this.user_id=localStorage.getItem('user_id');
    this.getUserProfile(localStorage.getItem('user_id'));
    this.getChatConversation(localStorage.getItem('user_id'));
    this.getMessage();
    this.getDeleteMessage();
  }
  sendMessage(msg){
    this.socket.emit("message", msg);
  }
  getMessage() {
    return this.socket
    .fromEvent("chat message").subscribe(data=>{
      let message={
        id:data['message_id'],
        user_id: data['user_id'],
        message: data['message'],
        created_at: data['created_at'],
        update_at: data['update_at'],
        user_profile_avatar: data['user_profile_avatar'],
        partner_logo: data['partner_logo'],
        user_role_id: data['user_role_id'],
        user_profile_first_name: data['user_profile_first_name'],
        user_profile_last_name: data['user_profile_last_name'],
        deleted_by: data['deleted_by']
      }
      if(data['receiver']==JSON.parse(localStorage.getItem('user_id'))){
        if(!this.conversationId){
          this.conversationId=data['chat_conversation_id'];
          console.log('condition 2')
        }else if(data['chat_conversation_id']){
          this.conversationId=data['chat_conversation_id'];
          console.log('condition 4')
        }
        this.isEmpty=false;
        this.chat.push(message)
        setTimeout(()=>{                           //<<<---using ()=> syntax
          this.scrollToBottom();
        }, 1);
      }else if(data['sender']==JSON.parse(localStorage.getItem('user_id'))){
        if(!this.conversationId){
          this.conversationId=data['chat_conversation_id'];
          console.log('condition 2')
        }else if(data['chat_conversation_id']){
          this.conversationId=data['chat_conversation_id'];
          console.log('condition 4')
        }
        this.isEmpty=false;
        this.chat.push(message)
      }else if(data['conversation_id']==this.conversationId){
        if(!this.conversationId){
          this.conversationId=data['chat_conversation_id'];
          console.log('condition 2')
        }else if(data['chat_conversation_id']){
          this.conversationId=data['chat_conversation_id'];
          console.log('condition 4')
        }
        this.isEmpty=false;
        this.chat.push(message) 
      }
      console.log('chat',data);
    });
  }
  sendMsg(){
    if (this.sendMessageForm.valid) {
      console.log(this.sendMessageForm.status)
      console.log(this.conversationId)
      let message={
        user_id: JSON.parse(localStorage.getItem('user_id')),
        sender: JSON.parse(localStorage.getItem('user_id')),
        receiver: JSON.parse(localStorage.getItem('user_id')),
        message: this.sendMessageForm.value.message,
        partner_logo: this.user_profile[0].partner_logo,
        user_role_id: this.user_profile[0].user_role_id,
        user_profile_first_name: this.user_profile[0].user_profile_first_name,
        user_profile_last_name: this.user_profile[0].user_profile_last_name,
        deleted_by:'',
      }
      if(this.conversationId){
        message['conversation_id']=this.conversationId
      }
      this.isEmpty = false;
      this.sendMessage(message);
      this.sendMessageForm.reset();
      setTimeout(()=>{    
        this.sendMessageForm.reset();                       //<<<---using ()=> syntax
        this.scrollToBottom();
      }, 1);
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
  getChatConversation(partner_id){
    let params={
      partner_id: partner_id,
      user_id:localStorage.getItem('user_id')
    }
    this.userService.getConversation(params).then(response => {
      if(response['success']==true){
        this.conversationId=response['result']['data'][0].id;
        console.log('qw', this.conversationId=response['result']['data'][0].id);
        this.seen_by=response['result']['data'][0].seen_by;
        for(let i=0;i<1;i++){
          this.currentConversation=response['result']['data'][0];
        }
        this.getChatMessage(this.conversationId, '', this.seen_by);
      }else{
        this.conversationId='';
        this.isEmpty = true;
      }
    })
  }
  getChatMessage(conversation_id, i,seen_by){
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
        console.log('minus');
      }
    });
    this.isEmpty = false;
    let params={
      conversation_id:conversation_id,
      limit : this.limit,
      page : this.current_page,
    }
    this.userService.getConversationMessage(params).then(response => {
      if(response['success']==true){
        this.total_pages=response['result'].total_pages;
        for(let i=0;i<response['result']['data'].length;i++){
          this.chat.unshift(response['result']['data'][i]);
        }
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
        this.isEmpty = true;
      }
    });
  }
  getUserProfile(user_id){
    this.userService.getProfile(user_id).then(response => {
      this.user_profile=response['result'];
    })
  }
  onScrollUp(){
    this.isScrolling=true;
    this.current_page++;
    if(this.current_page<=this.total_pages){
      this.getChatMessage(this.conversationId, '', this.seen_by);
    }
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
      console.log(response);
    });
  }
  getDeleteMessage() {
    return this.socket
    .fromEvent("deleteMessage").subscribe(data=>{
      this.playAudio();
      let index=this.chat.findIndex(x => x.id === data['id']);
      this.chat[index].deleted_by=data['deleted_by'];
      console.log('chat',this.chat)
      console.log(data)
    });
  }
  playAudio(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/alert.mp3";
    audio.load();
    audio.play();
  }
}
