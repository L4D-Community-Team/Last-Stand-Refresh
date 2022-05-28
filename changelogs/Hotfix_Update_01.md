# How to use this changelog

This changelog comprehensively summarizes all differences from the live game to the current Github state.

![Guide](https://raw.githubusercontent.com/l4d2-community-update/High-Priority-Fixes/main/changelogs/Guide.png?token=GHSAT0AAAAAABVAFMQN73ZQ3QSRIZ6ESQ2MYUQYVVQ)

--------------------------------
--------------------------------

# Assets

### Weapons:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/melee/knife.txt#L91) Gave the CS:S knife its old slash pattern back. `[knife.txt]`<br/>

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
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L964) Blocked a permstuck spot on a cypress knee near the parachutist area dock.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L1026) Blocked a permstuck spot on a cypress knee near the event start.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L798) <ins>Versus</ins>: Blocked a permstuck spot for SI behind a bush to the left of the first bridge upon entering the water.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L799) <ins>Versus</ins>: Blocked a permstuck spot for SI in the bush near the lantern/event start.<br/>

#### Map 4:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L853) <ins>Versus</ins>: Blocked a permstuck spot for SI behind a bush in the back of the enclosed hedge area.<br/>

### The Parish

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L1691) [*](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1212) Eliminate a permstuck spot that a previous ladder patch created.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1294) <ins>Versus</ins>: New ladder in far corner of manhole drop area to fix permstuck.<br/>

### The Passing

#### Map 1:
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2013) Blocked a permstuck spot in a corner behind a floodlight in the top floor after the alarm cars.<br/>

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2143) Fixed collision issue with clips on the stairs by the saferoom that caused noticeable teleporting when not on a local server.<br/>

### The Sacrifice

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1537) <ins>Versus</ins>: Delete func clip that blocks SI access into end closet.<br/>

### No Mercy

#### Map 1:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2570) Lift anti-grief kill trigger off the ground to prevent an incap glitch.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L1631) <ins>Versus</ins>: Add clip to patch a ladder shortcut at the start.<br/>

### Crash Course

#### Map 1:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L2998) Block rare permstuck spot between the boxwreck and traffic light.<br/>

### Death Toll

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L3338) Blocked a permstuck spot between the cliff rocks and the right side of the mandatory house.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L2166) <ins>Versus</ins>: Fixed an SI permstuck spot on the barricade by the church.<br/>

### Dead Air

#### Map 4:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L3794) <ins>Versus</ins>: Fix SI permstuck spot inside the end rubble.<br/>

### Blood Harvest

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L2751) <ins>Versus</ins>: SI permstuck beyond the end of tunnel just before end safe room.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4054) Permstuck in tree near shed (for SI / RocketDude).<br/>

#### Map 4:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L2900) <ins>Versus</ins>: Patched fence Infected ladder next to lawnmower room.<br/>

### Cold Stream

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4358) Fix permstuck next to military truck leading to barricade.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4343) [+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4344) Fix two permstuck spots behind the bushes on the right of after the military truck leading to barricade.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4359) Fix a regression with easy event skip clip and a permstuck clip nearby.<br/>

#### Map 3:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4418) Enlargened a permstuck clip to fully fix it.<br/>

### The Last Stand

#### Map 1:

&emsp;[+](__TODO__) __TODO__ Moved Francis' spawn so the player no longer gets stuck and dies during the intro on single player modes.<br/>

#### Map 2:

&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_versus.nut#L3133) <ins>Versus</ins>: Fix displacement crouch to get under finale map.<br/>
&emsp;[+](https://github.com/l4d2-community-update/High-Priority-Fixes/blob/main/scripts/vscripts/anv_mapfixes.nut#L4680) <ins>Versus</ins>: Fixed an SI permstuck spot between a fence and tree cluster at the cliff overlooking the beach.<br/>
