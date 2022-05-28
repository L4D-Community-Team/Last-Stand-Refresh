# How to use this changelog

This changelog comprehensively summarizes all differences from the live game to the current Github state.

![Guide](https://raw.githubusercontent.com/l4d2-community-update/High-Priority-Fixes/main/changelogs/Guide.png?token=GHSAT0AAAAAABVAFMQN73ZQ3QSRIZ6ESQ2MYUQYVVQ)

--------------------------------
--------------------------------

# Assets

### Weapons:

#### Knife:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/melee/knife.txt#L91) Gave the CS:S knife its old slash pattern back. `[knife.txt]`<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/melee/knife.txt#L96-L97) Knife's world animations now swings in the same direction as the viewmodel's. `[knife.txt]`<br/>

# Map Fixes

### Dead Center

#### Map 1:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/missions/campaign1.txt#L96) <ins>Versus</ins>: Tank will only spawn after Survivors have exited the elevator.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L280) Blocked a permstuck spot at vending machine alternative path.<br/>

### Swamp Fever

#### Map 1:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L900) Patched janky ladder near the ferry event.<br/>

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L963) Blocked a permstuck spot behind some rocks at the start near the parachutist.<br/>

### The Parish

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L1689) [*](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1209) Eliminate a permstuck spot that a previous ladder patch created.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1291) <ins>Versus</ins>: New ladder in far corner of manhole drop area to fix permstuck.<br/>

### The Passing

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2140) Fixed collision issue with clips on the stairs by the saferoom that caused noticeable teleporting when not on a local server.<br/>

### The Sacrifice

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1534) <ins>Versus</ins>: Delete func clip that blocks SI access into end closet.<br/>

### No Mercy

#### Map 1:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2567) Lift anti-grief kill trigger off the ground to prevent an incap glitch.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1628) <ins>Versus</ins>: Add clip to patch a ladder shortcut at the start.<br/>

### Crash Course

#### Map 1:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2995) Block rare permstuck spot between the boxwreck and traffic light.<br/>

### Death Toll

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L2163) <ins>Versus</ins>: Fixed an SI permstuck spot on the barricade by the church.<br/>

### Dead Air

#### Map 4:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L3790) <ins>Versus</ins>: Fix SI permstuck spot inside the end rubble.<br/>

### Blood Harvest

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L2748) <ins>Versus</ins>: SI permstuck beyond the end of tunnel just before end safe room.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4050) Permstuck in tree near shed (for SI / RocketDude).<br/>

#### Map 4:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L2897) <ins>Versus</ins>: Patched fence Infected ladder next to lawnmower room.<br/>

### Cold Stream

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4352) Fix permstuck next to military truck leading to barricade.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4353) Fix a regression with easy event skip clip and a permstuck clip nearby.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4412) Enlargened a permstuck clip to fully fix it.<br/>

### The Last Stand

#### Map 1:

&emsp;[+](__TODO__) __TODO__ Moved Francis' spawn so the player no longer gets stuck and dies during the intro on single player modes.<br/>

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L3130) <ins>Versus</ins>: Fix displacement crouch to get under finale map.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4674) <ins>Versus</ins>: Fixed an SI permstuck spot between a fence and tree cluster at the cliff overlooking the beach.<br/>