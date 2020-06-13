import { Component, OnInit } from '@angular/core';
import { TeamsService } from '../teams.service'

@Component({
  selector: 'app-matches',
  templateUrl: './matches.component.html',
  styleUrls: ['./matches.component.css']
})
export class MatchesComponent implements OnInit {

  title = 'cricketang';
  matches: any;

  constructor(private teamsService: TeamsService) {     
  }

  ngOnInit() {
    this.matches =  this.getMatches();
  }

  getMatches(): void {
    this.teamsService.getMatches()
      .subscribe(
        result => {
          this.matches = result;
          console.log(this.matches);
        }
      )
  }

}
