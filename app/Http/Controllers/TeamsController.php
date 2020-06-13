<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use DB;

class TeamsController extends BaseController
{ 
    public function getTeams() {
        $teams = DB::table('teams')
					->select('teamId','name', 'logoUri')
        			->get();
        
        if($teams->isEmpty()) {
        	echo "NO DATA";
        } else {
        	echo json_encode($teams);
        }      
    }

    public function getPlayersByTeam($id) {  
    	$players = DB::table('players as p')
    				->select('p.playerId','t.name','p.firstName','p.lastName','p.imageUri')
    				->join('teams as t', 't.teamId', '=', 'p.teamId')
    				->where('p.teamId', $id)->get(); 
         
        if($players->isEmpty()) {
        	echo "NO DATA";
        } else {
        	echo json_encode($players);
        } 
    }
}
