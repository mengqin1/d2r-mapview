# CHANGELOG

All notable changes to this project will be documented in this file.

## [3.0.3] - 2022-09-26 - Minor fixes

- Fixed buff bar (thanks @reetah)
- Added sunder charms to list of items
- You will now get a warning if you are running an old version of the map server

## [3.0.2] - 2022-09-24 - Minor fixes

- Fix for reading items from vendors
- Replaced SeedDecrypt.dll with one written in Rust which works more reliably

## [3.0.1] - 2022-09-23 - Fix after latest patch

- Seed decryption has been reimplemented
- Made some fixes to item stats

## [3.0.0] - 2022-09-08 - Major rework

- Maps no longer have to load when going from one walkable area to another!
- All connected walkable maps now render at once
- Walkable exits are now marked e.g. entrance to Cold Plains from Blood Moor
- Major rewrite of how maps and units are drawn
- `Ctrl+O` Settings UI General tab has been updated
- Map position can now be CENTER, TOP_LEFT or TOP_RIGHT
- You can cycle these 3 positions with the `\` key
- Removed left margin, top margin and other redundant settings
- Removed `mapconfig.ini` since that's not used anymore

- **NOTE**: Expect some minor bugs with this release
  - You need at least map server v15 otherwise you'll have slow performance
  - Performance may overall be slower (looking for feedback)
  - Some minor visual bugs may pop up
  - Pathfinding may have some bugs
  - You may need to reset your settings to defaults by deleting/renaming your `settings.ini` file
  - You can still use v2.9.20 if you are experiencing problems
  - Change map scale with numpad +/- keys is a bit slow

## [2.9.20] - 2021-07-25 - Bug fixes

- Many bug fixes for windowed mode
- Fixed bug where map sometimes wouldn't appear in windowed mode
- Fixed bug where half of map would be hidden in windowed mode
- Fixed scaling of chests, boss health bars, portals, and exit lines in windowed mode

## [2.9.19] - 2021-07-13 - Pathfinding

- Pathfinding is now added for certain areas
- Can be disabled in Ctrl+O settings
- Pathfinding _REQUIRES_ d2-mapserver version 18 or higher
- Some bug fixes

## [2.9.18] - 2021-06-30 - Fix after latest patch

- Can correctly get map seed after latest patch

## [2.9.17] - 2021-06-14 - Minor changes

- TP scroll counter will flash with only 3 or less scrolls rather than 5
- Fixed poison damage of item stats with an ugly hack
- Fixed issue where map would freeze in certain circumstances

## [2.9.16] - 2021-06-14 - Minor changes

- When you run out of TP scrolls, the counter will now flash when less than 5 scrolls
- Identify scrolls and keys will not flash at all
- Player level of party members has been refined
- Map functions refactor (switching centered mode should be more reliable)
- Party location info doesn't hide when only a UI menu on the right is shown

## [2.9.15] - 2021-06-13 - Localisation fix

- Fixed localisation bug introduced last release

## [2.9.14] - 2021-06-13 - Minor improvements

- Number of players shows in game info text at top left
- Fixed localisation for zhTW (thanks @ckhoho)
- Fixed bug where map wouldn't move with shortcut keys (thanks @DmAc4LyFe)
- Fixed bug where 'always show' shortcut not working when set to TAB (thanks @Gapple)
- Fixed conviction buff name for real this time (thanks @TheKaptainPommes)

## [2.9.13] - 2021-06-12 - Minor improvements

- Non-english text won't wrap the last character anymore
- Buffs will now be grouped by type (buffs, auras, debuffs)
- Conviction aura buff icon will no longer say Critical Strike (thanks Timpa)
- When leaving a map you won't see incorrect lines drawn anymore
- D2R multi session - MH will 'lock' to most recent active window, to run multiple MHs on multiple sessions, make a separate copy of MV
- Fixed up some error message localisation (let me know if you want to help with translation)
- Removed 'edges' setting as no one uses it anymore
- Refactored how map images are handled (important for a future change)

## [2.9.12] - 2021-06-09 - Improvements to seed generator

- Seed generater has been replaced with a much smaller dll
- Executable size is now much smaller (69mb down to 7mb)
- Probably less false flags for Windows smart scanner

## [2.9.11] - 2021-06-09 - Bug fix

- Fixed bug with auto-update where the same version would count as older

## [2.9.10] - 2021-06-09 - Bug fix

- Issue with maps not loading in certain scenarios should be fixed.
- Issue with voices not loading should error silently
- Reverted trimming off the bottom of the map

## [2.9.9] - 2021-06-08 - Fix after blizzard patch

- Fix following blizzard patch (finally)
- Big thanks to @Rabbs and others at MapAssist!
- I'll probably have a fast follow from this to reduce file size and help performance
- This hasn't been tested thoroughly but thought I should send it out.
- Please leave feedback in the discord

## [2.9.8] - 2021-06-03 - Buff tool tips

- Now when you mouse over the buff icon you'll see the name
- The buff name should appear in your local language
- You can now vertically adjust the position of the buff icons
- You can set a positive or negative value to move it up or down the screen
- Improved player pointer caching for better performance
- Map is now cropped at the bottom

## [2.9.7] - 2021-06-02 - Buff expiration alert

- Whenever a buff expires or is removed, it will now flash red for 5 seconds
- This will apply to curses, auras, and buffs
- Each buff will now have a coloured border to say it's a debuff, aura, or buff (red, yellow, green)
- Buff timers may come in a future release, it's a tricky problem

## [2.9.6] - 2021-05-28 - Current buffs/auras

- Currently active buffs/auras will now show at the bottom of the screen
- You can disable this buff bar in settings
- You can also change the icon size of the buff bar in settings
- Items such as Runes will no longer say (Identified) in item log
- Checking vendors for items can be turned off
- Item filter performance improvements

## [2.9.5] - 2021-05-25 - XP per second in game history

- Game history now shows XP per second
- Item stats are now listed in the correct sort order
- Updated some stats which were not appearing correctly
- Improved performance with reading vendor items
- Changed default window title for multi session mode to `Diablo II: Resurrected`

## [2.9.4] - 2021-05-24 - Item stats formatting

- Item stats are now formatted correctly
- Item stats are turned _off_ by default in settings to reduce clutter
- Fixed bug where scrolls/key counters wouldn't render

## [2.9.3] - 2021-05-24 - Fix for latest patch

- Fix unit pattern scan for latest patch (thanks @Rabbs)
- Item stats can now be toggled on or off in the item log
- Item stats are _off_ by default

## [2.9.2] - 2021-05-23 - Item stats in item drop log

- Along with the item drop log you'll see the stats for that item
- You can only see stats that don't require identification
- NOTE: Some stats will appear weird (Attack rating, poison dmg) but this will be improved over time
  You'll get weird stats such as 'Defense' twice, these values are supposed to be added together for ED
- Fixed issue with item log entries disappearing when picked up
- Fixed issue with items being tagged with (Vendor) incorrectly
- Items now appear in item log for 30 seconds instead of 12

## [2.9.1] - 2021-05-23 - Item filter detects vendor items

- Vendor items are now detected by item filter
- For this to work you must first interact with the vendor, only then are items detected
- TP/ID scrolls in belt are now included in counter on right hand side
- Skulls added to default itemfilter.yaml (delete your itemfilter.yaml to generate a new default itemfilter)
- Gem alerts have speech disabled in default itemfilter.yaml
- Changing the hotkey configuration no longer requires restart
- Some code refactored to be a little less terrible

## [2.9.0] - 2021-05-22 - Bug fixes

- Fixed issue where UI would flash up while in menus/inventory
- Fixed issue where scrolls/keys were incorrectly counted
- Moved item log text down a little (thanks @updawg)
- Fixed quality translation for zhTW (thanks @ckhoho)

## [2.8.9] - 2021-05-20 - Number of scrolls/keys in inventory shows on right

- You can now see a counter for the number of Identify scrolls, Portal scrolls, and Keys
  You can disable it and change the size in settings
  The counter is always on the middle of the right side of the screen
- MH version now shows at top left
- Finding the playerunit pointer should be more reliable now
- Fixed issue where () would appear above portals
- Peformance boost for reading items from memory

## [2.8.8] - 2021-05-17 - Item log text

- Item log text will now on the left hand side
  When an item drops and triggers an alert, you'll see it listed on the screen for 12 seconds
  You can adjust the fontsize of the item log, and disable it
- Fixed Halls of Pain exit name (thanks @Mr-Sithel)

## [2.8.7] - 2021-05-15 - Portal labels

- Town portals will now show the location they go to when in town
- Town portals will show who cast them while out of town
- Fixed Arachnids Lair not showing the level name
- Default itemfilter updated - Rare Jewels now show up in yellow

## [2.8.6] - 2021-05-12 - Small fixes

- Fixed windowed mode! Units now draw correctly on the window
- In centered mode now the Win+Arrow move keys will adjust the map position
- Fixed issue where the map 'bounces' when it first loads
- Health percentage no longer appears for town NPCs
- Fixed Jeryhn missing as town NPC
- Default hotkey for changing map centered mode is now `\` instead of `/`
- Updated localisation again for zhTW (thanks @噗噗白)

## [2.8.5] - 2021-05-11 - Eth alerts

- When an item is ethereal, it will now include it in the alert (voice and text)
- When MH tries to start the server, it will run from source if it's available as well now
- Download new version prompt now has localisation
- When the MH tries to start the mapserver itself it will delete the mapserver temp files first

## [2.8.4] - 2021-05-09 - Bug fix

- Fixed problem with ghost player location
- This release also lets me test the auto-update feature of the previous release

## [2.8.3] - 2021-05-09 - Auto update, corpse, party member location range

- On startup the MH will now check for and download a newer version if one is available
- You will be prompted if you would like to download the newer version and it will run immediately
- Location of players on map goes further range by using data in party struct (thanks mengqin)
- Your corpse will now be displayed on the map, is configured with 'other player' settings
- Updated localisation for zhTW (thanks 噗噗白)
- Game history has a shaded border now for better readabilty

## [2.8.2] - 2021-05-01 - Language fix

- Localisation is now fixed after being broken in last release

## [2.8.1] - 2021-04-30 - Normal MH for ladder

- Out of beta after positive feedback
- Added more logging for map server start
- Added localisation for new UI elements
- Non-expansion characters will now work

## [2.8.0-BETA3] - 2021-04-29 - Better beta

- No longer need to start offline game
- Fixed issue where occasionally the map seed offset was incorrect
- Fixed issue where centered map would lock onto wrong player
- Fixed issue with expansion offset

New features:  

- Party location can now be toggled and font size changed  
- Monster resists at the top of the screen can be toggled and font size changed
- Monster health pecentage at top of the screen can be toggled and font size changed.
- For all 3 set the font size to 0 and it will automatically scale the font for your screen (original behaviour)

## [2.8.0-BETA] - 2021-04-28 - D2R Patch update (BETA)

- Fixed changes following Blizzard update
- To get this version to work you must start an offline game first, any offline character.
  Then exit that game, and the MH will work like normal

## [2.7.9] - 2021-04-26 - D2R Patch update

- Updated offset/sigscan for game name, thanks @Rabbs
- Game name in game history was broken by latest D2R patch

## [2.7.8] - 2021-04-26

- Game history XP now has number formatting (e.g. 1,745,324 instead of 1745324)
- Monster health is shown as percentage under health bar
- Exit names will now show area level in brackets next to it e.g. (85)
- Korean localization wording has been fixed (thanks Master Delta K1)
- Localization file is now saved as UTF-8
- Fixed issue where certain settings were saved blank incorrectly
- Players and NPCs will now show as a cross by default (can be changed in settings)

## [2.7.7] - 2021-04-16 - More bug fixes

- Fixed issue with map not rotating correctly introduced last version
- MH will now autoretry 5 times to download the map image
- You will no longer receive an error if you set an invalid hotkey

## [2.7.6] - 2021-04-16 - Bug fixes

- Fixed issue in last release where occasionally the map wouldn't show
- Added auto-retry to downloading map images from the map server
- Better error logging for mapserver connection issues
- Fixed issue where you would hear item alerts from previous game session when starting new session
- Ctrl+H help will only show when you have D2R window active

## [2.7.5] - 2021-04-15 - Party info now shows level

- Fixed party location broken by patch 2.4
- Fixed game name in game history broken by patch 2.4
- Under each player icon you can now see the player level as well as location
- Localisation has been added to the player location (font sizes may be a bit weird)
- Fixed issue with Kurast Shield missing from list of base items

## [2.7.4] - 2021-03-29 - Party member locations and resist stats for mobs

- For party members, their location will now appear under their icon
  Alignment of the text may be off for some resolutions, please let me know in #support
  The player location will only appear for those in your party
  You can turn this off in settings (Ctrl+O)
- When you hover over a monster, you will see their exact resistances now
  Each box will show their resists, >100 means immune
  This is to be help fine tune any 'minus enemy resist' gear
  This is not the most useful feature and I'm open to ideas on how to improve it
- Added options when you right click the MH in the system tray
- Fixed bug where game history would show in game (for real this time)
- Fixed bug where game history wouldn't record consecutive sessions for the same offline character
- (There is still a bug with offline characters using the game name of the last online game)

## [2.7.3] - 2021-03-23 - Minor changes

- Identified unique or set items on the ground will have their proper name (including rings and ammys)
- Changed game history table font back to exocet after feedback (game names were hard to read)
- Quest items e.g. Khalim's Flail, will no longer trigger a voice alert
- Centered mode is now turned on by default

## [2.7.2] - 2021-03-18 - Bug fix for showing other players

- Previously when you joined a game with other players an error message would show

## [2.7.1] - 2021-03-17 - Game history refactored

Overhaul to game history table:  

- Game history uses new font
- Columns are sized to the contents (no more overlapping text)
- Game history time is now in 0m 0s format rather than just 0.00s
- Changing settings for game history no longer requires restart
- Row numbers added

Other changes:

- 'Game Info' will now appear on the top left in game
- Game Info can be switched off and replaces IP text
- You can also change the font size
- Game Info will tell you the current map Area Level 1-85
- If you are clvl < 70 you will also see any experience penalty you might be receiving
- IP text has been removed since it's no longer relevant for 2.4
- Some help text appears in the top left for the first 10 seconds after MH launch

- Other minor performance tweaks
- Performance profiling added but disabled by default

## [2.7.0] - 2021-03-14 - Visual polish

- Town NPCs now have their names above them
- Town NPC names can be shown/hidden in settings
- Introduced the other diablo font
- Item alert text will now have a black background
- Player dot is now blue to be consistent with normal automap
- Other players are now bright green
- Other player names has also been made to appear the same as the normal automap
- All non-interactable NPCs are now hidden (a few in Harrogath were showing)

## [2.6.9] - 2021-03-12 - Unique and set item names

- When an item drops on the ground it will show/speak the full unique or set item name
  e.g. instead of 'Unique Battle Boots' you will hear 'Unique War Traveler Battle Boots'
- The item does not have to be identified for this to work
- Both the text to speech and alert on the screen will show the full name
- This doesn't work for all items - it doesn't work for rings and amulets
- The name is also localised so you should hear it in your local language

## [2.6.8] - 2021-03-10 - Exit text size

- You can now change the size of the text for level exits
- Revives will no longer show immunities
- Massive improvement to performance reading memory values
- Other slight perf improvements in drawing
- You can now configure the maximum FPS, choose a lower value if this MH is a resource hog

## [2.6.7] - 2021-03-07 - Revived monsters/mercs/summons now appear

- Revived mobs, summoned NPCs, Mercs, etc can be shown on the map in their own color
- 'Show my merc/pets' setting will show/hide them
- Town NPCs can now be shown/hidden
- Town NPCs can also be configured with their own color
- All of the above NPCs can be displayed as 'crosses' like the normal automap
- Renamed 'Monsters' tab in settings to 'NPCs'
- Fixed bug where incorrect player name was shown in Game History

## [2.6.6] - 2021-03-05 - Fix missiles

- Missiles were broken in the last release
- Removed chipped gems from default itemfilter
- Other small fixes

## [2.6.5] - 2021-03-05 - Boss health bars

- Bosses now have health bars behind their name
- Coloured lines drawn to next exit/quests/bosses look nicer now
- Fixed bug where portals weren't showing in certain cases
- Map hidden state is checked less frequently which should help performance
- Refactored Settings UI code to be prettier garbage code
- Fixed bug saving the position of the Settings UI
- Some other minor improvements to help performance

## [2.6.4] - 2021-03-03 - Minor improvements

- Performance improvements from lots of refactoring
- You can now configure the font size for item text on the ground
- Purple exit line at Ancients Way now points to Arreat Summit
- Fixed a few exit names that weren't showing
- Fixed instance where physical immunity was using magic immunity color (who could even tell)

## [2.6.3] - 2021-02-21 - Voice bug fixes

- Fixed issue where the text to speech voice would stop working
- Fixed issue with localization for zhTW in the UI
- Items with sockets on the ground will show a number. e.g. `Thresher [4]`
- Added FPS counter, you can now turn it on in the Advanced tab
- Performance mode is now -1 by default (maximum), but an FPS cap of 30
- If you run into any performance issues with this release, set `performanceMode` to `50ms`

## [2.6.2] - 2021-02-18 - More Localization

- You can now select the language in the settings UI
- Level exits now support different languages
- Error messages now support different languages
- Shrine names now support different languages
- Fix: zhTW is now Traditional rather than Chinese Simplified for UI elements
- Fix: esMX is now proper esMX rather than esES
- Fix: Increased map image download timeout and introduced auto-retry
- Fix: 'Show chests' setting will now be saved correctly

## [2.6.1] - 2021-02-17 - Localization

- Localization is here (mostly)! Supported languages:
  English, 中文, 福佬話, français, Deutsch,español, italiano, 한국어, polski, 日本語, português, Русский язык
- Localization only applies to item speech, item alerts, and the settings UI
- It does not apply to shrines, objects, npcs, or exits
- Your locale will be autodetected, but can still be manually configured in settings
- The `itemfilter.yml` is still in English only
- You can now choose which _voice_ you hear under 'Item Filter' tab
- Map prefetching is now turned off by default, you can turn it on in Advanced settings

## [2.6.0] - 2021-02-13 - Map server improvements

- Map images are now rotated on the server rather than the client for performance
  This will give a nice performance boost especially when prefetching maps
  You need the latest version of the map server (beta 10) to do this
- You can still use the old version of the server, or this version of the client (backwards compatible)
- Increased timeout waiting for mapserver to start
- Fixed bug where Shrines would be remembered between game sessions for offline characters

## [2.5.9] - 2021-02-07 - Settings bug fix

- Fixed a bug where your settings wouldn't save to you `settings.ini`

## [2.5.8] - 2021-02-07 - Map server is now automatically started for you

- From this release going forward, place this `d2r-map.exe` in the same folder as your `d2-mapserver.exe`
- This MH will now automatically launch the server on startup.
- It will check if a server is already running by trying to connect to `baseUrl`
- If it can't connect to the server at `baseUrl` it will start `d2-mapserver.exe` for you.
- The public server has now be removed from the default configuration.
- You no longer need your own `settings.ini` file, one will be created for you if needed.

New features:

- In game history, player level now includes percentage of xp level e.g. `94.51` instead of `94`
- Tamoe Highlands now draws purple line to the Pits entrance

## [2.5.7] - 2021-02-02 - Chests and map prefetching

- Map images can now be pregenerated when running your own server
- For this to work, you need to have the latest map server (beta 9)
- If you don't update your map server then this release will still function normally
- Chests now marked on the map! (red means it's booby trapped, yellow means it's locked)
- Chests will disappear from the map after you open them
- Improved how alerts appear on the map
- Performance improvements for centered mode
- Fixed bug where if you disabled speech for an alert, it also disabled the sound effect
- Fixed Nihlithak's name

## [2.5.6] - 2021-02-02 - Visual tweaks

- Anti-aliasing now! Graphics will appear much smoother and visually appealing
- Items dropped on the ground will now have the name appear above it
- Drop shadows added to text labels
- Updated settings UI to have a more modern tab look (thanks @Mr-Sithel)
- Settings UI has had many tweaks including revamped info page
- Settings UI window position and selected tab will now be remembered
- Player square is now aligned with the plane
- Player square can now be changed to a cross (under general tab), off my default
- Other player squares now have a black thin outline to see them better
- Slight performance tweaks

## [2.5.5] - 2021-01-30 - Settings UI window

- You can now configure settings with a nice new settings UI (thanks @Sithel)
- Press `Ctrl+O` to make the window appear, closing it will just hide it
- When you make a change to the config, you must click Apply/Save
- Any settings which differ from the default will be saved to your `settings.ini`
- If you want to restore to defaults settings, download a fresh copy of `settings.ini`
- Note that this is difficult to test, so expect bugs!
- Added validation to the item filter to highlight any errors in formatting
- How each alert in `itemfilter.yaml` is interpreted will now appear in `log.txt` at startup
- When an alert is in `enabledAlerts` but the config is not found an error message will now appear
- Fixed a bug with performance as it was logging to file incorrectly

## [2.5.4] - 2021-01-29 - Item filter enhancements

- Added ability to filter if item is identified or not
  Use by adding `ignoreunidentified: true` or `ignoreidentified: true` to `itemfilter.yaml`
  If you don't specify either then it doesn't matter whether the item is identified or not
- Added ability to filter if item is ethereal or not
  Use by adding `onlyethereal: true` or `ignoreethereal: true` to `itemfilter.yaml`
  If you don't specify either then it doesn't matter whether the item is ethereal or not.
- Fixed bug where speciying 0 sockets matched against _any_ socket amount.
- Updated README with info on how to disable missiles/projectiles.

## [2.5.3] - 2021-01-27 - Advanced item filter

- You can now define your own item filter alerts!
- A file called `itemfilter.yaml` will be automatically created if you don't have one
- Refer to the contents of that file to learn how to define your own alerts
- You can define your own sound effects for a given item or group of items
- All of the existing item drop alerts are already configured in `itemfilter.yaml`
  So if you're happy with the current item alerts then you don't need to change anything.

- Note: some settings have been renamed:
  `textToSpeech=true/false` is now `allowTextToSpeech=true/false`
  `itemDropSound="file.wav"` is now `allowItemDropSounds=true/false`

## [2.5.2] - 2021-01-26 - Performance

- Massive performance improvement for centered mode (only)
- Entered centered mode with `/` hot key (configurable)
- Map drawing in centered mode should be less jittery and more consistent
- Please report any performance slowdowns as I think there's still room for improvment
- Help text screen location is calculated differently
- Fixed bug where debug mode would unexpectedly toggle when pressing ESC (thanks @tthreeoh)

## [2.5.1] - 2021-01-25 - Missiles

- Player and enemy missles now show on the map (thanks @tthreeoh!)
- Color, size, and opacity of missiles is also configurable
- You'll see cold, ice, fire etc each have their own color.
- Can be turned off with `showPlayerMissiles=false` and `showEnemyMissiles=false`

Other changes:

- The dot size of monters now scale larger when in centered mode
- Fixed bug where text to speech would cause the MH to pause while speaking
- Fixed bug where alert sound didn't play if text to speech was disabled

## [2.5.0] - 2021-01-24 - Speech to Text

- Items dropped on ground now give an audio description
  So if a 3os Archon plate drops, you will hear a text-to-speech voice saying 'Normal Archon Player 3 sockets'
- You can turn this off by adding `textToSpeech=false` in `settings.ini`
- You can adjust the volume with `textToSpeechVolume=50` as a percentage
- There is also `textToSpeechPitch=1` and `textToSpeechSpeed=1` which you can also tweak
- There's also an option to add your own sound effect, simply add `itemSoundEffect=wavfile.wav` to your `settings.ini`
  Where wavfile.wav is a wav file of your choice, located in the same folder as the Maphack
  No sound effect is included by default
- Hotkeys were broken in a previous release for some people, this has now been fixed

## [2.4.9] - 2021-01-23 - Performance improvements

- Centered map mode now performs much better
  Previously the centered map would move on the screen based on the player's game world tile position
  Since this was whole tiles the map would move in a jagged or rigid manner
  Now the MH reads partial game tiles and gives a much smoother movement.
- Player/NPC movement on the map is now much more smooth as well
- Improved code that handles map scale adjustment to work more reliably
- `showPlayerDotCenter` is now turn on by default
- Set `performanceMode` to `50ms` by default
  If you find the MH uses too much CPU then add `performanceMode=0` to `settings.ini`
- Trailing slash in baseUrl no longer causes an error
- Fixed bug when pressing Ctrl+H for help

## [2.4.8] - 2021-01-18 - Bug fixes

- Bug where the map would flash on startup _should_ be fixed
- Bug where debug logging wouldn't work is now fixed
- Bug where shrines would appear on the wrong map has been fixed
- Pressing Shift+F9 will toggle debug mode, this can help with bug finding
- Other minor tweaks

## [2.4.7] - 2021-01-18 - Base Items alerts on ground

- Good base items now get a flashing visual alert while on the ground
- You can turn this off by adding `showBaseItems=false` in `settings.ini`
- You can also change the colour of the alert with `baseItemColor=<hex color>`
- This list isn't configurable, that will likely come in a later release
- Full list of base items:
  - 4os Archon Plate
  - 3os Mage Plate
  - 4os Dusk Shroud
  - 3os Wyrmhide
  - 4os Wyrmhide
  - 3os Phase Blade
  - 4os Phase Blade
  - 5os Phase Blade
  - 3os Crystal Sword
  - 4os Crystal Sword
  - 5os Crystal Sword
  - 4os Flail
  - 5os Flail
  - 3os Bone Visage
  - 3os Circlet
  - 3os Diadem
  - 3os Coronet
  - 4os Monarch
  - 3os Akaran Targe
  - 3os Akaran Rondache
  - 3os Sacred Targe
  - 3os Sacred Rondache
  - 3os Targe
  - 3os Rondache
  - 3os Heraldic Shield
  - 4os Heraldic Shield
  - 3os Aerin Shield
  - 4os Giant Thresher
  - 4os Thresher
  - 4os Colossus Voulge
- Map cache files will now be deleted properly on startup
- Pressing `/` to make map centered will now work in chat
- New setting `showPlayerDotCenter` set to true to show play dot in center mode
- Centered mode: Units (i.e. players, mobs etc) now have their own position offset in pixels
  `centerModeXUnitoffset` and `centerModeYUnitoffset`
  This works in conjunction with `centerModeXoffset` and `centerModeYoffset`
  Adjust those 4 values to get the map and the units to align in centered mode.

## [2.4.6] - 2021-01-13 - Minor improvements

- Improved performance for map center mode
- If you want maximum performance set `performanceMode=-1` in `settings.ini`
- If that slows your PC too much, try `performanceMode=50ms`

Multi session improvements:

- Better windowed mode support, map will now attach and follow the game window
- Centered mode map will now crop at the window edge properly, especially in windowed mode
- Multi launch settings no longer needs [MultiLaunch] section header in `settings.ini` (thanks @arkx)

## [2.4.5] - 2021-01-12 - Bug fixes

- Centered map image will now be cropped at the screen boundaries
- Map will now be hidden when looking at menus such as inventory, quests etc
- Fixed bug where if you pressed TAB while map was loading it would show previously loaded map
- Fixed bug where shrines from a previous act would appear on the next act
- Fixed bug where the difficulty wasn't checked correctly allowing for invalid map server requests
- Map server connectivity errors will now show a popup error message instead of exiting silently
- IP address text now defaults to the left side of the screen
- IP text when on right side of screen has been lowered to not overwrite other text
- Default monster dot size is now larger
- Minor performance tweaks
- Improved map image caching
- Simplified default `settings.ini` file to address some confusion

## [2.4.4] - 2021-01-04 - Settings refactor

- You don't have to update your settings.ini for each new version
- Instead, all settings will have a built-in default setting
- You only need to specify a setting in `settings.ini` if you want to override the default
- You still need a `settings.ini` file, but you will no longer need to update it between versions
- Pressing `Ctrl+G` will show/hide the game history in the game menu
- This new shortcut can be changed with `historyToggleKey`
- Fixed bug where only the previous game would be listed in game history when more should show

## [2.4.3] - 2021-01-04 - Shrines stay on map

- After you first 'see' a shrine, it will stay on the map
- Shrines will also stay if you leave and return to a map
- Green line will now be drawn from the player to any quest items on the map (stones, caged barbs)
- Green line can be turned off with `showQuestLine=true/false`
- Game history list now only shows games from that session
- Can force showing of all history with `showAllHistory=true` (default is false)
- Game history now defaults to the left side of screen
- Game hitory can be moved back to the right with `textAlignment=RIGHT`
- Fixed town portal icon size when running in centered mode

## [2.4.2] - 2021-01-04 - Centre map on screen (BETA)

- You can now centre the map to work like the normal automap
- This mode is still in __BETA__, but has been improved since the last beta
- Disabled by default, press `/` to toggle between centred mode and classic/normal mode
- Known bugs with centered mode:
  - Movement is 'jagged/jittery' this is due to how Diablo 2 uses integer tiles for location
  - Some performance issues still remain on large maps
  - For extra large maps, the image will spill over onto a 2nd monitor if you have one
- Fixed from previous beta:
  - Monsters/players/shrines etc shown on centered map correctly now
  - Switching between normal and centre mode should no longer cause display artifacts
  - With perf improvements shouldn't need experimental performance mode turned on
- New settings: (ignores scale, opacity and position settings from normal mode)
  - `centerMode=true` to toggle centered mode (can be toggled with hotkey)
  - `centerModeScale=1.7` press Numpad+ and Numpad- to change as normal
  - `serverScale` this is the size of the map image (larger = slower)
  - `centerModeOpacity` is the opacity that applies only to centered mode
  - `centerModeXoffset` can force the centered map along the x axis if you have alignment issues
  - `centerModeYoffset` can force the centered map along the y axis if you have alignment issues
  - `switchMapMode=/` hot key used to toggle centered mode on/off (default= `/`)
- There are also a lot of performance improvements in general for normal map mode

## [2.4.1] - 2021-01-02 - Server IP address shows in corner of screen

- Now the server IP address will show in the corner of the screen
  - Can turn off with `showIPtext` in `settings.ini`
  - Can change font size with `textIPfontSize`
  - Can change screen position `textIPalignment` to `Left` or `Right`
- Fixed bug where occasionally player experience wasn't recorded
- Fixed bug where Glacial Caves purple line pointed to wrong exit
- Fixed bug where setting 'game history' to left side of the screen didn't work

## [2.4.0] - 2021-12-30 - Fixed game history bugs

- Fixed an issue with level and exp values not being logged correctly
- Fixed issue with extra large GameSession files
- Fixed issue with logging gained xp in hex instead of decimal
- If you encountered these, bugs you may need to edit your `GameSession.csv` file

## [2.3.9] - 2021-12-30 - Better game history

- Game history now includes player level and experience gained
- It will also load data from the `GameSessionLog.csv` to view previous sessions
- Only the last 50 game runs will display
- `GameSessionLog.csv` now includes additional fields:
  - Timestamp
  - Player starting level, player finishing level
  - Player starting experience, player finishing experience
  - Experience gained
- __NOTE__: The `GameSessionLog.csv` from the previous version is not compatible, I recommend simply deleting this file.

## [2.3.8] - 2021-12-30 - Game history

- Game history now shows in game menu rather than simply the previous game
- This will show all the games started and exited _while running the MH_
- All game sessions are appended to a file `GameSessionLog.csv`
- Turn off with `showGameHistory=true/false` in settings
- When you first open the MH, the last game name you played (if any) will show
- But any subsequent runs will append to the table as you do additional runs
- The table shows 'Character Name, Game Name, Duration'
- You can cahnge the following settings:
  - `textSectionWidth` this is the width in pixels made available for the table, increase if your screen isn't big enough
  - `textSize` this is the font size in pts
  - `textAlignment` can be either `Right` or `Left` of screen (case insensitive)

## [2.3.7] - 2021-12-17 - Charms and jewels

- Charms and jewels are now detected on the ground
- The alert colours can also be configured
  - `charmItemColor=6D6DFF`
  - `jewelItemColor=6D6DFF`
- Can now toggle each item alert on/off by type
  - `showUniqueAlerts=true`
  - `showSetItemAlerts=true`
  - `showRuneAlerts=true`
  - `showJewelAlerts=true`
  - `showCharmAlerts=true`
- Previous game name text in menu now uses Diablo font
- Other players can now show their name above their respective dot
- Other player names are turned _off_ by default
- Can be toggled in settings with `showOtherPlayerNames`
- Fixed a bug where occasionally the player unit wasn't detected

## [2.3.6] - 2021-12-15 - Fix game name

- Update only needed to fix game name
- Updated pattern for game data
- Pattern scanning worked for all except game name after game update

## [2.3.5] - 2021-12-14 - New font

- Added new Diablo font!
- Shrines text now uses new font
- Added name above bosses (in new font)
- Can now configure monster unit size in `settings.ini`
- Updated shrine types, should be more accurately marked on map
- If you find any shrines don't appear on the map, please report the map in discord

## [2.3.4] - 2021-12-13 - Offset pattern scanning

- Static offsets are now automatically calculated based on patterns
- This means when Blizzard updates D2R this MH will still work
- Shout out to @OneXDeveloper's project MapAssist for the patterns!

## [2.3.3] - 2021-12-13 - Shrines and portals

- Shrine types will now show on the map
- You have to be in range for it to show, they will not persist
- Town portals will now show on the map as well
- Red portals (such as cow level) should appear in red, normal portals in blue
- Can be turned on/off with `showShrines` and `showPortals` in `settings.ini`
- Can also configure `portalColor`, `redPortalColor`, `shrineColor` and `shrineTextSize`

## [2.3.2] - 2021-12-13 - Performance improvements

- Major refactor of how mobs/player units are drawn, which gives better performance
- Aliasing may be improved in a later release
- Colors of items on the ground is now configurable
- Experimental performance mode is still experimental (and off by default), but can be activated for additional performance

## [2.3.1] - 2021-12-09 - Bug fixes

- Fixed a bug where the MH didn't exit after closing D2R
- Debug logging has been improved, especially around memory
- Scanning for the player unit in memory has been improved
- When starting the MH any cached files will be deleted
- Experimental performance option has been implemented (off by default)
- If you want to use this experimental option, please read <https://www.autohotkey.com/docs/commands/SetBatchLines.htm>

## [2.3.0] - 2021-12-08 - Items on ground show on map

- Runes, unique items, and set items now show on the map with a flashing large dot
- Only runes Lem and above will show
- All uniques and set items on the ground will show
- You can turn this feature off with `showItems=false` in `settings.ini`
- Bug: Last game _name_ would occasionally show wrong name, this may still have issues
- Bug: Last game _time_ would occasionally be wrong, this should be resolved
- Bug where you have white screen at game menu should be fixed, but can be worked around with `showGameInfo=false`

## [2.2.9] - 2021-12-07 - Wall thickness setting and performance improvements

- You can now configure map wall thickness with `wallThickness`
- `wallThickness` can be from 1-10, default is 1.2
- Only applies to `edge` mode (which is default)
- Refactor of how memory is read, should be more efficient
- Fixed memory leak when leaving game in menu
- Downloaded map images will now be reused as cache
- GUI window optimisations, update rate should be improved
- Fixed bug where previous game name would show extra characters

If you run your own map server, you will need to update it for wallthickness to work.

## [2.2.8] - 2021-12-07 - Updated offets following D2R patch

- Updated offests following release of D2R `1.1.67358`

## [2.2.7] - 2021-12-06 - Previous game name and duration

- The name of your previous game will now display in the top right while in menus
- If you had the program running during the session you will also see the last game time
- Text will only appear on the top right of your screen
- You can turn it off with `showGameInfo` in `settings.ini`

## [2.2.6] - 2021-12-06 - More configuration options

- You can now configure:
  - Colors of immunities (useful for the vision impaired)
  - Colors of dead bodies
  - HotKeys which move the map around the screen
- Help screen updated to show correct Hotkeys and Colors
- `settings.ini` now checks the version, you will get a warning when using a different version `settings.ini`

## [2.2.5] - 2021-12-03 - Individual map sizes and positions

Map position changes:

- Now each level keeps it's own position and scale on the screen.
- You can change the scale with `Numpad+` and `Numpad-`, (you can configure different keys)
- To _move_ the map, press `Windows Key+Left` `Windows Key+Right` `Windows Key+Up` `Windows Key+Down`
- Map movement keys are not yet configurable
- Map location and scale for each map are saved in a new file `mapconfig.ini`
- The first time you run this version, a new `mapconfig.ini` file will be created with default values.
- If you have an existing `mapconfig.ini` it will not be overwritten, so you can keep your settings for future releases.
- The default values are not ideal, but in the next release I'll include better defaults (I need someone to manually configure every map)
- Normal `scale` and `leftMargin`/`topMargin` settings in `settings.ini` still work but will apply to ALL maps.  
  The individual map scale and location are relative to these values.  
  So if you set global scale `1.5` and an individual map scale is `1.2` then the actual scale is `1.5 x 1.2` (1.8).  

Other changes:

- Removed `maxWidth` setting as it didn't make sense anymore  
- Added the ability to turn off other players on the map `showOtherPlayers=true` in `settings.ini`
- Other minor tweaks for performance

## [2.2.4] - 2021-12-03 - Updated offsets

- Updated offests following patch `1.167314`

## [2.2.3] - 2021-12-02 - Show other players

<https://github.com/joffreybesos/d2r-mapview/releases/tag/v2.2.3>

- Other nearby players now show as green squares
- Fixed bug where sometimes certain monsters didn't show

## [2.2.2] - 2021-12-01 - Edge filter added to map images

- Added edge filter to map images
- Map images will now appear as walls rather than floors
  Just the walls of each map will show instead of grey walkable area
- You can revert to the old style with `edges=false` in `settings.ini`
- Made some minor improvements to Ctrl+H help screen

## [2.2.1] - 2021-11-30 - Red line from player to boss

- Red line now drawn from player to boss (nihlithak, summoner etc)
- Pressing Ctrl+H for help now gives useful help
- Using help screen to test new GDIP drawing library

## [2.2.0] - 2021-11-29 - Immunities now show on map

- Immunities now show on map
- Each monster will have a colour (or multiple colours) indicating it's immunities
- Can be turned of with `showImmunities=false` in `settings.ini`
- Mercs and other useless NPCs are now hidden from map
- Slight improvement to player offset scanning
- Removed player name from showing in logs

## [2.1.8] - 2021-11-26 - Dead monsters now show on map

- Dying and dead monsters now appear as a black dot on the map
  This is handy for cows to know which areas have been cleared
- Improved a bug where certain mobs wouldn't show on the map
  There is a still a bug where this may still happen
- Slightly improved player offset scanning

## [2.1.7] - 2021-11-24 - Game sessions now timed

- Game sessions are now timed, an entry is added to `log.txt`
  Entries look like this `STOPWATCH: Game session duration: 13.172000`
- Fixed a bug where scanning memory would sometimes return incorrect player data

## [2.1.6] - 2021-11-24 - Assignable hotkeys

- Increase/decrease map size shortcut key can now be configured
- 'Always show map' shortcut can now be configured as well
  Look for `increaseMapSizeKey`, `decreaseMapSizeKey`, and `alwaysShowKey` in `settings.ini`
- Also refactored how player offset is detected to be more robust
- Better error handling when downloading images

## [2.1.5] - 2021-11-22 - Bosses now appear on map

- Bosses such as Diablo, Baal, Summoner, Nihilthak will now appear as a red dot
- Their colour can be configured with `bossColor` in `settings.ini`
- Also fixed a bug where shrinking the map scale caused a config issue

## [2.1.4] - 2021-11-21 - Line to indicate direction to next exit

- Now there is a purple line drawn from your player location to the next exit
  So if you are on Durance of Hate Level 2, a line will be drawn to lvl 3 stairs
- A yellow line can also be drawn to the nearest waypoint (turned off by default).
- You can toggle either of above with `showWaypointLine` and `showNextExitLine` in `settings.ini`
- Fixed a bug where `alwaysShowMap` didn't save when pressing NumpadAsterisk
- Code cleanup

## [2.1.3] - 2021-11-21 - Shortcut support

- Fixed map scaling and opacity config bug
- Numpad asterix key will now toggle 'alwaysShowMap'
- Pressing Numpad * will now toggle between 'always showing the map', and 'show/hide when you press TAB'
- When 'alwaysShowMap' is turned on, the map will hide when you alt+tab out of the game

## [2.1.2] - 2021-11-21 - Better MultiLauncher support

- Multi launcher supports both D2RML and D2RMIM.
  Just set `windowTitle` in `settings.ini` for the session you want to use
  This is untested so please leave feedback on discord
- Refactor of how settings are handled

## [2.1.1] - 2021-11-20 - MultiLauncher support

- D2R Multi launcher support added
  To use you must enable in settings.ini and define your token for that session
  You must also launch this MH as admin for ML to work
  D2RML support is very much in beta, so expect bugs.
- Press Ctrl+H to see help in game now.
- Other tweaks to logging

## [2.1.0] - 2021-11-17 - Nearby monsters now appear on map

- Nearby monsters now appear on the map in real time
- Normal monsters appear as small white dots
- Unique and Champion monsters appear as larger coloured dots
- You can show/hide normal monters with `showNormalMobs` in `settings.ini`
- You can show/hide unique monters with `showUniqueMobs` in `settings.ini`
- You can change the colour of normal mobs with `normalMobColor` in `settings.ini`
- You can change the colour of unique mobs with `uniqueMobColor` in `settings.ini`
- Note: champion and unique monsters will appear the same, this will likely change later

Please monitor this release for excess CPU/memory usage. Report any bugs in discord.

## [2.0.7] - 2021-11-15 - Player position updates faster

- Player position on the map is now less laggy
- The 'hideTown' feature has been restored. Set this to true to hide maps of town.
- The feature to hide the map when alt-tabbing away from D2R has also been restored.
- Fixed issues around maps flickering and appearing when they shouldn't

## [2.0.6] - 2021-11-15 - Fixed map not showing sometimes

- Fixed a bug introduced in the last version:
- Occasionally when changing acts the map would no longer show.

## [2.0.5] - 2021-11-15 - Resize map in game

- Increase scale of map with Shift + Equals
- Decrease scale of map with Shift + Minus
- Size change will be saved to your settings.ini
- Fixed bug where map image would try to download without all the necessary data
- Timeout increased for downloading images.

## [2.0.4] - 2021-11-13 - Map scaling

- The map image can now be scaled in `settings.ini` the default is a factor of 1.1
- The size of the image is capped by the size of `maxWidth` (in pixels)

## [2.0.3] - 2021-11-13 - Fixed memory leak

- Fixed a memory leak regarding player position

## [2.0.2] - 2021-11-13 - Updated offsets for new D2R client version

Updated for the new Diablo 2 Resurrected client version 1.0.67005.
Needed new offsets.
The executable hasn't changed, but thought I should keep it simple and publish a new release.

## [2.0.1] - 2021-11-11 - Player location tracking

- Map now shows the current play position with a bright green dot!
- Map now only show/hides with the normal automap (TAB to toggle) rather than always displayed
- In `settings.ini` `alwaysShowMap` can be set to true to ignore the above feature
- Refactored code to run more efficiently
- Player position and rendered on separate GDI GUI layer for better performance
- Maps now rely on their native sizing with a maximum screen width rather than hard width
- In `settings.ini` - `width` is replaced with `maxWidth` so small maps aren't overly large
- This is a major rector so expect a few issues, if you have problems, 1.2.7 will still work.

## [1.2.7] - 2021-11-08 - Hiding town maps now configurable

- Hiding of town maps can now be configured in `settings.ini` with `hideTown=true|false`

## [1.2.6] - 2021-11-07 - Town map no longer shown

- Town maps will now be hidden

## [1.2.5] - 2021-11-06 - Added loading text

- 'Loading' text now shown in place of map while map is downloading
- If map fails to download an overlayed error message will be shown
- Map will now hide when you alt-tab out of the game

## [1.2.4] - 2021-11-06 - Updated offset for new client

- Settings.ini updated with new offset for client v1.0.66878

## [1.2.3] - 2021-11-04 - Width adjustment fixed

- Fixed a bug where changing the width in settings.ini didn't work

## [1.2.2] - 2021-11-02 - Updated logging

- Logging improved, you can now turn debug logging on in settings.ini
Simply change debug=false to debug=true

## [1.2.0] - 2021-11-02 - Difficulty is read

- Difficulty is now read and used correctly

## [1.1.1] - 2021-11-02 - Minor improvements

- No longer exits sometimes when changing acts
- Map will no longer show when at menu
- Other minor optimisations

## [1.1.0] - 2021-10-28 - Better map drawing

- Better map alias smoothing
- Map is now drawn using Gdi.ahk, allows for better smoothing and performance
- Can now set position of map on screen in `settings.ini`

## [1.0.1] - 2021-10-23

- Fixed map aspect ratio to stay in proportion
- Map width can now be configured in `settings.ini`

## [1.0.0] - 2021-10-22 - Initial release

- Intial release
