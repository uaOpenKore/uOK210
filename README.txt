=========================
### OpenKore what-will-become-2.1
=========================

Features:
- New ServerTypes and localized tables for official servers (kLabMouse, Technology, h4rry_84, EternalHarvest)
- Support for skill and status handles in configuration, allows to use duplicate names (Technology, EternalHarvest)
- A lot of changes and additions in network; kRO ServerType tree (Technology)
- Default fieldpack updates: New World, Brasilis (midnytblu)
- Default tablepack updates (Mushroom, help_us, Technology, EternalHarvest)
- Builtin console command help updates (manticora)
- Additions in Wx interface (EternalHarvest)
- Captcha support (Technology)
- "party request PlayerName" (EternalHarvest)
- Pet system improvements: capture, hatch, info, feed; equip armors trough eq (Technology)
- Quest system: "quest" command; tables/quests.txt (Technology, kLabMouse, obsc)
- Cooking: "cook" command (Technology)
- Refining: "refine" command (Technology)
- Show Equip: "se" command (Technology)
- Deleting homunculus: "homun fire" (Technology)
- Use skill on homun/merc: "ssl" command (EternalHarvest)
- Battleground chat: "bg" command (EternalHarvest)
- Map aliases and instances support (Technology)
- Hidden Enchant support (EternalHarvest)
- Server rates info (Zloba)
- Custom NPC sequences before standard b/s dialog: sellAuto_npc_steps, buyAuto.npc_steps (EternalHarvest)
- target_isNotMyDevotee config option (Technology)
- "devotion" message domain, so you can squelch it (Technology)
- state.yml generator moved to a plugin (EternalHarvest)
- Improved messages about unknown and unhandled packets (Technology)
- Protect actor hashes from autovivification (kLabMouse, EternalHarvest)
- Local SCons update (kLabMouse)

Translation updates by:
- Indonesian: h4rry_84
- Traditional Chinese: littlewens
- Portuguese: Mushroom
- Russian: DeniZka, manticora

Ongoing updates for supported servers by:
-  bRO: Mushroom, dejaime
- euRO: EternalHarvest
-  fRO: MiDaM
- idRO: h4rry_84
-  iRO: twist3d, Motivus, EternalHarvest
-  kRO: Technology
-  mRO: help_us
-  pRO: midnytblu
-  rRO: kLabMouse, 4epT, EternalHarvest
-  tRO: UltimaWeapon
- twRO: littlewens

Fixes:
- help console command output (manticora)
- Allow lvl to be optional in useSelf_skill (EternalHarvest)
- Wrong month in showTimeDomainsFormat (lolzorbot)
- autoResponse not working (EternalHarvest)
- Excess flooding with background color in Console (EternalHarvest)
- Outgoing chat and chatroom encoding (Technology)
- Rewrite of autoSkill/StatRaise, they're Tasks now (Technology, EternalHarvest)
- autoMoveOnDeath_x and _y are now optional (EternalHarvest)
- Wrong message in pet capture result (EternalHarvest)
- Fix autovivification in attackAuto+tankMode (EternalHarvest)
- Missing message for failing deal because of storage (EternalHarvest)
- Missing Task::WithSubtask::DESTROY (Technology)
- calcRectArea checking for nonwalkable tiles on the wrong side (allanon256)
- Create log directory recursively (EternalHarvest)
- Empty filenames in "unable to load" errors (EternalHarvest)
- Fixes in plugins processing (Technology)
- New vender packet (Technology)
- Incoming ingame mail message (Technology)
- cities.txt update (help_us)
- Crash after font change in Wx (Technology)
- Hotkey packets in XKore 2 (Zloba)
- tankMode for homunculi and mercenaries (Technology)
- Indexes were truncated in long cash store list (EternalHarvest)
- Invalid arguments assertion when attacking - ignore actors outside of map (Technology)
- Monster name and points in Taekwon Mission (Technology, woozc)
- Private message packet structure for ST22 (UltimaWeapon)
- "Deal cancelled" spam (EternalHarvest)
- SVN AutoUpdater fixes (kLabMouse, EternalHarvest)
- Guild allies and enemies (EternalHarvest)
- Crash with loginPinCode (kLabMouse)
- Incorrect storage password on BSD, Linux (EternalHarvest)
- Config blocks of the same type in different files (EternalHarvest)
- target_hp for mercenaries (EternalHarvest)
- Encoding (Technology)
- Do not teleport to avoid monster when already dead (BMP)
- Guild creation (kLabMouse)
- Do not query GMs with getplayerinfo (kLabMouse)
- Exp, member titles and jobs display in guild info (Technology)
- Assert in ActorList (Technology)
- Crash in partySkill_notPartyOnly (Technology)
- Hp percent assumed to be 0 when max hp is undefined (Technology)
- Configured charBlockSize had no effect for some STs (kaliwanagan)
- masterLogin_packet with XKore 1 (Technology)
- Some statuses couldn't be recognized (johnny)
- Original names in sll and petl (Technology)
- Rental items (Technology)
- Walk speed (Technology)
- smartHeal interaction with Meditatio and mercenaries (Technology)
- Matk and walk speed for mercenaries (Technology)
- mercenary_whenStatusActive self condition (Technology)
- Mercenary was not removed when it's duty is over (Technology)
- Crash when receiving NPC buy list after NPC cancel (UltimaWeapon)
- Heal target display for Potion Pither (EternalHarvest)

=========================
### OpenKore 2.0.7
=========================
- Feature: additional "label" parameter "block" to change config block header. (thanks to vit).
  	Syntax:
		conf <label_name>.(<block_param> | block) [new_value]
  	Examle:
		conf applesEtc.block Meat
- Feature: route_avoidWalls config option.
- Fixed: Pets are no longer being seen as monsters, support for extended pet packet(Technology)
- Feature: Mercenary&Homun controlling (EternalHarvest)
- Feature: Mercenary&Homun handling (EternalHarvest)
- Fixed: Monster-based mercenaries detection (EternalHarvest)
- Fixed: status timer support (Technology)
- Fixed: XKore 2 on 8_5 (Technology)
- Feature: Hotkey support for XKore 2 (Technology)
- Feature: Ingame auction support (Technology)
- Feature: Ingame mail support (Technology)
- Fixed: itemID === userID in packet_useitem hook (kLabMouse)
- Fixed: Kore can't connect to euRO (bibian)
- Fixed: 3rd class jobs recognition (Technology)
- Translations: (h4rry84 + Littlewens)
- Feature: SVN AutoUpdater tool (kLabMouse)
- Fixed: Posseidon HackShit support (kLabMouse)
- Fixed: stuck when itemTake/Gather (EternalHarvest )
- Fixed: in_game hook (ezza)
- Fixed: alchemist and blacksmith ranking points (h4rry84)
- Fixed: Hairstyle and haircolor were messed up in character creation (EternalHarvest )
- Fixed: skill usage for serverType 8 using xkore 2 (Technology)
- Fixed: walking speed not being sent to the client on xkore 2 (bibian)
- Fixed: send weapon/shield apearance to client on xkore 2 (bibian)
- Fixed: Let xkore2 handle Sync'ing for serverType 8, 8_1, 8_2, 8_3, 8_4 instead of the RO client. (Technology)
- Fixed: fix Homunculus sub processFeeding. (lastclick + thx to: Aib0)
- Fixed: sendHomunculusMove causing disconnection on serverType 8 family servers (Technology)
- Feature: Added loadPlugins 3 for skipping plugins. (sli)
- Fixed: fix Monster Killed Count if count > 9999 (lastclick)
- Fixed: kore trying to equip an already equipped item (Technology)
- Fixed: lockMap_randY, lockMap_randX (Technology)
- Fixed: fix buyauto standpoint & distance (lastclick)
- Fixed: fix for: upper, lower, mid headgear from other players not showing up correctly. (Technology)
- Fixed: Blacksmith repair skill causes disconnect (Technology)
- Feature: new config variable repairAuto_list (Technology)
- Fixed: 0072 can also mean 006B (isieo)
- Fixed: fix bugs range attack. (lastclick + thx to: Rumata)
- Fixed: minStorageZeny (lastclick)
- Fixed: Optimisation autoBuy (lastclick)
- Fixed: notPartyOnly not working properly in partySkill block (heero74 + thx to: )
- Fixed: Added ServerType 21 support for Demise of Morroc update (code by UltimaWeapon and small fixes by heero)
- Fixed: added a missing packet prefix affecting party invite (heero74)
- Fixed: couldn't execute console command started with ; from client with serverType 21 (UltimaWeapon)
- Fixed: Teleport skill level fix for players with teleport level 2. (freegoods)
- Fixed: config option: storageAuto_useChatCommand (Technology)
- Fixed: loop if Butterfly Wing is not present (lastclick + tnx to: [GM]#05)
- Fixed: sub parseList was not removing the endline's,causing skillsencore.txt not to get parsed correctly. (Technology)
- Fixed: GCC compiling (thanks to technology)
- Fixed: Fixed the full storage bug. Now uses the detected storage size. (sli)
- Fixed: ServerType 21 in xKore 2 mode (kLabMouse)
- Fixed: ServerType 8_5 to be compatible with eA's pv 23. (bibian)
- Fixed: added ServerType 22 for idRO's Fix System Chat and for since idRO can't use anymore ServerType 21 because it's counterfeit with tRO update. (h4rry84)

=========================
### OpenKore 2.0.6.1
=========================
- Dist file wasn't written properly therefore, 2.0.6 doesn't have servertypes 8_1-8_4
  This version is suppose to cover it up.


=========================
### OpenKore 2.0.6
=========================
- Implemented option for selective loading of plugins (by Technology).
  Added new sys.txt options: loadPlugins & loadPlugins_list
  Syntax:
		loadPlugins <flag> - this option controls loading of plugins at startup
								  or when the "plugin load all" command is used.
								  0 : do not load plugins
								  1 : load all plugins
								  2 : only load plugins that are listed in loadPlugins_list
		loadPlugins_list <list> - if loadPlugins is set to 2, this comma-separated list of plugin names
								  (filename without the extension) specifies which plugin files
								  to load at startup or when the "plugin load all" command is used.
- New flag for attackChangeTarget: 2 - find better attack target while gaining LOS to current target.
- Fixed bug crashes when console commands access undefined objects
- Fixed bug in 'reload' chat command (thanks to Motivus)
- Fixed bug in stripping callSign from chat commands
- Fixed minimap_indicator (thanks to windows98SE)
- Fixed bug in getNPCInfo that allows a zero-length map name.
- Modified move command. Now supports standard "map x y" parameter sequence. (thanks to Chontrad, Alexander)
- Fixed pickupitems flag 2 not checking itemsTakeAuto, itemsGatherAuto & itemsMaxWeight.
- Added a 'messageIDEncryption' option to servers.txt. When set to 0, it will
  disable the usage of message ID encryption, even if the server appears to
  require it.
- Added handler for error 101 (account suspension)
- Fixed XKore to work with EPP enabled servers (thanks Belial)
- Added Gospel and NPC Skill effect recognition (thanks to johnny)
- Fixed range check and work of target_deltaHp (by 4epT)
- Fixed typo in 'notOnAction' (by 4epT)
- processAutoAttack is rewritten, it now uses new functions (getBestTarget(), isSafe()). priority.txt works.
- Added sitAuto_safe_stand_up timeout and sitAuto_look_from_wall config option.
- Added new items, monsters, fields, emotions, portals.
- Added ServerType 8 support for XKore2
- Fixed XKore 2 not showing equiptment. - Thanks to Technology
- Added new console command 'pause'.
  Syntax: 
        pause <seconds> - any command executed after this will have to wait a specified
                          number of seconds before its executed assumed as 1 if no parameter 
                          specified. (resets on ai off/manual and when not ingame)
- Integraded doCommand plugin into openkore source (settings in config.txt)
  
  doCommand <console command> {
	hp
	sp
	homunculus_hp
	homunculus_sp
	homunculus_dead
	onAction
	whenStatusActive
	whenStatusInactive
	whenFollowing
	spirit
	aggressives
	monsters
	notMonsters
	stopWhenHit 0
	inLockOnly 0
	notWhileSitting 0
	notInTown 0
	timeout
	disabled 0
	inInventory
	inCart
	inMap
	manualAI 0
  }


=========================
### OpenKore 2.0.5.2
=========================

- Fixed some bugs in X-Kore mode.


=========================
### OpenKore 2.0.5.1
=========================

- Fixed a bug that was caused by a typo.


=========================
### OpenKore 2.0.5
=========================

- Added ability to locate data files from multiple possible locations.
- Added lockdown mode.
- Fixed the 'followBot' feature.
- Added 'minStorageZeny' for storage, and 'zeny' in 'SelfCondition'.
  (thanks to 4epT and piroJOKE)
- Added serverType 19 and 20 to support pRO Valkyrie
- Added 'teleportAuto_useItemForRespawn' if set to 1 Kore will use
  Butterfly Wing to respawn.
- Added support for encrypted padded packets


=========================
### OpenKore 2.0.4
=========================

- mRO (Malaysia) PIN code support [by kLabMouse] (thanks to toq, Biozinc and
  mRO players who helped me)
- Support for disconnecting when storage is full (thanks to glew).
- The Console::Curses interface have been fixed (thanks to Dodge and Paldium).
- Readline interface fixes (thanks to Paldium).


=========================
### OpenKore 2.0.3
=========================

- getAuto has been fixed.
- Card merging has been fixed.
- Fixed a crash that occured when Kore is stuck during movement.
- Fixed displaying damage when using skills.


=========================
### OpenKore 2.0.2
=========================

Bug fixes:
- Fix loading of data files that are located in folders with non-ASCII
  characters.
- X-Kore 2 has been entirely rewritten and is now more reliable.
- Fixed autostorage.
- The Wx interface now allows you to scroll up the console.
- Many crashes have been fixed.

New config options:
- teleportAuto_notPlayers:
  comma-separated names of players to ignore by teleportAuto_allPlayers
  you can also use player IDs (recommended)

Credits:
- rastalo & shamikchand: Autostorage bug report & fix.
- gtbot: teleportAuto_notPlayers


=========================
### OpenKore 2.0.1
=========================

- Many bugs have been fixed.
- Some small performance improvements.
- New configuration option 'dcOnPlayer': makes the bot exit once a player
  is detected in your FOV on your lockMap.
- The character inventory data structure has been refactored. Plugins that
  make use of the inventory will likely have to be updated. More information
  about the change can be found here:
  http://forums.openkore.com/viewtopic.php?t=32101

Credits:
- natz: Various bug fixes.



=========================
### OpenKore 2.0.0
=========================

After a long time, OpenKore 2.0.0 has finally been release. This is a
stable released, and is not beta. There are no new features compared to 1.9.4,
but many bugs have been fixed. Furthermore, iRO (International) support has
been restored.

Many thanks to the following people who made this release possible:
Japplegame, Darkfate, championrpg, wheee, djfelone, Dragonight!,
Bibian,  kLabMouse: contributions to iRO and padded packets support.
And of course, to all the usual OpenKore developers.


=========================
### OpenKore 1.9.4 (beta)
=========================

Credits:
- johnny: Fix for headgear display.
- skseo, gksmf0615: kRO support update.
- piroJOKE: Field updates.
- PetroW: Support for the new eAthena actor movement message.
- Ptica: Socket bug fix in the bus framework.
- Reignh: Fix for Ninja weapon and Missing skills.
- natz: Various contributions.

Important changes:
- kRO support (February 25 2007) has been fixed.
- OpenKore Webstart has been removed. The experiment turned out to be
  unsuccessful.
- mRO server compatibility fixes.
- tRO server compatibility fixes.

Bug fixes:
- Headgears are now detected correctly.
- Ninja weapon are now detected correctly.
- Many crashers have been fixed.

New commands:
- Added more GM Commands
	gmremove : Warp to a player via character name or user name.
	gmrecall : summons a player via character name or user name.

New config options:
- homunculus_intimacyMax
  Max value of intimacy, if this value is reached feeding will discontinue until
  minimum is reached.

- homunculus_intimacyMin
  Min value of intimacy, will continue feeding if this value is reached.
  
- homunculus_hungerTimeoutMax
  How long should we wait between feedings? (max)
  
- homunculus_hungerTimeoutMin
  same as above, but min value
  
- homunculus_autoFeed
  turn on/off auto-feeding
  
- homunculus_autoFeedAllowedMaps
  map names where to allow auto-feeding (leave empty for all maps)

New mon_control feature:
- disconnect on monster:<teleport>:
			1 to teleport if the monster is on the screen.
			2 to teleport if the monster attacks you.
			3 to disconnect if the monster is on your screen.
			This is only used in auto-attack mode.
			example :
				Poring 0 3 0 
				this will make kore disconnect for 30 secs when it sees poring.

=========================
### OpenKore 1.9.3 (beta)
=========================

I'm happy to announce the 4th beta release of OpenKore, version 1.9.3. It hasn't been easy - many developers were busy with their real lives. Some new contributors joined us while others left. I'd like to give my thanks to the following people, who have contributed to this release. Without them OpenKore would not be what it is today. :)

- Darkfate: partial servertype 11 support.
- piroJOKE: server information updates and table files updates,
  labels idea, partial servertype 13 support.
- Click: improved shop list randomization.
- Stalker: runFromTarget fix
- raizend: Top 10 packet parsers
- illusionist: Party fix, Guild Messages, top10 command, bRO support
- edeline: help with kRO server fixes.
- skseo: Korean translations and kRO fixes.
- Tatka: help with special character support in the Win32 console.
- heero: servertype 15 (pRO Thor) support.
- littlewens: Traditional Chinese translations.
- PlayingSafe: Fixes for big-endian systems, such as Mac-PPC.
- clarious: Help with vRO support.
- DInvalid: Correctly set character direction upon move, autoSwitch bugfix.
- Anarki: Monster ID support for mon_control.txt
- kanzo: ropp fix for XKoreProxy.
- xcv: Fix calculation of benchmark results and the autobuy AI.
- And of course, everybody in the existing OpenKore team. :) See http://cia.navi.cx/stats/project/openkore

Here's a summary of the major changes in this release:
- When you start OpenKore, it will show you a friendly web interface, 
  in which you can read project news (such as new OpenKore releases).
  You can also use it to open the OpenKore configuration folder, to choose a 
  language and to start OpenKore.
- Lots and lots of bugs have been fixed. Most notably, many crashers, UTF-8 (character set handling) bugs and AI bugs have been fixed.
- Support for the following servers has been restored: vRO (Vietnam), rRO (Russia), euRO (Europe). Note that you need the ropp plugin in order to play on any of these servers.
- Support for new classes, such as Gunslinger and Ninja.
- We now support more platforms. OpenKore should now work correctly on FreeBSD, MacOS X and Sun Sparc.
- OpenKore has been translated to traditional Chinese.
- About 30% performance improvement compared to 1.9.2. This is because debugging has been disabled in this release.


Detailed list of changes follows:

Bug fixes:
- Fixed Party bug where the bot would follow any random player 
  instead of the master
- isSelfSkill now works in monsterSkill blocks.
- Fixed homunculus_tankMode.
- Fixed inability to detect evolved homunculus state.
- Add Slim Pitcher to location skills list
- Skill timeout when runFromTarget is enabled fixed.
- Correctly support UTF-8 BOM characters.
- Correctly load skills.txt and avoid.txt as UTF-8.
- Fix sendQuitToCharSelect
- Fix Korean character encoding support.
- Fix kRO support.
- Fix vRO support.
- Fix support for FreeBSD, MacOS X and other Unix.
- Fix Sun Sparc support.
- Fix chat room creation.
- AutoSwitch will now not lose status effect like Twohand Quicken, when
  switching weapons.

New config options:
- dealAuto_names <list of player names>
	If non-empty and dealAuto is set to 2 or 3, then bot will only deal with
	players on the list. (Other players will be treated as dealAuto 0.)
- route_escape_shout <Message>
	Makes kore look "human like" during bot checks which involves warping people to
	maps without portals.
- pauseCharServer <seconds>
	similar to pauseMapServer, pause for a number of seconds before connecting to
	the char server
- shop_random <flag>
	<flag> may now be 1 (for the old behavior) or 2 (for improved shop
	list randomization). When set to 2, the shop list will first be mixed,
	then the list of items to sell will be generated. When set to 1, the
	the list of items to sell will first be generated, and then that
	list will be mixed.


New features:
- Basic support for rRO (serverType 13) (Without attack, sit, stand and skill use)
- Basic support for pRO Thor (serverType 12) (Without attack, sit, stand and skill use)
- Basic support for euRO (serverType 11) (Without attack, sit, stand and skill use)
- Added route_escape_shout <Message> to somewhat avoid gm bot check.
- It is now possible to enter special characters into the OpenKore console on Windows.
- It is now possible to use simple block labels in "conf" command.
- It is now possible to use monster IDs in mon_control.txt

New commands:
- top10 <b|a|t|p> | <black|alche|tk|pk> | <blacksmith|alchemist|taekwon|pvp>
	Displays the top 10 Blacksmiths, Alchemists, Taekwon and PVP ranks
- GM commands:
	gmb : Broadcast a global message.
	gmbb : Broadcast a global message in blue.
 	gmnb : Broadcast a nameless global message.
	gmlb : Broadcast a local message.
	gmlbb : Broadcast a local message in blue.
	gmnlb : Broadcast a nameless local message.
	gmmapmove : Move to the specified map.
	gmcreate : Create items or monsters.
	gmhide : Toggle perfect GM hide.
	gmwarpto : Warp to a player.
	gmsummon : Summon a player to you.
	gmdc : Disconnect a player AID.
	gmresetskill : Reset your skills.
	gmresetstate : Reset your stats.
	gmmute : Increase player mute time.
	gmunmute : Decrease player mute time.
	gmkillall : Disconnect all users.

Internal:
- Changed bRO server to use Secure Login
- Implemented Guild Kick / Guild Leave messages
- A new, object-oriented framework for message sending has been implemented.
- The beginning of a new, object-oriented task framework has been implemented.
  This will eventually replace the old AI framework.
- The IPC framework has been entirely replaced by the OpenKore bus system.


=========================
### OpenKore 1.9.2 (beta)
=========================

*** INCOMPATIBLE CHANGES ***:
- You need to download the latest responses.txt (in the config pack)
  to use the new 'exp' and 'version' chat commands.

Credits:
- Molag: Ayothaya portals contributions.
- DarkShado: XileRO server information updates.
- johnny: Homunculus skills.
- piroJOKE: field file contributions.
- cloud2squall: server information contributions.
- n0rd: support for compressed field files.
- Darkfate: partial serverType 11 (euRO) support
- natz: updated Receive.pm guild info

Bug fixes:
- Fixed a crash when unequipping items (bug #16)
- Fixed an auto-completion crash bug (bug #24)
- Fixed the "Can't store CODE items" bug (bug #37)

New features:
- Added AI::Homunculus module for homunculus AI support with automated
	homunculus feeding, following, and attacking (see new config options and
	commands).
- Support for homunculus skills in skills.txt (use normal skill blocks to use
	them).
- Add support for new vRO. Use serverType 10.
- Added teleportAuto_lostTarget, teleport when target is lost.
- Added a mob-training control. Use attack flag 3 in mon_control.txt to
	activate this. More details are available at:
	http://forums.openkore.com/viewtopic.php?p=134002
- Added command chaining, preform multiple commands in 1 line. the " ; "
	character is used to delimit the command.s
	Example: c watch out im using an item now;is 0;c see, i used it!
- Added Aegis 10.4 new classes support.
- Added Taekwon mission support.
- Added manualAI Where autoskills could be executed in ai manual mode.
	for more information : http://forums.openkore.com/viewtopic.php?t=24513

New config options:
- attackChangeTarget <boolean flag>
	automatically change target to an aggressive monster if the target monster
	is not yet reached or damaged. This prevents you from continuously routing
	to your target while dragging a mob of aggressive monsters behind you.
- homunculus_followDistanceMax <distance>
- homunculus_followDistanceMin <distance>
	Kore and the homunculus will always try to keep within these distances from
	each other.
- homunculus_attackAuto <flag>
- homunculus_attackAuto_party <flag>
- homunculus_attackAuto_notInTown <boolean flag>
- homunculus_attackAuto_onlyWhenSafe <boolean flag>
- homunculus_attackDistance <distance>
- homunculus_attackMaxDistance <distance>
- homunculus_attackMaxRouteTime <seconds>
- homunculus_attackMinPlayerDistance <distance>
- homunculus_attackMinPortalDistance <distance>
- homunculus_attackCanSnipe <boolean flag>
- homunculus_attackCheckLOS <boolean flag>
- homunculus_attackNoGiveup <boolean flag>
	same as the attackAuto* counterparts.
- homunculus_attackChangeTarget <boolean flag>
	same as attackChangeTarget.
- homunculus_route_step <number>
	this option is required or your homunculus will not be able to move.
- homunculus_runFromTarget <boolean flag>
- homunculus_runFromTarget_dist <distance>
	these will mostly be not needed but they are still included for posterity.
- homunculus_tankMode <boolean flag>
- homunculus_tankModeTarget <player name>
	same as the tankMode* counterparts. You can use this so that your
	homunculus can tank you. Set homunculus_tankModeTarget to your character
	name.
- homunculus_teleportAuto_deadly <boolean flag>
- homunculus_teleportAuto_dropTarget <boolean flag>
- homunculus_teleportAuto_dropTargetKS <boolean flag>
- homunculus_teleportAuto_hp <percent hp>
- homunculus_teleportAuto_maxDmg <damage>
- homunculus_teleportAuto_maxDmgInLock <damage>
- homunculus_teleportAuto_totalDmg <damage>
- homunculus_teleportAuto_totalDmgInLock <damage>
- homunculus_teleportAuto_unstuck <boolean flag>
	same as the teleportAuto* counterparts.
- Shared Block Attributes: homunculus_hp <hp>[%] and homunculus_sp <sp>[%]
	same as the hp/sp block attributes. These are useful for using homunculus
	skills on your skill blocks.
- teleportAuto_lostHomunculus <boolean flag>
    instead of routing back to your lost homunculus (default), Kore will
	teleport to get the homunculus back.
- Shared Block Attribute: homunculus_dead <boolean flag>
	triggers the config block only if your homunculus died.
- teleportAuto_lostTarget <boolean flag>
	Makes the bot (attempt to) teleport after it lost its target, this to
	prevent it from locking onto the same target over and over in some cases.
- ignoreServerShutdown <boolean flag>
	Ignores the "server shutting down" error wich some servers tend to send
	(iRO for example).
	Don't use this unless you're 100% sure the errors are "fake".
- Shared Block Attribute: manualAI <flag>
	flag 0    auto only
	flag 1    manual only
	flag 2    auto or manual

New sys.txt options:
- sendAnonymousStatisticReport <boolean flag>
    tells whether OpenKore will report an anonymous usage report. Note that
	none of your sensitive information will be sent. More info is available at:
	http://www.openkore.com/statistics.php

New commands:
- homun <s|status|feed|move|standby|ai|aiv|skills>
	homun s       : displays homunculus status.
	homun feed    : manually feeds homunculus.
	homun move    : basic homunculus move command (similar to 'move' command).
	homun standby : basic homunculus standby command.
	homun ai      : homunculus AI management (similar to 'ai' command).
	homun aiv     : displays homunculus AI sequences.
	homun skills  : homunculus skills management (similar to 'skills' command).

New chat commands:
- exp [item|monster]
	behaves like the 'exp' console command, but it is used as a chat
	command.
	exp         : shows exp gain.
	exp item    : shows items gain.
	exp monster : shows killed monsters.
- version
	shows the OpenKore version.

Incompatible Changes:
- ; command separator replaced with ;;, so you can now use semicolons
	in chat (as long as they're not two in a row).

Internal:
- Updated $config{gameGuard} '2' behavior to adapt to bRO server.
- The Console::Other interface has been removed in favor of the Console::Unix
	interface. This only affects OpenKore when running on a Unix, such as
	Linux.
- Item has been renamed to Actor::Item for consistency.
- Receive.pm : monk_spirits is now known as revolving_entity
- Added Bullet support
- New 'disconnected' plugin hook, called when you get disconnected
	from the map server

--------------------------

For older news, please read:
http://www.openkore.com/misc/OldNews.txt

--------------------------

# Commit Testing ;p
