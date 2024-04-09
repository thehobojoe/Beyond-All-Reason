return {
	corapt3 = {
		maxacc = 0,
		maxdec = 0,
		energycost = 60000,
		metalcost = 8500,
		builder = true,
		buildpic = "CORAP.DDS",
		buildtime = 72400,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -14 -23",
		collisionvolumescales = "220 66 100",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 1000,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 16,
		footprintz = 12,
		idleautoheal = 5,
		idletime = 1800,
		sightemitheight = 40,
		health = 11100,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 1000,
		objectname = "Units/scavbuildings/CORAPT3.s3o",
		radardistance = 510,
		radaremitheight = 40,
		script = "Units/scavbuildings/CORAPT3.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingexplosiongenericSelfd",
		sightdistance = 273,
		terraformspeed = 500,
		workertime = 600,
		yardmap = "oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo oooooooooooooooo ",
		buildoptions = {
			"coraca",
			"corcrwt4",
			"corfblackhyt4",
			"cordronecarryair",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corapt3_aoplane.dds",
			buildinggrounddecalsizey = 15,
			buildinggrounddecalsizex = 19,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'buildert3',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/landfactories",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -14 -23",
				collisionvolumescales = "220 66 100",
				collisionvolumetype = "Box",
				damage = 11550,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 14,
				footprintz = 12,
				height = 20,
				metal = 5400,
				object = "Units/scavbuildings/corapt3_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 578,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				metal = 2160,
				object = "Units/cor6X6B.s3o",
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
				[1] = "pairactv",
			},
		},
	},
}
