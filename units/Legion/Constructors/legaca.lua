return {
	legaca = {
		maxacc = 0.065,
		blocking = false,
		maxdec = 0.4275,
		energycost = 11000,
		metalcost = 360,
		builddistance = 136,
		builder = true,
		buildpic = "LEGACA.DDS",
		buildtime = 18000,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE NOTSUB VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = true,
		cruisealtitude = 70,
		energymake = 10,
		energystorage = 50,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		idleautoheal = 5,
		idletime = 1800,
		health = 205,
		maxslope = 10,
		speed = 181.5,
		maxwaterdepth = 0,
		objectname = "Units/CORACA.s3o",
		radardistance = 50,
		script = "Units/CORACA.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 383.5,
		terraformspeed = 650,
		turninplaceanglelimit = 360,
		turnrate = 240,
		workertime = 100,
		buildoptions = {
			"corfus",
			"corafus",
			"corageo",
			"coruwageo",
			"corbhmth",
			"cormoho",
			"cormexp",
			"cormmkr",
			"coruwadves",
			"coruwadvms",
			"corarad",
			"corshroud",
			"legfort",
			"corasp",
			"corfasp",
			"cortarg",
			"corsd",
			"corgate",
			"cortoast",
			"corvipe",
			"legbastion",
			"corflak",
			"corscreamer",
			"cortron",
			"corfmd",
			"corsilo",
			"corint",
			"legstarfall",
			"legap",
			"legaap",
			"corplat",
			"leggant",
		},
		customparams = {
			unitgroup = 'buildert2',
			area_mex_def = "cormoho",
			model_author = "Mr Bob, Flaka",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "coraircraft/t2",
			techlevel = 2,
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg3-builder",
				[2] = "airdeathceg4-builder",
				[3] = "airdeathceg2-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
	},
}
