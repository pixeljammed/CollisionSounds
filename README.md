# CollisionSounds
A roblox module/script in Lua which makes objects make material-specific sounds when they hit or collide with something.
Primitive right now. Will be updated. Repo is empty right now and releases will be deployed too.

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
## Credits
- Valve Software: for the Source engine sound effects.
- https://github.com/sourcesounds.
- Me: For being a handsome programmer.
