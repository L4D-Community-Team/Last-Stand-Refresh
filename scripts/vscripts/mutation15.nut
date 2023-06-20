//-----------------------------------------------------
Msg("Activating Mutation 15\n");

DirectorOptions <-
{
	ActiveChallenge = 1

	cm_ProhibitBosses = false
	cm_CommonLimit = 25
	cm_TankLimit = 1
	ZombieTankHealth = 2667

	SurvivalSetupTime = 90

	weaponsToRemove =
	{
		weapon_upgradepack_explosive = 0
	}

	function AllowWeaponSpawn( classname )
	{
		if ( classname in weaponsToRemove )
		{
			return false;
		}
		return true;
	}
}

function OnGameEvent_survival_round_start( params )
{
	local validStartNames = { func_button_timed = "OnTimeUp", func_button = "OnPressed", script_func_button = "OnPressed", trigger_finale = "UseStart", prop_door_rotating = "OnOpen" };
	local function GetSurvivalStartEntity()
	{
		local validIO = { logic_relay = { input = "Trigger", output = "OnTrigger" }, logic_timer = { input = "Enable", output = "OnTimer" } };
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

					if ( outputTarget.GetClassname() == "info_director" && outputs.input.find( "PanicEvent" ) != null )
						return outputTarget;
					else
					{
						if ( (outputTarget.GetClassname() in validIO) && (outputs.input == validIO[outputTarget.GetClassname()].input) )
						{
							target = outputTarget;
							targetOutput = validIO[outputTarget.GetClassname()].output;
						}
					}
				}
				ent = target;
				output = targetOutput;
			}
			return null;
		}

		foreach( classname, output in validStartNames )
		{
			for ( local ent; ent = Entities.FindByClassname( ent, classname ); )
			{
				if ( !EntityOutputs.HasAction( ent, output ) )
					continue;

				local target = CheckOutputs( ent, output );
				if ( (!target) || (target.GetClassname() != "info_director") )
					continue;

				return ent;
			}
		}
		return null;
	}

	EntFire( "info_director", "PanicEvent" );

	local startEntity = GetSurvivalStartEntity();
	if ( startEntity )
	{
		if ( startEntity.GetClassname() == "func_button_timed" || startEntity.GetClassname() == "trigger_finale" )
		{
			local nElements = EntityOutputs.GetNumElements( startEntity, validStartNames[startEntity.GetClassname()] );
			for ( local i = 0; i < nElements; i++ )
			{
				local outputs = {};
				EntityOutputs.GetOutputTable( startEntity, validStartNames[startEntity.GetClassname()], outputs, i );
				EntFire( outputs.target, outputs.input, outputs.parameter, outputs.delay );
			}
		}
		else
		{
			EntFire( startEntity.GetName(), "Unlock" );
			EntFire( startEntity.GetName(), "Press" );
			EntFire( startEntity.GetName(), "Open" );
		}
	}
}

function OnGameEvent_round_start_post_nav( params )
{
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
		case "c3m1_plankcountry":
		{
			EntFire( g_UpdateName + "_meticulous_funcinfclip01", "Kill", null, 30 );	// Delay oddly required
			make_axiswarp( "_axiswarp_semitrailer", "y-", 96, "-550 -8 0", "740 8 256", "-9505 10720 155" );
			bRemoveClips = true;
			break;
		}
		case "c5m4_quarter":
		{
			bRemoveClips = true;
			break;
		}
		case "c8m2_subway":
		{
			make_prop( "dynamic", "_cosmetic_oobstep", "models/props/cs_office/vending_machine.mdl", "7366 3801 270", "90 0 0", "shadow_no", "solid_no" );
			break;
		}
		case "c9m2_lots":
		{
			kill_entity( Entities.FindByClassnameNearest( "prop_dynamic", Vector( 8521, 5815, 348 ), 1 ) );
			break;
		}
		case "c10m2_drainage":
		{
			kill_entity( Entities.FindByClassnameNearest( "prop_dynamic", Vector( -8972, -7890, -320 ), 1 ) );
			make_ladder( "_ladder_versussurvivalfence1_cloned_tunnelmid", "-9478.5 -7280 -384", "155 45 -410" );
			make_ladder( "_ladder_versussurvivalfence2_cloned_tunnelmid", "-9478.5 -7280 -384", "155 0 -410" );
			make_ladder( "_ladder_versussurvivalfence3_cloned_tunnelmid", "-9478.5 -7280 -384", "155 -45 -410" );
			bRemoveClips = true;
			break;
		}
		case "c10m4_mainstreet":
		{
			make_clip( "_tankstuck_endbarricade", "SI Players", 1, "-400 -900 0", "400 900 1700", "3822 -3970 0" );
			make_clip( "_tankstuck_excesscorner", "SI Players", 1, "-200 -100 0", "200 100 1700", "-2520 -5048 -64" );
			break;
		}
		case "c11m2_offices":
		{
			kill_funcinfclip( 1043.94 );	// Final street left barricade
			break;
		}
		case "c12m3_bridge":
		{
			kill_funcinfclip( 311.003 );	// Wrongway at end of train tunnel
			break;
		}
		default:
			break;
	}

	if ( bRemoveClips )
		EntFire( "func_playerinfected_clip", "Kill" );
}
