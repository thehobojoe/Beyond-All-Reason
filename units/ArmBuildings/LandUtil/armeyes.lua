return {
	armeyes = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 8192,
		energycost = 850,
		metalcost = 32,
		buildpic = "ARMEYES.DDS",
		buildtime = 750,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",		 collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "20 32 20",
		collisionvolumetype = "CylY",
		cloakcost = 10,
		corpse = "DRAGONSEYES_DEAD",
		energyupkeep = 3,
		footprintx = 1,
		footprintz = 1,
		idleautoheal = 5,
		idletime = 300,
		initcloaked = true,
		levelground = false,
		health = 280,
		maxslope = 24,
		maxwaterdepth = 0,
		mincloakdistance = 36,
		objectname = "Units/ARMEYES.s3o",
		script = "Units/ARMEYES.cob",
		seismicsignature = 0,
		sightdistance = 560,
		stealth = true,
		waterline = 5,
		yardmap = "o",
		customparams = {
			unitgroup = 'util',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "armbuildings/landutil",
		},
		featuredefs = {
			dragonseyes_dead = {
				blocking = false,
				category = "heaps",
				collisionvolumeoffsets = "-0.0323944091797 0.0 0.00588226318359",
				collisionvolumescales = "21.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 120,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 1,
				footprintz = 1,
				height = 4,
				hitdensity = 100,
				metal = 12,
				object = "Units/arm1X1A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
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
				[1] = "servsml6",
			},
			select = {
				[1] = "minesel1",
			},
		},
	},
}
