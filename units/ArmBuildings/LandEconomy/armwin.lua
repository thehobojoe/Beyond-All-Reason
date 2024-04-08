return {
	armwin = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		energycost = 175,
		metalcost = 37,
		buildpic = "ARMWIN.DDS",
		buildtime = 1600,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "34 87 34",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energystorage = 0.5,
		explodeas = "windboom",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 196,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/ARMWIN.s3o",
		script = "Units/ARMWIN.cob",
		seismicsignature = 0,
		selfdestructas = "windboom",
		sightdistance = 273,
		windgenerator = 25,
		yardmap = "ooo ooo ooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armwin_aoplane.dds",
			buildinggrounddecalsizey = 5,
			buildinggrounddecalsizex = 5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'energy',
			model_author = "Cremuss",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/landeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.407234191895 -7.26560776367 -4.28938293457",
				collisionvolumescales = "41.3442230225 45.3115844727 37.0443725586",
				collisionvolumetype = "Box",
				damage = 106,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 40,
				hitdensity = 100,
				metal = 23,
				object = "Units/armwin_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 53,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 9,
				object = "Units/arm4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
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
				[1] = "windgen",
			},
		},
	},
}
