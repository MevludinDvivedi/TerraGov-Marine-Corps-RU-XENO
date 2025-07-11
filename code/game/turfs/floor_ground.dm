/**********************Planet**************************/

/turf/open/floor/plating/ground //Basic groundmap turf parent
	name = "ground dirt"
	icon = 'icons/turf/ground_map.dmi'
	icon_state = "desert"
	shoefootstep = FOOTSTEP_DIRT
	barefootstep = FOOTSTEP_DIRT
	mediumxenofootstep = FOOTSTEP_DIRT
	minimap_color = MINIMAP_DIRT

/turf/open/floor/plating/ground/broken_states()
	return icon_state

/turf/open/floor/plating/ground/burnt_states()
	return icon_state

/turf/open/floor/plating/ground/fire_act(burn_level)
	return

/turf/open/floor/plating/ground/dirt
	name = "dirt"
	icon_state = "desert"
	shoefootstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	mediumxenofootstep = FOOTSTEP_SAND
	icon_variants = 4

/turf/open/floor/plating/ground/dirt/normal_states()
	if((icon_variants < 2) || !prob(6))
		return initial(icon_state)
	return "[initial(icon_state)]_[rand(1, icon_variants)]"

/turf/open/floor/plating/ground/dirt/dug
	icon_variants = 1
	icon_state = "desert_dug"

/turf/open/floor/plating/ground/dirt/typezero
	icon_variants = 1
	icon_state = "desert_1"

/turf/open/floor/plating/ground/dirt/typeone
	icon_variants = 1
	icon_state = "desert_2"

/turf/open/floor/plating/ground/dirt/typetwo
	icon_variants = 1
	icon_state = "desert_3"

/turf/open/floor/plating/ground/dirt/typethree
	icon_variants = 1
	icon_state = "desert_4"

/turf/open/floor/plating/ground/dirt_desert
	name = "desert"
	icon_state = "desert_alt"
	icon_variants = 2

/turf/open/floor/plating/ground/dirtgrassborder
	name = "grass"
	icon_state = "grassdirt_edge"
	smoothing_groups = list(SMOOTH_GROUP_JUNGLE_FLOOR)

/turf/open/floor/plating/ground/dirtgrassborder/corner
	icon_state = "grassdirt_corner"

/turf/open/floor/plating/ground/dirtgrassborder/corner2
	icon_state = "grassdirt_corner2"

/turf/open/floor/plating/ground/dirt_alt
	name = "dirt"
	icon = 'icons/turf/dirt.dmi'
	icon_state = "gyellow"

/turf/open/floor/plating/ground/dirt_alt/random/Initialize(mapload)
	. = ..()
	dir = pick(GLOB.alldirs)

/turf/open/floor/plating/ground/dirt2
	name = "dirt"
	icon_state = "dirt"

/turf/open/floor/plating/ground/dirtgrassborder2
	name = "grass"
	icon_state = "grassdirt2_edge"
	smoothing_groups = list(SMOOTH_GROUP_JUNGLE_FLOOR)

/turf/open/floor/plating/ground/dirtgrassborder2/corner
	icon_state = "grassdirt2_corner"

/turf/open/floor/plating/ground/dirtgrassborder2/corner2
	icon_state = "grassdirt2_corner2"

/turf/open/floor/plating/ground/dirtgrassborder2/autosmooth //jungle to dirt
	icon = 'icons/turf/floors/jungle-dirt-border.dmi'
	icon_state = "jungle-border-icon"
	base_icon_state = "jungle-border"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_JUNGLE_FLOOR)
	canSmoothWith = list(
		SMOOTH_GROUP_JUNGLE_FLOOR,
		SMOOTH_GROUP_ASTEROID_WARNING,
		SMOOTH_GROUP_SURVIVAL_TITANIUM_WALLS,
		SMOOTH_GROUP_MINERAL_STRUCTURES,
		SMOOTH_GROUP_WINDOW_FULLTILE,
		SMOOTH_GROUP_FLORA,
		SMOOTH_GROUP_WINDOW_FRAME,
	)

/turf/open/floor/plating/ground/dirtgrassborder/autosmooth
	icon = 'icons/turf/floors/jungle-border.dmi'
	icon_state = "jungle-border-icon"
	base_icon_state = "jungle-border"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_JUNGLE_FLOOR)
	canSmoothWith = list(
		SMOOTH_GROUP_JUNGLE_FLOOR,
		SMOOTH_GROUP_ASTEROID_WARNING,
		SMOOTH_GROUP_SURVIVAL_TITANIUM_WALLS,
		SMOOTH_GROUP_MINERAL_STRUCTURES,
		SMOOTH_GROUP_WINDOW_FULLTILE,
		SMOOTH_GROUP_FLORA,
		SMOOTH_GROUP_WINDOW_FRAME,
	)

/turf/open/floor/plating/ground/dirtgrassborder/autosmooth/buildable

/turf/open/ground/grass
	name = "grass"
	icon_state = "grass1"
	shoefootstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS
	mediumxenofootstep = FOOTSTEP_GRASS
	smoothing_groups = list(SMOOTH_GROUP_JUNGLE_FLOOR)
	minimap_color = MINIMAP_AREA_JUNGLE

/turf/open/ground/grass/grass2
	icon_state = "grass2"

/turf/open/ground/grass/grass3
	icon_state = "grass3"

/turf/open/ground/grass/grassalt
	icon_state = "dgrass"
	icon_variants = 5

/turf/open/ground/grass/grassalt/tall
	icon_state = "fullgrass"
	icon_variants = 5

/turf/open/ground/grass/weedable
	name = "soft grass"

/turf/open/ground/grass/weedable/patch
	icon = 'icons/turf/floors.dmi'
	icon_state = "grass"
	icon_variants = 3

/turf/open/ground/grass/weedable/patch/grassyellow
	color = "#ffb682"

// Big Red

/turf/open/floor/plating/ground/mars
	icon = 'icons/turf/bigred.dmi'
	icon_state = "mars_sand"
	mediumxenofootstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	shoefootstep = FOOTSTEP_SAND
	minimap_color = MINIMAP_MARS_DIRT

/turf/open/floor/plating/ground/mars/random/cave
	name = "cave"
	icon_state = "mars_cave"
	smoothing_groups = list(SMOOTH_GROUP_SAND)

/turf/open/floor/plating/ground/mars/random/cave/darker
	color = "#948a7c"

/turf/open/floor/plating/ground/mars/random/cave/rock
	name = "cave"
	icon_state = "mars_cave_rock"

/turf/open/floor/plating/ground/mars/random/dirt
	name = "dirt"
	icon_state = "mars_dirt"
	smoothing_groups = list(SMOOTH_GROUP_RED_DIRT, SMOOTH_GROUP_OPEN_FLOOR)

/turf/open/floor/plating/ground/mars/random/sand
	name = "sand"
	icon_state = "mars_sand"

/turf/open/floor/plating/ground/mars/random/Initialize(mapload)
	. = ..()
	dir = pick(GLOB.alldirs)

/turf/open/floor/plating/ground/mars/dirttosand
	name = "sand"
	icon_state = "mars_dirt_to_sand"
	smoothing_groups = list(SMOOTH_GROUP_RED_DIRT, SMOOTH_GROUP_OPEN_FLOOR)

/turf/open/floor/plating/ground/mars/cavetodirt
	name = "cave"
	icon_state = "mars_cave_to_dirt"
	smoothing_groups = list(SMOOTH_GROUP_RED_DIRT)

/turf/open/floor/plating/ground/mars/dirttosand/autosmooth
	icon = 'icons/turf/floors/red-dirt.dmi'
	icon_state = "red-dirt-icon"
	base_icon_state = "red-dirt"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_RED_DIRT)
	canSmoothWith = list(
		SMOOTH_GROUP_RED_DIRT,
		SMOOTH_GROUP_ASTEROID_WARNING,
		SMOOTH_GROUP_SURVIVAL_TITANIUM_WALLS,
		SMOOTH_GROUP_MINERAL_STRUCTURES,
		SMOOTH_GROUP_WINDOW_FULLTILE,
		SMOOTH_GROUP_WINDOW_FRAME,
		SMOOTH_GROUP_ASPHALT,
	)

/turf/open/floor/plating/ground/mars/alt
	icon = 'icons/turf/floors.dmi'
	icon_state = "mars1"
	icon_variants = 5

/turf/open/floor/plating/ground/mars/dunes
	icon = 'icons/turf/floors.dmi'
	icon_state = "sand"

//Ice Colony grounds

//Ice Floor
/turf/open/floor/plating/ground/ice
	name = "ice floor"
	icon = 'icons/turf/ice.dmi'
	icon_state = "ice_floor"
	shoefootstep = FOOTSTEP_ICE
	barefootstep = FOOTSTEP_ICE
	mediumxenofootstep = FOOTSTEP_ICE
	minimap_color = MINIMAP_ICE

//Randomize ice floor sprite
/turf/open/floor/plating/ground/ice/Initialize(mapload)
	. = ..()
	setDir(pick(NORTH,SOUTH,EAST,WEST,NORTHEAST,NORTHWEST,SOUTHEAST,SOUTHWEST))

/turf/open/floor/plating/ground/ice/get_dirt_type()
	return NO_DIRT

// Colony tiles
/turf/open/floor/plating/ground/concrete
	name = "concrete"
	icon = 'icons/turf/concrete.dmi'
	icon_state = "concrete0"
	mediumxenofootstep = FOOTSTEP_CONCRETE
	barefootstep = FOOTSTEP_CONCRETE
	shoefootstep = FOOTSTEP_CONCRETE
	minimap_color = MINIMAP_AREA_COLONY

/turf/open/floor/plating/ground/concrete/get_dirt_type()
	return NO_DIRT

/turf/open/floor/plating/ground/concrete/lines
	icon_state = "concrete_lines"

/turf/open/floor/plating/ground/concrete/edge
	icon_state = "concrete_edge"

//Desert Map

/turf/open/floor/plating/ground/desertdam //Basic groundmap turf parent
	name = "desert"
	icon = 'icons/turf/desertdam_map.dmi'
	icon_state = "desert0"
	shoefootstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	mediumxenofootstep = FOOTSTEP_SAND

/turf/open/floor/plating/ground/desertdam/grate //for spanning river
	name = "grate"
	icon = 'icons/turf/catwalks.dmi'
	icon_state = "catwalk-159"
	shoefootstep = FOOTSTEP_CATWALK
	barefootstep = FOOTSTEP_CATWALK
	mediumxenofootstep = FOOTSTEP_CATWALK

/turf/open/floor/plating/ground/desertdam/grate/alternate
	icon_state = "catwalk-255"

//desert floor
/turf/open/floor/plating/ground/desertdam/desert
	name = "desert"
	icon_state = "desert"
	icon_variants = 8

//asphalt road
/turf/open/floor/plating/ground/desertdam/asphalt
	name = "asphalt"
	icon = 'icons/turf/asphalt.dmi'
	icon_state = "sunbleached_asphalt"
	shoefootstep = FOOTSTEP_CONCRETE
	barefootstep = FOOTSTEP_CONCRETE
	mediumxenofootstep = FOOTSTEP_CONCRETE
	smoothing_groups = list(SMOOTH_GROUP_ASPHALT)

/turf/open/floor/plating/ground/desertdam/asphalt/get_dirt_type()
	return NO_DIRT

/turf/open/floor/plating/ground/desertdam/asphalt/cement
	name = "concrete"
	icon_state = "cement5"

/turf/open/floor/plating/ground/desertdam/asphalt/cement_sunbleached
	name = "concrete"
	icon_state = "cement_sunbleached5"

/turf/open/floor/plating/ground/desertdam/asphalt/twoside
	name = "asphalt"
	icon_state = "cement_sunbleached_twoside"

/turf/open/floor/plating/ground/desertdam/asphalt/threeside
	name = "asphalt"
	icon_state = "cement_sunbleached_threeside"

/turf/open/floor/plating/ground/desertdam/asphalt/edge
	name = "asphalt"
	icon_state = "cement_sunbleached_edge"

/turf/open/floor/plating/ground/desertdam/asphalt/open
	name = "asphalt"
	icon_state = "cement_sunbleached_open"

/turf/open/floor/plating/ground/desertdam/asphalt/tile
	name = "asphalt"
	icon_state = "tile"

/turf/open/floor/plating/ground/desertdam/asphalt/edge/regular
	name = "asphalt"
	icon_state = "cement_edge"

/turf/open/floor/plating/ground/desertdam/asphalt/twoside/regular
	name = "asphalt"
	icon_state = "cement_twoside"

/turf/open/floor/plating/ground/desertdam/asphalt/threeside/regular
	name = "asphalt"
	icon_state = "cement_threeside"

/turf/open/floor/plating/ground/desertdam/asphalt/autosmooth
	name = "concrete"
	icon = 'icons/turf/floors/asphalt-regular.dmi'
	icon_state = "asphalt-icon"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_ASPHALT)
	canSmoothWith = list(
		SMOOTH_GROUP_ASPHALT,
	)
	base_icon_state = "asphalt-regular"

/turf/open/floor/plating/ground/desertdam/asphalt/autosmooth/alt
	icon = 'icons/turf/floors/asphalt-sunbleached.dmi'
	base_icon_state = "asphalt-sunbleached"

//CAVE
/turf/open/floor/plating/ground/desertdam/cave
	name = "cave"
	icon_state = "outer_cave_floor"
	shoefootstep = FOOTSTEP_DIRT
	barefootstep = FOOTSTEP_DIRT
	mediumxenofootstep = FOOTSTEP_DIRT

//desert floor to outer cave floor transition
/turf/open/floor/plating/ground/desertdam/cave/desert_into_outer_cave_floor
	icon_state = "outer_cave_transition"

//outer cave floor
/turf/open/floor/plating/ground/desertdam/cave/outer_cave_floor
	icon_state = "outer_cave_floor"

//outer to inner cave floor transition
/turf/open/floor/plating/ground/desertdam/cave/outer_cave_to_inner_cave
	icon_state = "outer_cave_to_inner"

/turf/open/floor/plating/ground/desertdam/cave/outer_cave_to_inner_cave/alt
	icon_state = "outer_cave_to_inner2"

//inner cave floor
/turf/open/floor/plating/ground/desertdam/cave/inner_cave_floor
	name = "cave"
	icon_state = "inner_cave_full"
	icon_variants = 2

/turf/open/floor/plating/ground/desertdam/cave/inner_cave/corners
	name = "cave"
	icon_state = "inner_cavecorners"

/turf/open/floor/plating/ground/desertdam/cave/inner_cave/sides
	name = "cave"
	icon_state = "inner_cavesides"

/turf/open/floor/plating/ground/drought
	name = "desert"
	icon = 'icons/turf/desert.dmi'
	icon_state = "desert"
	mediumxenofootstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	shoefootstep = FOOTSTEP_SAND
	icon_variants = 3

/turf/open/floor/plating/ground/drought/alt
	icon_state = "desert_alt"

/turf/open/floor/plating/ground/drought/cave
	name = "cave"
	icon = 'icons/turf/cave_drought.dmi'
	icon_state = "cave"
	mediumxenofootstep = FOOTSTEP_GRAVEL
	barefootstep = FOOTSTEP_GRAVEL
	shoefootstep = FOOTSTEP_GRAVEL
	icon_variants = 8

/turf/open/floor/plating/ground/drought/cave/deep
	icon = 'icons/turf/cave.dmi'
	icon_variants = 7
	mediumxenofootstep = FOOTSTEP_CONCRETE
	barefootstep = FOOTSTEP_CONCRETE
	shoefootstep = FOOTSTEP_CONCRETE

///These are entirely for decoration purposes, do not make them functional, it will cause salt.
/turf/open/floor/chasm
	name = "chasm"
	desc = "Watch your step."
	icon = 'icons/turf/floors/chasms.dmi'
	icon_state = "chasms-0"
	base_icon_state = "chasms"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_TURF_CHASM)
	canSmoothWith = list(SMOOTH_GROUP_TURF_CHASM)
	density = TRUE //keep people from stepping on it

/turf/open/floor/chasm/junglechasm
	icon = 'icons/turf/floors/junglechasm.dmi'
	icon_state = "junglechasm-0"
	base_icon_state = "junglechasm"

/turf/open/floor/plating/rivergrate
	name = "grate"
	icon = 'icons/turf/desertdam_map.dmi'
	icon_state = "shallow_grate"
	mediumxenofootstep = FOOTSTEP_CATWALK
	barefootstep = FOOTSTEP_CATWALK
	shoefootstep = FOOTSTEP_CATWALK

// LAVA

/turf/open/floor/plating/ground/lavaland
	icon = 'icons/turf/lava.dmi'
	plane = FLOOR_PLANE
	baseturfs = /turf/open/floor/plating/ground/lavaland/basalt

/turf/open/floor/plating/ground/lavaland/basalt
	name = "basalt"
	icon_state = "basalt"
	shoefootstep = FOOTSTEP_GRAVEL
	barefootstep = FOOTSTEP_GRAVEL
	mediumxenofootstep = FOOTSTEP_GRAVEL

/turf/open/floor/plating/ground/lavaland/basalt/cave
	name = "cave"
	icon_state = "basalt_to_cave"

/turf/open/floor/plating/ground/lavaland/basalt/cave/corner
	name = "cave"
	icon_state = "basalt_to_cave_corner"

/turf/open/floor/plating/ground/lavaland/basalt/cave/autosmooth
	icon = 'icons/turf/floors/cave-basalt.dmi'
	icon_state = "cave-basalt-icon"
	base_icon_state = "cave-basalt"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_BASALT)
	canSmoothWith = list(
		SMOOTH_GROUP_BASALT,
		SMOOTH_GROUP_OPEN_FLOOR,
		SMOOTH_GROUP_MINERAL_STRUCTURES,
		SMOOTH_GROUP_WINDOW_FULLTILE,
		SMOOTH_GROUP_SURVIVAL_TITANIUM_WALLS,
		SMOOTH_GROUP_AIRLOCK,
		SMOOTH_GROUP_WINDOW_FRAME,
	)

/turf/open/floor/plating/ground/lavaland/basalt/dirt
	name = "dirt"
	icon_state = "basalt_to_dirt"

/turf/open/floor/plating/ground/lavaland/basalt/dirt/corner
	name = "dirt"
	icon_state = "basalt_to_dirt_corner"

/turf/open/floor/plating/ground/lavaland/basalt/dirt/autosmoothing
	icon = 'icons/turf/floors/basalt-dirt.dmi'
	icon_state = "basalt-dirt-icon"
	base_icon_state = "basalt-dirt"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_BASALT)
	canSmoothWith = list(
		SMOOTH_GROUP_BASALT,
		SMOOTH_GROUP_OPEN_FLOOR,
		SMOOTH_GROUP_MINERAL_STRUCTURES,
		SMOOTH_GROUP_WINDOW_FULLTILE,
		SMOOTH_GROUP_SURVIVAL_TITANIUM_WALLS,
		SMOOTH_GROUP_AIRLOCK,
		SMOOTH_GROUP_WINDOW_FRAME,
	)

/turf/open/floor/plating/ground/lavaland/basalt/glowing
	icon_state = "basaltglow"
	light_system = STATIC_LIGHT
	light_range = 4
	light_power = 0.75
	light_color = LIGHT_COLOR_LAVA

/turf/open/floor/plating/ground/lavaland/catwalk
	name = "catwalk"
	icon_state = "lavacatwalk"
	light_system = STATIC_LIGHT
	light_range = 1.4
	light_power = 2
	light_color = LIGHT_COLOR_LAVA
	shoefootstep = FOOTSTEP_CATWALK
	barefootstep = FOOTSTEP_CATWALK
	mediumxenofootstep = FOOTSTEP_CATWALK

/turf/open/floor/plating/ground/lavaland/catwalk/built
	var/deconstructing = FALSE

/turf/open/floor/plating/ground/lavaland/catwalk/built/attack_alien(mob/living/carbon/xenomorph/xeno_attacker, damage_amount = xeno_attacker.xeno_caste.melee_damage, damage_type = BRUTE, damage_flag = MELEE, effects = TRUE, armor_penetration = 0, isrightclick = FALSE)
    if(xeno_attacker.status_flags & INCORPOREAL)
        return
    if(xeno_attacker.a_intent != INTENT_HARM)
        return
    if(deconstructing)
        return
    deconstructing = TRUE
    if(!do_after(xeno_attacker, 10 SECONDS, NONE, src, BUSY_ICON_BUILD))
        deconstructing = FALSE
        return
    deconstructing = FALSE
    playsound(src, 'sound/weapons/genhit.ogg', 50, TRUE)
    var/turf/current_turf = get_turf(src)
    if(current_turf)
        current_turf.turf_flags |= AI_BLOCKED
    ChangeTurf(/turf/open/liquid/lava)