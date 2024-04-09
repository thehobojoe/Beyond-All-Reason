return {
	cormuskrat = {
		maxacc = 0.01722,
		maxdec = 0.10332,
		energycost = 3500,
		metalcost = 170,
		builddistance = 110,
		builder = true,
		buildpic = "CORMUSKRAT.DDS",
		buildtime = 6860,
		canmove = true,
		category = "ALL TANK PHIB NOTSUB  NOWEAPON NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 -1 1",
		collisionvolumescales = "22 16 41",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energymake = 8,
		explodeas = "mediumexplosiongeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 1110,
		maxslope = 16,
		speed = 40.5,
		maxwaterdepth = 255,
		movementclass = "ATANK3",
		objectname = "Units/CORMUSKRAT.s3o",
		script = "Units/CORMUSKRAT.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-phib",
		sightdistance = 260,
		terraformspeed = 400,
		trackoffset = 8,
		trackstrength = 5,
		tracktype = "corwidetracks",
		trackwidth = 24,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.9504,
		turnrate = 300,
		workertime = 80,
		buildoptions = {
			[1] = "corsolar",
			[2] = "coradvsol",
			[3] = "corwin",
			[4] = "corgeo",
			[5] = "cormstor",
			[6] = "corestor",
			[7] = "cormex",
			[8] = "corexp",
			[9] = "cormakr",
			[10] = "corlab",
			[11] = "corvp",
			[12] = "corap",
			[13] = "corhp",
			[14] = "coravp",
			[15] = "cornanotc",
			[16] = "cornanotcplat",
			[17] = "coreyes",
			[18] = "corrad",
			[19] = "cordrag",
			[20] = "cormaw",
			[21] = "corllt",
			[22] = "corhllt",
			[23] = "corhlt",
			[24] = "corpun",
			[25] = "corrl",
			[26] = "cormadsam",
			[27] = "corerad",
			[28] = "corjuno",
			[29] = "cordl",
			[30] = "corjamt",
			[31] = "corfhp",
			[32] = "coramsub",
			[33] = "corplat",
			[34] = "corsy",
			[35] = "cortide",
			--[33] = "coruwmex",
			[36] = "corfmkr",
			[37] = "coruwms",
			[38] = "coruwes",
			[39] = "corfdrag",
			[40] = "corfrad",
			[41] = "corfhlt",
			[42] = "corfrt",
			[43] = "corptl",
			[44] = "coruwgeo",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "cormex",
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corvehicles",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.3500289917 4.80712890649e-06 3.49253082275",
				collisionvolumescales = "25.27003479 12.0197296143 44.3021697998",
				collisionvolumetype = "Box",
				damage = 697,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 105,
				object = "Units/cormuskrat_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 299,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 42,
				object = "Units/cor3X3C.s3o",
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
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair2",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
	},
}
