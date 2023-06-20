//-----------------------------------------------------
Msg("Activating Mutation 19\n");

DirectorOptions <-
{
	ActiveChallenge = 1

//	cm_frustrationTimer = 0
	cm_TankRun = true
	cm_ShouldHurry = true
	cm_AutoSpawnInfectedGhosts = true

	PreferredSpecialDirection = SPAWN_BEHIND_SURVIVORS
	SpawnBehindSurvivorsDistance = 2000
	TankRunSpawnDelay = 15

	MobMaxPending = 0

	// Always convert to the TANK!!!
	function ConvertZombieClass( iClass )
	{
		return 8;
	}

	weaponsToConvert =
	{
		weapon_first_aid_kit = "weapon_pain_pills_spawn"
	}

	function ConvertWeaponSpawn( classname )
	{
		if ( classname in weaponsToConvert )
		{
			return weaponsToConvert[classname];
		}
		return 0;
	}
}

function OnGameEvent_round_start_post_nav( params )
{
	local function CheckOutputs( entity, outputName )
	{
		local ent = entity;
		local output = outputName;
		while ( ent )
		{
			local target = null;
			local targetOutput = "";
			local nElements = EntityOutputs.GetNumElements( ent, output );
			for ( local i = 0; i < nElements; i++ )
			{
				local outputs = {};
				EntityOutputs.GetOutputTable( ent, output, outputs, i );
				local outputTarget = Entities.FindByName( null, outputs.target );
				if ( !outputTarget )
					continue;

				if ( outputs.input == "Unlock" || outputs.input == "Enable" || outputs.input == "SetValueTest" || outputs.input == "MoveToFloor" )
					return outputTarget;
				else
				{
					if ( outputTarget.GetClassname() == "logic_relay" && outputs.input == "Trigger" )
					{
						target = outputTarget;
						targetOutput = "OnTrigger";
					}
				}
			}
			ent = target;
			output = targetOutput;
		}
		return null;
	}
	for ( local trigger; trigger = Entities.FindByClassname( trigger, "trigger_multiple" ); )
	{
		if ( NetProps.GetPropInt( trigger, "m_bAllowIncapTouch" ) == 0 || !EntityOutputs.HasAction( trigger, "OnEntireTeamStartTouch" ) )
			continue;

		NetProps.SetPropInt( trigger, "m_bAllowIncapTouch", 0 );
		local target = CheckOutputs( trigger, "OnEntireTeamStartTouch" );
		if ( !target )
			continue;

		if ( target.GetClassname() == "logic_relay" )
		{
			for ( local button; button = Entities.FindByClassname( button, "func_button" ); )
			{
				local nElements = EntityOutputs.GetNumElements( button, "OnPressed" );
				for ( local i = 0; i < nElements; i++ )
				{
					local outputs = {};
					EntityOutputs.GetOutputTable( button, "OnPressed", outputs, i );
					if ( outputs.target == target.GetName() )
					{
						target = button;
						break;
					}
				}
			}
		}
		else if ( target.GetClassname() == "logic_branch" )
		{
			local foundListener = false;
			for ( local listener; listener = Entities.FindByClassname( listener, "logic_branch_listener" ); )
			{
				for ( local i = 0; i < 16; i++ )
				{
					if ( NetProps.GetPropString( listener, "m_nLogicBranchNames[" + i + "]" ) == target.GetName() )
					{
						foundListener = true;
						break;
					}
				}

				if ( foundListener )
				{
					local nElements = EntityOutputs.GetNumElements( listener, "OnAllTrue" );
					for ( local i = 0; i < nElements; i++ )
					{
						local outputs = {};
						EntityOutputs.GetOutputTable( listener, "OnAllTrue", outputs, i );
						if ( outputs.input == "Unlock" )
						{
							target = Entities.FindByName( null, outputs.target );
							break;
						}
					}
					break;
				}
			}
		}

		local validOutputs = { func_button_timed = "OnTimeUp", func_button = "OnPressed", script_func_button = "OnPressed", prop_door_rotating = "OnOpen" };
		if ( !target.GetClassname() in validOutputs )
			continue;

		target.ValidateScriptScope();
		local targetScope = target.GetScriptScope();
		targetScope.OverrideTrigger <- trigger;
		targetScope.UseEnt <- function()
		{
			for ( local player; player = Entities.FindByClassname( player, "player" ); )
			{
				if ( player.IsSurvivor() && player.IsIncapacitated() )
				{
					if ( !OverrideTrigger.IsTouching( player ) )
						player.TakeDamage( player.GetHealth(), 0, null );
				}
			}
			self.DisconnectOutput( validOutputs[target.GetClassname()], "UseEnt" );
		}
		target.ConnectOutput( validOutputs[target.GetClassname()], "UseEnt" );
	}

	local bRemoveClips = false;
	switch( SessionState.MapName )
	{
		// For comments and elaboration regarding these map fixes, see:
		//	Collection of Versus Survival & Taaannnk! Mutation stuck spawn fixes
		//	https://gist.github.com/Tsuey/e8996ad10bb7fb72e7d6b2aaa7bcd5db
		// Most of these fixes should eventually be replaced with a fuller clip brush re-work of all base maps for modders/PvP,
		// such as we already did for TLS at least with regard to new player SI areas opened on c8m3 (seen with ShowUpdate tool).

		case "c1m2_streets":
		{
			EntFire( g_UpdateName + "_yeswayturnpike_clipb", "Kill", null, 30 );		// Delay oddly required
			bRemoveClips = true;
			break;
		}
		case "c2m2_fairgrounds":
		{
			bRemoveClips = true;
			break;
		}
		case "c3m1_plankcountry":
		{
			EntFire( g_UpdateName + "_meticulous_funcinfclip01", "Kill", null, 30 );	// Delay oddly required
			make_axiswarp( "_axiswarp_semitrailer", "y-", 96, "-550 -8 0", "740 8 256", "-9505 10720 155" );
			bRemoveClips = true;
			break;
		}
		case "c5m2_park":
		{
			make_clip( "_tankstuck_startroof", "SI Players", 1, "-106 -240 0", "86 240 196", "-2936 -816 -58" );
			break;
		}
		case "c5m4_quarter":
		{
			bRemoveClips = true;
			break;
		}
		case "c6m1_riverbank":
		{
			make_clip( "_tankstuck_startfence", "SI Players", 1, "-251 -760 0", "173 216 1513", "-261 2872 87" );
			break;
		}
		case "c8m1_apartment":
		{
			make_clip( "_tankstuck_alleystart", "SI Players", 1, "-105 -711 0", "823 57 4132", "2473 455 16" );
			make_clip( "_tankstuck_alleymiddle", "SI Players", 1, "-127 -257 0", "209 256 4468", "-129 3584 16" );
			kill_funcinfclip( 1060.85 );	// Delete clip that blocks the rubble and a cool unique spawn
			break;
		}
		case "c8m2_subway":
		{
			make_clip( "_tankstuck_rubblestart", "SI Players", 1, "-139 -107 0", "119 99 177", "1621 3617 -337", "0 42 0" );
			make_clip( "_tankstuck_rubblemiddle", "SI Players", 1, "-189 -145 0", "300 179 240", "6766 5299 -336", "0 -68 0" );
			make_clip( "_tankstuck_rubblefinal", "SI Players", 1, "-189 -253 0", "140 320 176", "8249 3222 -336", "0 -53 0" );
			make_clip( "_tankstuck_endalley1", "SI Players", 1, "-480 -855 0", "65 293 1400", "10303 3479 16" );
			make_clip( "_tankstuck_endalley2", "SI Players", 1, "-373 -96 0", "395 99 1400", "11637 5342 16" );
			make_clip( "_tankstuck_widestreet", "SI Players", 1, "-842 0 0", "386 555 1400", "10110 6784 8" );
			break;
		}
		case "c8m3_sewers":
		{
			make_clip( "_tankstuck_startrooftops", "SI Players", 1, "-1749 -380 0", "219 332 750", "12261 4212 464" );
			kill_funcinfclip( 606.217 );	// Delete clip behind a fence and inaccessible ladder
			kill_funcinfclip( 733.138 );	// Delete clip for end area backstreet wrongway sign left
			kill_funcinfclip( 762.564 );	// Delete clip for end area backstreet wrongway sign right
			break;
		}
		case "c9m2_lots":
		{
			make_clip( "_tankstuck_startback", "SI Players", 1, "-120 -900 0", "120 900 1370", "-835 -110 -223" );
			break;
		}
		case "c10m1_caves":
		{
			kill_funcinfclip( 1145.18 );	// Spawn left 1st
			kill_funcinfclip( 1127.68 );	// Spawn left 2nd
			kill_funcinfclip( 1110.42 );	// Spawn left 3rd
			kill_funcinfclip( 1059.74 );	// Spawn left 4th
			kill_funcinfclip( 1054.83 );	// Spawn left 5th
			kill_funcinfclip( 1216.59 );	// Tunnelside
			kill_funcinfclip( 1000.2 );	// Cliffside
			kill_funcinfclip( 597.979 );	// End cave connection to map 2 (easter egg spot)
			make_clip( "_tankstuck_tunnelside", "SI Players", 1, "-1700 -200 -1337", "1700 1024 610", "-13902 -10396 656", "0 45 0" );
			break;
		}
		case "c10m2_drainage":
		{
			bRemoveClips = true;
			break;
		}
		case "c10m3_ranchhouse":
		{
			kill_funcinfclip( 668.433 );	// Wrongway in beginning area
			kill_funcinfclip( 2248.58 );	// Treeline after bus/shed
			make_clip( "_tankstuck_cornerpath", "SI Players", 1, "-700 -800 -145", "800 790 1360", "-13598 -9362 68" );
			make_clip( "_tankstuck_mountainwedge", "SI Players", 1, "-100 -100 0", "100 100 1300", "-8388 -3525 300" );
			break;
		}
		case "c10m4_mainstreet":
		{
			make_clip( "_tankstuck_houserow", "SI Players", 1, "-2260 -440 0", "3450 900 1850", "68 158 -100" );
			make_clip( "_tankstuck_endbarricade", "SI Players", 1, "-400 -900 0", "400 900 1700", "3822 -3970 0" );
			make_clip( "_tankstuck_excesscorner", "SI Players", 1, "-200 -100 0", "200 100 1700", "-2520 -5048 -64" );
			break;
		}
		case "c11m1_greenhouse":
		{
			kill_funcinfclip( 1154.43 );	// End area fence barricade
			break;
		}
		case "c11m2_offices":
		{
			make_clip( "_tankstuck_fencenavarea", "SI Players", 1, "-64 -64 0", "64 64 1400", "10314 3862 16" );
			kill_funcinfclip( 1043.94 );	// Final street left barricade
			kill_funcinfclip( 1493.36 );	// Final street right barricade
			break;
		}
		case "c11m3_garage":
		{
			make_clip( "_tankstuck_startfence", "SI Players", 1, "-1200 -80 0", "720 58 1800", "-4947 -3786 16" );
			break;
		}
		case "c12m1_hilltop":
		{
			make_clip( "_tankstuck_wrongwayone", "SI Players", 1, "-320 -800 0", "0 750 1740", "-11967 -10090 450" );
			make_clip( "_tankstuck_wrongwaytwo", "SI Players", 1, "-610 0 0", "180 460 1740", "-11604 -9345 450" );
			break;
		}
		case "c12m2_traintunnel":
		{
			make_clip( "_tankstuck_tunnelend", "SI Players", 1, "-320 -800 -120", "450 258 240", "-1551 -10785 50" );
			break;
		}
		case "c12m3_bridge":
		{
			kill_funcinfclip( 311.003 );	// Wrongway at end of train tunnel
			break;
		}
		case "c12m4_barn":
		{
			make_clip( "_tankstuck_safeback", "SI Players", 1, "-170 -640 -100", "170 225 1700", "7704 -11710 425" );
			break;
		}
		default:
			break;
	}

	if ( bRemoveClips )
		EntFire( "func_playerinfected_clip", "Kill" );
}
