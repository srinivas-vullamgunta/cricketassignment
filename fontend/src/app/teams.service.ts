import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class TeamsService {
  teamsUrl = 'http://127.0.0.1:8000/api/teams';
  matchesUrl = 'http://127.0.0.1:8000/api/matches';
  teamPlayerUrl = 'http://127.0.0.1:8000/api/team';
  pointsUrl = 'http://127.0.0.1:8000/api/points';
  constructor(private http: HttpClient) { 

  }
   // Read all Teams
  

  // Teams Service: Read all Teams
  getTeams() {
    return this.http
      .get<any[]>(this.teamsUrl)
      .pipe(map(data => data));
  }

  getMatches() {
    return this.http
      .get<any[]>(this.matchesUrl)
      .pipe(map(data => data));
  }

  getPoints() {
    return this.http
      .get<any[]>(this.pointsUrl)
      .pipe(map(data => data));
  }

  getTeamPlayers(teamId:number) {
    return this.http
      .get<any[]>(this.teamPlayerUrl + "/" + teamId)
      .pipe(map(data => data));
  }
}
