return {
	armckfus = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 4096,
		energycost = 26000,
		metalcost = 4700,
		buildpic = "ARMCKFUS.DDS",
		buildtime = 84400,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		cloakcost = 100,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "97 42 51",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energymake = 1050,
		energystorage = 2500,
		explodeas = "fusionExplosion",
		footprintx = 6,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
    	--initcloaked = true,
		health = 4450,
		maxslope = 10,
		maxwaterdepth = 0,
		mincloakdistance = 100,
		objectname = "Units/ARMCKFUS.s3o",
		script = "Units/ARMCKFUS.cob",
		seismicsignature = 0,
		selfdestructas = "fusionExplosionSelfd",
		sightdistance = 273,
		yardmap = "oooooo oooooo oooooo oooooo oooooo",
		customparams = {
			unitgroup = 'energy',
			model_author = "Cremuss",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/landeconomy",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.82577514648 0.0764762817383 -0.28246307373",
				collisionvolumescales = "83.349395752 31.1307525635 52.6837921143",
				collisionvolumetype = "Box",
				damage = 2880,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 4,
				height = 40,
				metal = 3100,
				object = "Units/armckfus_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1440,
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 4,
				metal = 1240,
				object = "Units/arm4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "fusion1",
			},
		},
	},
}
