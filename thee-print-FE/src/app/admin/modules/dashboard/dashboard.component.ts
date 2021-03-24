import { Component, OnInit, ViewChild } from '@angular/core';
import * as Chart from 'chart.js';
import { UserService } from 'src/app/services/user.service';

/* modal */
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';
import { Label, ThumbUpSharp } from '@material-ui/icons';
import { ExportAsService, ExportAsConfig, SupportedExtensions } from 'ngx-export-as';
import { DatePipe } from '@angular/common';
import { EnvService } from 'src/app/lib/env.service';
import { ActivatedRoute, Router, RouterOutlet,} from '@angular/router';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';


@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {

  isEmpty: boolean=false;

  // date filter
  dateFilterForm : FormGroup;
  isLoading:boolean = false;
  date_filter: any;
  current_page=1;

  //search filter
  searchForm : FormGroup;
  search_keyword='';

  modalRef: BsModalRef;
  total = 56000;
  total_job_order_request = 20
  total_partner = 20
  total_price_checks = 30
  date = "November"
  year:any = null;
  total_earnings = 26000
  most_complete_jo = [];
  most_price_checks = [];
  most_re
  pending_jo_request = [];
  registered_partners = [];
  price_checks_up_to_date = [];
  total_sales = [];
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'}
  ];
  isLoaded: boolean=false;
  job_order_list:any;
  user_data: any;
  month:any;
  totalE:any;
  dateToday = new Date;

  exportAsConfig: ExportAsConfig = {
    type: 'pdf', // the type you want to download
    elementIdOrContent: 'contentToConvert', // the id of html/table element
    options: {
      jsPDF: {
        orientation: 'landscape',
        format: 'A4',
      },
      margin: 1,
      compress: true,
      pagebreak: {
        after: '.break-now'
      },
      showall: true,
    }
  }

  constructor(
    private modalService: BsModalService,
    public userService: UserService,
    private exportAsService: ExportAsService,
    public datePipe: DatePipe,
    private env: EnvService,
    private router: Router,
    protected formBuilder : FormBuilder,
  ) 
  {
    this.dateFilterForm = this.formBuilder.group({
      created_at: [''],
    });
  }
q
   
  ngOnInit() {
    var dt = new Date();
    var n = dt.getFullYear();
    this.year = n;

    this.adminDashboard();
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    this.pendingDashboard();
    this.adminDashboardGraph();
  }
  filterDate(){
    console.log(this.dateFilterForm.controls.created_at.value);
    this.current_page=1;
    this.search_keyword='';
    this.date_filter=this.dateFilterForm.controls.created_at.value
    this.isLoaded = true;
    this.pendingDashboard();
  }



  adminDashboardGraph(){
    this.isLoading = true;
    this.userService.getGraphAdminDashboard(this.year).then(response => {
      console.log('Month:',response['result'].month);
      this.month=response['result'].month;
      this.totalE=response['result'].totalE;
      var earningsGraph = [];
        for(var a = 1; a <=12; a++){
          earningsGraph.push(response['result']['earnings'][a] ? response['result']['earnings'][a] : 0);
        }
      console.log(earningsGraph);

      var monthLabel;
        if(response['result'].month == 1){
          monthLabel = 'January';
        }
        else if(response['result'].month == 2){
          monthLabel  = 'February'
        }
        else if(response['result'].month == 3){
          monthLabel  = 'March'
        }
        else if(response['result'].month == 4){
          monthLabel  = 'April'
        }
        else if(response['result'].month == 5){
          monthLabel  = 'May'
        }
        else if(response['result'].month == 6){
          monthLabel  = 'June'
        }
        else if(response['result'].month == 7){
          monthLabel  = 'July'
        }
        else if(response['result'].month == 8){
          monthLabel  = 'August'
        }
        else if(response['result'].month == 9){
          monthLabel  = 'September'
        }
        else if(response['result'].month == 10){
          monthLabel  = 'October'
        }
        else if(response['result'].month == 11){
          monthLabel  = 'November'
        }
        else if(response['result'].month == 12){
          monthLabel  = 'December'
        }

        var ctx = 'myChart';
        var myChart = new Chart(ctx, {
        type : 'line',
        data : {
          labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
          datasets :[
            {
              label: monthLabel,
              fill : false,
              lineTension : 0.1,
              borderColor: "#005DAB",
              borderWidth: 2,
              borderCapStyle: 'butt',
              borderDash : [],
              borderDashOffset: 0.0,
              borderJoinStyle: 'miter',
              pointBorderColor: "#005DAB",
              pointBackgroundColor : '#fff',
              pointBorderWidth: 1,
              pointHoverRadius: 5,
              pointHoverBackgroundColor:"#fff",
              pointHoverBorderColor: "#C0024A",
              pointHoverBorderWidth: 0,
              pointRadius: 5,
              pointHitRadius: 10,
              data:earningsGraph
            }
          ]
        },
            options: {
                title: {
                    display: true,
                    text: 'Amount of earnings',
                    position: 'left',
                    fontSize: 14,
                    lineHeight: 5,
                    fontFamily: 'manrope',
                    // fontWeight: 400
                    fontColor: '#626172'
                },

                scales: {
                  xAxes: [{
                      ticks: {
                        fontColor:'#0A0929',
                        fontSize:14
                      }
                  }],
           
                yAxes: [{
                  ticks: {
                     fontColor:'#626172',
                     fontSize:14,
                     stepSize: 0,
                     callback: function(value) {
                        var ranges = [
                           { divider: 1e6, suffix: 'M' },
                           { divider: 1e3, suffix: 'k' }
                        ];
                        function formatNumber(n) {
                           for (var i = 0; i < ranges.length; i++) {
                              if (n >= ranges[i].divider) {
                                 return (n / ranges[i].divider).toString() + ranges[i].suffix;
                              }
                           }
                           return n;
                        }
                        return '' + formatNumber(value);
                     }
                  }
               }]
                }
            }
      });
    })
  }



  adminDashboard(){
    this.isEmpty = false;
    this.isLoaded = true;
    let params ={ 
      page : this.current_page,
      date_filter : this.date_filter,
      search_keyword : this.search_keyword,
    }
    this.isLoading = true;
    this.userService.getAdminDashboard().then(response => {
      console.log(response);
      this.most_complete_jo=response['result']['completed_job'];
      this.most_price_checks=response['result']['price_checks'];
      console.log('price_chek', this.most_price_checks);
      this.job_order_list=response['result']['recently_paid'];
    })
  }

  pendingDashboard(){
    this.isLoading = true;
    this.userService.getPendingDashboard().then(response => {
      console.log(response['result']['pendingJO'][0].total);
      this.pending_jo_request=response['result']['pendingJO'][0].total;
      this.registered_partners=response['result']['registeredPartners'][0].total;
      this.price_checks_up_to_date=response['result']['priceChecks'][0].total;
      this.total_sales=response['result']['totalSales'][0].total_sales;
    })
  }

  prevPage(){
    document.getElementById('myChart').remove(); // this is my <canvas> element
    document.getElementById('graph-container').innerHTML=('<canvas id="myChart" height="150" width="400"><canvas>');
    var bt = document.querySelector('#myChart');
    this.year -= 1;
    this.adminDashboardGraph();
    console.log('prev');

    this.btnNextDisabled = false;
  
  }
  
  btnNextDisabled = true;

  nextPage(){
    document.getElementById('myChart').remove(); // this is my <canvas> element
    document.getElementById('graph-container').innerHTML=('<canvas id="myChart" height="150" width="400"><canvas>');
    document.querySelector('#myChart');
    // var bt = document.getElementById('nextDisabled');  

    var dt = new Date();
    var n = dt.getFullYear();
    if(this.year < n){
      this.year += 1;
      if(this.year >= (n - 1)){
        this.btnNextDisabled = true;
      }
    }
    this.adminDashboardGraph();
    console.log('next');
  
  }

  export(type: SupportedExtensions, opt?: string) {
    this.exportAsConfig.type = type;
    if (opt) {
      this.exportAsConfig.options.jsPDF.orientation = opt;
    } 
    
    let fileName = 'Report_' + this.datePipe.transform(new Date(this.dateToday), 'MMddyyyy');
    this.exportAsService.save(this.exportAsConfig, fileName).subscribe(() => {
    });
   
  }
  downloadExport(){
  
    this.router.navigate([]).then(result  => { window.open('dashboard-pdf', '_blank'); });
  }

  viewPending(){
    localStorage.setItem('job_order_status', '2');
    this.env.redirect('admin/job-order-list');
  }
  
}
