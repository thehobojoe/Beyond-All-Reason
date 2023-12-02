return {
	armuwms = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 8192,
		energycost = 1200,
		metalcost = 400,
		buildpic = "ARMUWMS.DDS",
		buildtime = 3750,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE UNDERWATER EMPABLE",
		corpse = "DEAD",
		explodeas = "largeBuildingexplosiongeneric-uw",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		health = 3600,
		maxslope = 20,
		metalstorage = 3000,
		minwaterdepth = 31,
		objectname = "Units/ARMUWMS.s3o",
		script = "Units/ARMUWMS.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd-uw",
		sightdistance = 182,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armuwms_aoplane.dds",
			buildinggrounddecalsizey = 3.6,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'metal',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/seaeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 0.0 0.0956878662109",
				collisionvolumescales = "62.4999694824 41.0 75.6147460938",
				collisionvolumetype = "Box",
				damage = 1950,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 234,
				object = "Units/armuwms_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 975,
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 94,
				object = "Units/arm4X4B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
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
				[1] = "stormtl1",
			},
		},
	},
}
