import { Component, OnInit } from '@angular/core';
import { TeamsService } from '../teams.service'

@Component({
  selector: 'app-points',
  templateUrl: './points.component.html',
  styleUrls: ['./points.component.css']
})
export class PointsComponent implements OnInit {

  title = 'cricketang';
  points: any;

  constructor(private teamsService: TeamsService) {     
  }

  ngOnInit() {
    this.points =  this.getPoints();
  }

  getPoints(): void {
    this.teamsService.getPoints()
      .subscribe(
        result => {
          this.points = result;
          console.log(this.points);
        }
      )
  }

}
