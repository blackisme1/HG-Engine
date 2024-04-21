.nds
.thumb

.open "base/overlay/overlay_0012.bin", 0x00000000

.org 0x00034AF0
    .skip 4
    .halfword MOVE_EARTH_POWER // Plains
    .halfword MOVE_EARTH_POWER // Sand (Rock Smash in Cianwood City)
    .halfword MOVE_ENERGY_BALL // Grass (Tall Grass)
    .halfword MOVE_ENERGY_BALL // Unused (???)
    .halfword MOVE_POWER_GEM // Caves
    .halfword MOVE_POWER_GEM // Rock (Route 41/42 Trainers, Ruins of Alph Rock Smash)
    .halfword MOVE_BLIZZARD // Snow (Mt Silver)
    .halfword MOVE_HYDRO_PUMP // Water (Any Surf)
    .halfword MOVE_ICE_BEAM // Ice (Ice Path)
    .halfword MOVE_TRI_ATTACK // Building, No Specific Tile
    .halfword MOVE_MUD_BOMB // Unused (Safari Zone Marsh Tiles)
    .halfword MOVE_AIR_SLASH // Unused (???)
    .halfword MOVE_TRI_ATTACK // Link Battle
.close

