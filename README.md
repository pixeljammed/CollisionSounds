# CollisionSounds
A roblox module/script in Lua which makes objects make material-specific sounds when they hit or collide with something.
Primitive right now. May be updated.

-----
## Features
### Current
- Plays appropriate sound corresponding to material of parent object. (ex: brick plays brick noises).
- Support for all materials, can add new materials, change sounds...
- Customisable particles emitted from object on impact.
- Plays designated "soft" and "hard" impact sounds depending on impact speed.
- Calculates volume + loudness of sound based on speed which it hits something.
- Plays [source engine sounds](https://github.com/sourcesounds) by default.
- Per-object specific material override (ex: cartoon spring noises for a bouncy ball).
- OPTIONAL: Auto delete script when object goes into physics sleep.

### Planned
- Proper physics-based sound volume + loudness calculations.
- Use concept of kinetic energy (velocity) loss for calculations.
- Global way of tracking which unanchored objects are in motion + applying script only to them.
- "scraping" sound effects.
- Support Roblox's new MaterialVarient systems + property.
- Particles look prettier + shown from impact point.
- Roblox official physics API integration.

-----
## Installation
1. Move HitSounds (ReplicatedStorage.rbxm) to ReplicatedStorage.
2. Create a folder including the parts (subfolders can exist inside of this!) you want the script to be applied to.
3. Unanchor everything inside of this folder (You can do that by RIGHT CLICK -> SELECT CHILDREN and then unticking the Anchored property until it's blank).
4. Move HitSoundHandler.rbxm into that folder.
   
(NOTE: that script will constantly check the velocity of all parts inside that folder, including subfolders, descendants, etc, so long as they return true to IsABasePart(), which I have no idea how performant it is) 
(you can just parent the script to any single object you would like it to be inside of. you will have to delete the velocity check if you wish to use it like this)

I plan to update this so it is just globally managed in the future.
If you want it to be applied to every object in your game just parent the HitSoundHandler to Workspace.


-----
## Credits
- Valve Software: for the Source engine sound effects.
- https://github.com/sourcesounds.
- Some random code I found on the toolbox which was terrible and sucked + I refactored.
- Me: For being a handsome programmer.
