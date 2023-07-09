Msg("Beginning Lighthouse Scavenge.\n")

DirectorOptions <-
{
	CommonLimit = 7
	MobSpawnMinTime = 8
	MobSpawnMaxTime = 16
	MobSpawnSize = 4
	MobMaxPending = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	SustainPeakMinTime = 8
	SustainPeakMaxTime = 16
	SpecialRespawnInterval = 40
	LockTempo = false
	PreferredMobDirection = SPAWN_ANYWHERE
	PanicForever = true
}

if ( Director.IsSinglePlayerGame() )
{
    DirectorOptions.IntensityRelaxThreshold <- 0.94
}

Director.ResetMobTimer();