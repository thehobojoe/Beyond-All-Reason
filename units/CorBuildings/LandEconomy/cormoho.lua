return {
	cormoho = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 2048,
		energycost = 8100,
		metalcost = 640,
		buildingmask = 0,
		buildpic = "CORMOHO.DDS",
		buildtime = 14100,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "79 37 79",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energyupkeep = 20,
		explodeas = "largeBuildingexplosiongeneric",
		extractsmetal = 0.004,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 3900,
		maxslope = 30,
		maxwaterdepth = 20,
		metalstorage = 600,
		objectname = "Units/CORMOHO.s3o",
		onoffable = true,
		script = "Units/CORMOHO.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 273,
		yardmap = "h cbbbbbbc bssssssb bsssossb bsobbssb bssbbosb bssosssb bssssssb cbbbbbbc",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cormoho_aoplane.dds",
			buildinggrounddecalsizey = 7.6,
			buildinggrounddecalsizex = 7.6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'metal',
			cvbuildable = true,
			metal_extractor = 4,
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landeconomy",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 0.0263531005859 -0.0",
				collisionvolumescales = "85.8415527344 30.0151062012 74.3409423828",
				collisionvolumetype = "Box",
				damage = 2100,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 20,
				metal = 318,
				object = "Units/cormoho_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1050,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 137,
				object = "Units/cor5X5A.s3o",
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
			activate = "mohorun2",
			canceldestruct = "cancel2",
			deactivate = "mohooff2",
			underattack = "warning1",
			working = "mohorun2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "twractv3",
			},
			select = {
				[1] = "mohoon2",
			},
		},
	},
}
