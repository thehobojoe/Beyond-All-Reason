return {
	armavp = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 1024,
		energycost = 14000,
		metalcost = 2900,
		builder = true,
		buildpic = "ARMAVP.DDS",
		buildtime = 18000,
		canmove = true,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -13 2",
		collisionvolumescales = "110 70 110",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 200,
		explodeas = "largeBuildingExplosionGeneric",
		footprintx = 7,
		footprintz = 6,
		idleautoheal = 5,
		idletime = 1800,
		levelground = false,
		health = 4750,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 200,
		objectname = "Units/ARMAVP.s3o",
		--radardistance = 50,
		script = "Units/ARMAVP.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 283.39999,
		terraformspeed = 1000,
		workertime = 300,
		yardmap = "ooooooo ooooooo ooooooo occccco occccco occccco",
		buildoptions = {
			[1] = "armacv",
			[2] = "armconsul",
			[3] = "armcroc",
			[4] = "armlatnk",
			[5] = "armbull",
			[6] = "armgremlin",
			[7] = "armmart",
			[8] = "armmerl",
			[9] = "armmanni",
			[10] = "armyork",
			[11] = "armseer",
			[12] = "armjam",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armavp_aoplane.dds",
			buildinggrounddecalsizey = 8.35,
			buildinggrounddecalsizex = 8.35,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'buildert2',
			model_author = "Cremuss",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbuildings/landfactories",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -1 2",
				collisionvolumescales = "96 70 96",
				collisionvolumetype = "Box",
				damage = 2578,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 20,
				hitdensity = 100,
				metal = 1754,
				object = "Units/armavp_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1289,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 877,
				object = "Units/arm6X6D.s3o",
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
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pvehactv",
			},
		},
	},
}
