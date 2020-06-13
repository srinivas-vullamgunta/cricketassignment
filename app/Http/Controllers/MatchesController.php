<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use DB;

class MatchesController extends BaseController
{    
	 public function getMatches() {
       $matches = DB::table('matches as m')
    				->select('m.matchId','t1.name as team1','t2.name as team2','t3.name as WinnerTeam')
    				->join('teams as t1', 't1.teamId', '=', 'm.teamId1')
    				->join('teams as t2', 't2.teamId', '=', 'm.teamId2')
    				->join('teams as t3', 't3.teamId', '=', 'm.winnerTeamId')
    				->get(); 

        if($matches->isEmpty()) {
        	echo "NO DATA";
        } else {
        	echo json_encode($matches);
        } 
    }

    public function getPoints() {
    	 $teams = DB::select('select teamId, name,					
        			(SELECT count(*) FROM `matches` where teamId1 = teamId OR teamId2=teamId) as play, 
					(SELECT count(*) FROM `matches` where `winnerTeamId` = teamId) as win,
					(SELECT count(*) FROM `matches` where teamId1 = teamId OR teamId2=teamId) - 
					(SELECT count(*) FROM `matches` where `winnerTeamId` = teamId) as loss FROM teams');

        if(EMPTY($teams)) {
        	echo "NO DATA";
        } else {
        	echo json_encode($teams); 
        }  
    }
}
