import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { TeamsComponent } from '../app/teams/teams.component'
import { MatchesComponent } from '../app/matches/matches.component'
import { PointsComponent } from '../app/points/points.component'


const routes: Routes = [
  { path: 'teams', component: TeamsComponent },
  { path: 'matches', component: MatchesComponent },
  { path: 'points', component: PointsComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
