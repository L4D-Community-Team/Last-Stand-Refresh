# How to use this changelog

This changelog comprehensively summarizes all differences from the live game to the current Github state.

![Guide](https://raw.githubusercontent.com/L4D-Community-Team/Last-Stand-Refresh/main/changelogs/Guide.png)

--------------------------------
--------------------------------

# Valve (C++)

### VScript CDirector:

&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `AreAllSurvivorsInBattlefield()` returns true if all Survivors are in the battlefield.<br/>
&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `GetClosestCharacterWhoIsIT( CBaseCombatCharacter character )` returns the closest character who is "IT" to the passed character.<br/>
&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `GetClosestSurvivor( Vector pos, bool bIncludeIncap, bool bIncludeOnRescueVehicle )` returns the closest Survivor from the passed origin, if incapped Survivors are included in search, or on rescue vehicle.<br/>
&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `GetHighestFlowSurvivor()` returns the Survivor with the highest flow.<br/>
&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `GetLowestFlowSurvivor()` returns the Survivor with the lowest flow.<br/>
&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `GetRandomSurvivor()` returns a random alive Survivor.<br/>

### Response Criteria Commands:

&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `"TankActive"` where 0 means no Tank aggro, 1 means Tank is aggro.<br/>
&emsp;[+](https://store.steampowered.com/news/app/550?updates=true) `"Chapter"` where 0 is first map of mission, 4 is 5th map, etc.<br/>

# Assets

### Weapons:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/melee/knife.txt#L91) Knife slash pattern goes from left to right (W2E) instead of left to bottom-right (W2SE) to restore its old behavior. `[knife.txt]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/melee/knife.txt#L96-L97) Knife world animations now swing in the same direction as the viewmodel's. `[knife.txt]`<br/>

### Effects:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/edcbe37a83884ee4f1b08d2cf439063be349bc43) Removed faulty LDR fallback materials so that low shader skyboxes no longer render as flat colors or missing textures. `[skybox/sky_l4d_*.vmt]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/8b7f49abd1bac4622ec090c5d0a843f7e03a6d70) Added a sway shader to the Blood Harvest corn props. `[corn01_dry.vmt]`<br/>

### Props:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/80fe89e1b646a13124cee3ee7c8e8b4a9764cdad) `"props_vehicles/deliveryvan_armor.vmt"` added $normalmapalphaenvmapmask 1 to both VMT's so the cubemap reflections are properly masked instead of the entire model being covered in reflections.<br/>

### Special Infected:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/623a691908940b71b0a52f14081c3bec637e3303) Added render coloring support to the Hunter, Smoker, Boomer and Charger models; includes burned Hunter and Smoker tongue. `[infected/*.vmt]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/7deb1fb1628a209264d6a218e9bd75ab23c81655) Sacrifice Tank used the wrong normal map, leading to shading issues mostly on his legs. `[hulk_traincar_01.vmt]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/349679cfae97f4a0e47b66dfd5e5ad1246fbacbd) Recompiled VTF with the original alpha from the first game (modified a bit) to give the Witch's hair proper transparency. `[witch_hair.vtf]`<br/>

### Accessibility:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/d9ca80411de6ccf1a89fa28f1f48ee6ae0b79f02) Fixed Audio and Keyboard / Mouse menus in the Options flyout having broken navigation keys when trying to use the arrow keys or a controller. `[keyboardmouse & video.res]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/73c86249adce75a54e52540c75595d38b36fa183) [*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/6c0ef498c1e4a7ad96f3a13fe07aa136ebe15771) Corrected the string keys for the Tank's rock and claw attack lessons. `[instructor_lessons.txt]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/73c86249adce75a54e52540c75595d38b36fa183) "Jockey Leap" hint had the incorrect ability_use of "ability_spit", and now uses the correct "ability_leap". `[instructor_lessons.txt]`<br/>

# Scripts General

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/80a20c8f2648e5c0f9c9246049f622db80b43ef8) `"scriptedmode.nut"` fix for: slowpoll interval, slowpoll add function logic, and _entHelper.<br/>

# Map Fixes

### Dead Center

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L170) Restored window clip-hang bugs that were patched with TLS to re-allow access to the rooftop in Coop mode.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/missions/campaign1.txt#L96-L97) <ins>Versus</ins>: Tank will now only spawn after Survivors have exited the elevator, and no later than leaving the kitchen.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L45) <ins>Versus</ins>: Move Ghost SI exploit kill trigger down a lot to solve a rare issue.<br/>

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L281) Blocked a permstuck spot at vending machine alternative path.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L282) <ins>QoL</ins>: Added auto-crouch trigger and clips to smooth out movement through the shoplift scanners.<br/>

#### Map 4:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L361) <ins>QoL</ins>: Clips for kiosks to assist jumping and booth auto-crouch.<br/>

### Dark Carnival

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L427) Patched a rarer permstuck spot at the swamp's cargo container.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L457) Patched an elaborate SI out of bounds exploit.<br/>

#### Map 4:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L555) [*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L578) <ins>Versus</ins>: Food cart ladder replaced with better clone and smoothed with new clip.<br/>

#### Map 5:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/d54a5911e92d75ebb1e8c88ac9120cf7da4f8933) Fixed issue where THE MAIN ATTRACTION Achievement would not unlock if a player disconnects or idles while in the trigger; added multiple trigger volumes that detect if a Survivor leaves the stage instead of only one that checked if a Survivor stopped touching it.<br/>

### Swamp Fever

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/833dbfe9c30833aa15431477f8ff4494bb03133f) While scriptedmode is active an additional 3rd wave would occur and director_debug 1 would say something like wave 1 of -1; fixed by adding a delay of 1 second on the second stage. `[See Crash Course 1]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L915) Patched janky ladder near the ferry event.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L917) By popular community request the TLS Swamp gator is now canonically named Fred.<br/>

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L983) Blocked a permstuck spot behind some rocks at the start near the parachutist.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L984) Blocked a permstuck spot on a cypress knee near the parachutist area dock.<br/>

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L1046-L1047) Blocked permstuck spots at two sets of cypress knees around the event start area.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L799) <ins>Versus</ins>: Blocked a permstuck spot for SI behind a bush to the left of the first bridge upon entering the water.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L800) <ins>Versus</ins>: Blocked a permstuck spot for SI in the bush near the lantern/event start.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L809-L813) <ins>Versus</ins>: Improve SI clipping of first ladder outside saferoom to allow drop through a large gap.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L835) <ins>Versus</ins>: Moved a TLS Infected ladder out of the Survivor's way at the start.<br/>

#### Map 4:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L858) <ins>Versus</ins>: Blocked a permstuck spot for SI behind a bush in the back of the enclosed hedge area.<br/>

### Hard Rain

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/c4m2_elevatorfix.nut) [*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/10a47f1b3117bcf091ca4224eaf47f3258c7b7e6) Restored a shortcut that was patched with TLS; instead fixed the soft-lock where Survivors cannot progress if one player skipped the elevator.<br/>

### The Parish

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L1711) [*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L1217) Eliminate a permstuck spot that a previous ladder patch created.<br/>

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L1299) <ins>Versus</ins>: New ladder in far corner of manhole drop area to fix permstuck.<br/>

#### Map 4:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L1355-L1360) <ins>Versus</ins>: Reduced a jetstrike trigger after the balcony drop that previously dealt 25 damage per touch (75 total) to Survivors, down to only 2 damage per touch to behave like the other 14 triggers.<br/>

### The Passing

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L2033) Blocked a permstuck spot in a corner behind a floodlight in the top floor after the alarm cars.<br/>

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L2163-L2164) Fixed collision issue with clips on the stairs by the saferoom that caused noticeable teleporting when not on a local server.<br/>

### The Sacrifice

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L1549) <ins>Versus</ins>: Delete func clip that blocks SI access into end closet.<br/>

### No Mercy

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L2590) Lift anti-grief kill trigger off the ground to prevent an incap glitch.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L1643) <ins>Versus</ins>: Add clip to patch a ladder shortcut at the start.<br/>

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L2673-L2680) All sets of railings will now appear for all players regardless of graphics settings.<br/>

### Crash Course

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/833dbfe9c30833aa15431477f8ff4494bb03133f) While scriptedmode is active an additional 3rd wave would occur and director_debug 1 would say something like wave 1 of -1; fixed by adding a delay of 1 second on the second stage. `[See Swamp Fever 1]`<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L3026) Block rare permstuck spot between the boxwreck and traffic light.<br/>

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L3108) <ins>QoL</ins>: Clip to prevent gascans from falling between finale buses.<br/>

### Death Toll

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L3361) Blocked a permstuck spot at the top of a rockcliff cluster just after the church bus.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L3360) Blocked a permstuck spot between the cliff rocks and the right side of the mandatory house.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L2178) <ins>Versus</ins>: Fixed an SI permstuck spot on the barricade by the church.<br/>

### Dead Air

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/6b399a8c0c873021ffd93418f47bf342d500a5bb) [*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L3752-L3753) Updated clip brushes and navmesh to allow Survivors into the hallway next to the end saferoom, and Special Infected players onto a previously blocked pipe that has a ladder leading up to it; it is now consistent with L4D1.<br/>

#### Map 4:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L3826) Fix SI player and AI permstuck spot inside the end rubble.<br/>

### Blood Harvest

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L2763) <ins>Versus</ins>: Fixed SI permstuck beyond the end of tunnel just before end safe room.<br/>

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L2832) Fix rare permstuck spot in starting saferoom for SI only.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4086) Permstuck in tree near shed (for SI / RocketDude).<br/>

#### Map 4:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L2913) <ins>Versus</ins>: Patched fence Infected ladder next to lawnmower room.<br/>

#### Map 5:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/11bba0f2382e6a961019287a61e3766a9f25dc0c) Added missing env_wind; dozens more maps (especially L4D1) also lack env_wind but those will be evaluated at another time.<br/>

### Cold Stream

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4390) Fix permstuck next to military truck leading to barricade.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4375-L4376) Fix two permstuck spots behind the long hedges on the right of after the military truck leading to barricade.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4384) [*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4391)[*](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L3046) Fix a regression with easy event skip clip and a permstuck clip nearby.<br/>

#### Map 3:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4449) Enlargened a permstuck clip to fully fix it.<br/>

### The Last Stand

#### Map 1:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4608-L4614) When the intro finishes, adjust Francis' spawn to be further away from the plywood to prevent him from getting stuck and dying on solo Mutations.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4616-L4619) When the intro finishes, adjust Zoey's spawn to be further away from the truck to prevent her from briefly getting stuck.<br/>

#### Map 2:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/c9c2a2475fb734141a2dfaf17911cfebec3c40ed) Reduced CommonLimit from 30 to 25.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/c9c2a2475fb734141a2dfaf17911cfebec3c40ed) Reduced number of gascans by 2 required on single-player for each difficulty (i.e. Easy's 6 is now down to 4, and Expert's 12 down to 10) to compensate for only having bot teammates.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/c9c2a2475fb734141a2dfaf17911cfebec3c40ed) Adjusted LockTempo, RelaxIntervals, and SustainPeakTimes to allow Survivors a bit more time to recover and heal.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_versus.nut#L3147) <ins>Versus</ins>: Fixed an out of bounds exploit to get under a cliffside.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/blob/main/scripts/vscripts/anv_mapfixes.nut#L4724) <ins>Versus</ins>: Fixed an SI permstuck spot between a fence and tree cluster at the cliff overlooking the beach.<br/>

# Mutations

### Tank Run:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/cbe2c7ebbb800d7514b46445bdff372b286e80f2) Added cm_TankRun key to fix not being able to open the train car door on Sacrifice 1.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/cbe2c7ebbb800d7514b46445bdff372b286e80f2) The first map of a Campaign will now spawn two Tier 1 weapons near the start area if no other Tier 1's are nearby.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/cbe2c7ebbb800d7514b46445bdff372b286e80f2) Made it so Survivors are auto-revived instantly when incapacitated or hanging from a ledge.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/cbe2c7ebbb800d7514b46445bdff372b286e80f2) Car alarms will now spawn a Tank if triggered.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/cbe2c7ebbb800d7514b46445bdff372b286e80f2) Disabled water slowdown for all maps.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/cbe2c7ebbb800d7514b46445bdff372b286e80f2) Set Survivor revive health to 50.<br/>

### Death's Door (community5.nut):

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Fixed Fallen Survivors being able to drop medkits.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Fixed temporary health decay in the safe room, loading players will no longer decay temp health.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Fixed B&W state transition when hanging.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Fixed heartbeat sound on chapter transition.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Defibrillator now heals 24 permanent + 36 temporary HP (still B&W).<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Safe room respawn now heals 24 permanent + 26 temporary HP (still B&W).<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Safe room transitions now heal 80% of the missing HP to half health of living survivors, i.e. 1 -> 40 (never B&W).<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Fixed an issue that caused the mission to fail for Sacrifice type finales when the player presses the final button, by adding a workaround.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Enabled B&W state when under 25% health.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/bcfeeb93868ea9ad0787f9f10e14943265444c34) Fixed heartbeat sound when taking over bot.<br/>

### VS Survival (mutation15.nut):

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/e4309d4938a8a5f50397ca1421281f81e49116e2) Thickened 24 clips across 10 maps to dramatically reduce stuck spawns.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/e4309d4938a8a5f50397ca1421281f81e49116e2) Map-specific fixes for stuck or confusing spawns on c1m2, c3m1, c5m4, c8m2, c9m2, c10m2, c10m4, c11m2, and c12m3.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/258fa24a1103ce9be159ce789f25d00ffa145c99) Made it auto-trigger any outputs on the entity used to start Survival if the pre-round timer expires.<br/>

### Taaannnk!! (mutation19.nut):

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/e4309d4938a8a5f50397ca1421281f81e49116e2) Thickened 24 clips across 10 maps to dramatically reduce stuck Tank spawns.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/e4309d4938a8a5f50397ca1421281f81e49116e2) Map-specific fixes for stuck spawns on c1m2, c2m2, c3m1, c5m2, c5m4, c6m1, c8m1-3, c9m2, c10m1-4, c11m1-3, and c12m1-4.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/0d071ae0647c6016133d2772006f6ad0d6168f15) Players no longer need to wait for incapped Survivors in order to progress at areas like elevators.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/0d071ae0647c6016133d2772006f6ad0d6168f15) Fixed Director variable typo from "BehindSurvivorsSpawnDistance" to "SpawnBehindSurvivorsDistance".<br/>

### L4D1 Coop & Survival:

&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/80c18965ec5da81dc414045685708b6fdf51e40e) Set `"z_tank_autoshotgun_dmg_scale"` to 1.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/1085be20737e1860f507c626fa7bd4802d76556e) Set the claw viewmodels for the L4D1 SI to the proper L4D1 models for L4D1 Versus.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/1085be20737e1860f507c626fa7bd4802d76556e) Disabled water slowdown for L4D1 Survival.<br/>
&emsp;[+](https://github.com/L4D-Community-Team/Last-Stand-Refresh/commit/1085be20737e1860f507c626fa7bd4802d76556e) Defibrillators now convert to pain pills instead of medkits; previously, when converted to medkits the game kept trying to spawn more defibs which led to an oversaturation of medkits.<br/>