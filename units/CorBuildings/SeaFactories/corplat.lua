return {
	corplat = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		energycost = 5500,
		metalcost = 1400,
		builder = true,
		buildpic = "CORPLAT.DDS",
		buildtime = 11800,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE UNDERWATER",
		corpse = "DEAD",
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 7,
		footprintz = 7,
		idleautoheal = 5,
		idletime = 1800,
		health = 2200,
		minwaterdepth = 30,
		objectname = "Units/CORPLAT.s3o",
		--radardistance = 50,
		script = "Units/CORPLAT.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 169,
		sonardistance = 800,
		terraformspeed = 1000,
		waterline = 43,
		workertime = 200,
		yardmap = "wwwwwwwwCCCCCwwCCCCCwwCCCCCwwCCCCCwwCCCCCwwwwwwww",
		buildoptions = {
			[1] = "corcsa",
			[2] = "corcut",
			[3] = "corsb",
			[4] = "corseap",
			[5] = "corsfig",
			[6] = "corhunt",
		},
		customparams = {
			unitgroup = 'builder',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "2.5 0.0 -0.0",
				collisionvolumescales = "117.5 41.25 112.5",
				collisionvolumetype = "Box",
				damage = 1200,
				footprintx = 7,
				footprintz = 7,
				height = 20,
				metal = 930,
				object = "Units/corplat_dead.s3o",
				reclaimable = true,
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
			build = "seaplok2",
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
				[1] = "seaplsl2",
			},
		},
	},
}
