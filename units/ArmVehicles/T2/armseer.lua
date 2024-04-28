return {
	armseer = {
		maxacc = 0.04878,
		activatewhenbuilt = true,
		maxdec = 0.09757,
		energycost = 2000,
		metalcost = 125,
		buildpic = "ARMSEER.DDS",
		buildtime = 6200,
		canattack = false,
		canmove = true,
		category = "ALL TANK MOBILE NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -4 0",
		collisionvolumescales = "28 30 34",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 980,
		maxslope = 16,
		speed = 57.0,
		maxwaterdepth = 0,
		movementclass = "TANK3",
		movestate = 0,
		objectname = "Units/ARMSEER.s3o",
		onoffable = false,
		radardistance = 2300,
		script = "Units/ARMSEER.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 900,
		trackoffset = 5,
		trackstrength = 5,
		tracktype = "armseer_tracks",
		trackwidth = 24,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.33584,
		turnrate = 605,
		customparams = {
			unitgroup = 'util',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armvehicles/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -4 0",
				collisionvolumescales = "28 30 34",
				collisionvolumetype = "Box",
				damage = 700,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 80,
				object = "Units/armseer_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 48,
				object = "Units/arm3X3E.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:radarpulse_t2",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "varmmove",
			},
			select = {
				[1] = "avradsel",
			},
		},
	},
}
