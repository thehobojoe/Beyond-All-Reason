return {
	corspy = {
		maxacc = 0.276,
		activatewhenbuilt = true,
		maxdec = 0.60375,
		energycost = 12500,
		metalcost = 165,
		builddistance = 136,
		builder = true,
		buildpic = "CORSPY.DDS",
		buildtime = 22200,
		canassist = false,
		canguard = false,
		canmove = true,
		canrepair = false,
		canrestore = false,
		category = "BOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		cloakcost = 50,
		cloakcostmoving = 100,
		collisionvolumeoffsets = "0 -2 0",
		collisionvolumescales = "26 32 20",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 380,
		maxslope = 32,
		speed = 62.099,
		maxwaterdepth = 112,
		mincloakdistance = 75,
		movementclass = "BOT3",
		objectname = "Units/CORSPY.s3o",
		onoffable = false,
		script = "Units/CORSPY.cob",
		seismicsignature = 2,
		selfdestructas = "SPYBOMBX",
		selfdestructcountdown = 1,
		sightdistance = 550,
		sonarstealth = true,
		stealth = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.3662,
		turnrate = 1518,
		upright = true,
		workertime = 50,
		customparams = {
			unitgroup = 'buildert2',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbots/t2",
			techlevel = 2,
			paralyzemultiplier = 0.002,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.62395477295 -0.0601244018555 -0.106101989746",
				collisionvolumescales = "35.1202545166 24.5693511963 34.7390899658",
				collisionvolumetype = "Box",
				damage = 250,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 101,
				object = "Units/corspy_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "21.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 150,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 40,
				object = "Units/cor1X1A.s3o",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
	},
}
