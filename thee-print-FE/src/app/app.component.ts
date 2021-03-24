import { Component, OnInit } from '@angular/core';
import { RouterModule } from '@angular/router';
import { token } from 'src/app/admin/lib/token';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'portfolio';

  constructor(private tkn: token) { }


  ngOnInit() {
  }
}
