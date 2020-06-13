import { Component, OnInit } from '@angular/core';
import { TeamsService } from './teams.service'


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit {
  title = 'cricketang';
  teams: any;
  teamPlayers: any;

  constructor(private teamsService: TeamsService) {     
  }

  ngOnInit() {
    this.teams =  this.getTeams();
  }

  getTeams(): void {
    this.teamsService.getTeams()
      .subscribe(
        result => {
          this.teams = result;
          console.log(this.teams);
        }
      )
  }

  getTeamPlayers(event, team) {
    this.teamsService.getTeamPlayers(team.teamId)
      .subscribe(
        result => {
          this.teamPlayers = result;
          console.log(this.teamPlayers);
        }
      )
  }
}