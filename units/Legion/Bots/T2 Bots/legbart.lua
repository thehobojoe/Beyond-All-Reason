return {
	legbart = {
		maxacc = 0.1518,
		maxdec = 0.77625,
		energycost = 5500,
		metalcost = 550,
		buildpic = "LEGBART.DDS",
		buildtime = 10000,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -5 -5",
		collisionvolumescales = "28 45 35",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "pyro",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 1780,
		maxslope = 14,
		speed = 60.0,
		maxwaterdepth = 12,
		movementclass = "BOT3",
		nochasecategory = "VTOL",
		objectname = "Units/LEGBART.s3o",
		script = "Units/LEGBART.cob",
		seismicsignature = 0,
		selfdestructas = "pyro",
		sightdistance = 400,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.1352,
		turnrate = 1263.84998,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Zecrus",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-2.46048736572 -3.00319400146 6.99045562744",
				collisionvolumescales = "41.948348999 14.0481719971 51.4421844482",
				collisionvolumetype = "Box",
				damage = 600,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 350,
				object = "Units/legbart_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 400,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 150,
				object = "Units/cor2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
			},
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
		weapondefs = {
			clusternapalm = {
				areaofeffect = 150,
				avoidfeature = false,
				cegtag = "burnflame",
				collidefriendly = false,
				colormap = "0.75 0.73 0.67 0.024   0.37 0.4 0.30 0.021   0.22 0.21 0.14 0.018  0.024 0.014 0.009 0.03   0.0 0.0 0.0 0.008",
				craterareaofeffect = 90,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:burnfire",
				flamegfxtime = 1,
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyCannon",
				noselfdamage = true,
				projectiles = 4,
				range = 625,
				reloadtime = 5,
				rgbcolor = "1 0.25 0.1",
				size = 4,
				soundhitdry = "flamhit1",
				soundhitwet = "sizzle",
				soundstart = "cannhvy2",
				sprayangle = 1500,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 300,
				damage = {
					default = 30,
					subs = 10,
					vtol = 10,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CLUSTERNAPALM",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
