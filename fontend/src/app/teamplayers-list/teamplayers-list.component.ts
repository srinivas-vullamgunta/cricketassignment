import { Component, OnInit, Input, Output } from '@angular/core';

@Component({
  selector: 'app-teamplayers-list',
  templateUrl: './teamplayers-list.component.html',
  styleUrls: ['./teamplayers-list.component.css']
})
export class TeamplayersListComponent implements OnInit {
  @Input() teamPlayers : any
  constructor() { }

  ngOnInit(): void {
  }

}
