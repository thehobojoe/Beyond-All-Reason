return {
	armmship = {
		maxacc = 0.0287,
		activatewhenbuilt = true,
		maxdec = 0.0387,
		energycost = 10000,
		metalcost = 2000,
		buildpic = "ARMMSHIP.DDS",
		buildtime = 15000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -5 0",
		collisionvolumescales = "44 44 80",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "largeExplosionGeneric",
		floater = true,
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		health = 3350,
		speed = 63.0,
		minwaterdepth = 12,
		movementclass = "BOAT5",
		nochasecategory = "VTOL",
		objectname = "Units/ARMMSHIP.s3o",
		radardistance = 1000,
		script = "Units/ARMMSHIP.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 318.5,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 350,
		waterline = 0,
		customparams = {
			maxrange = "1650",
			unitgroup = 'weapon',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-1.52864837646 2.44506835934e-05 -1.26249694824",
				collisionvolumescales = "46.7322845459 37.6582489014 110.324981689",
				collisionvolumetype = "Box",
				damage = 2640,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 1000,
				object = "Units/armmship_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 500,
				object = "Units/arm4X4B.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-medium",
				[2] = "custom:bowsplash-medium",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			missile = {
				areaofeffect = 48,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailaa",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium-air",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Medium Range g2a AA Missiles",
				noselfdamage = true,
				range = 710,
				reloadtime = 2,
				smoketrail = true,
				smokePeriod = 7,
				smoketime = 13,
				smokesize = 5.4,
				smokecolor = 0.95,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundstart = "rockhvy2",
				startvelocity = 430,
				texture1 = "null",
				texture2 = "smoketrailaa3",
				tolerance = 8000,
				tracks = true,
				turnrate = 30000,
				turret = true,
				weaponacceleration = 90,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 450,
				damage = {
					vtol = 138,
				},
			},
			rocket = {
				areaofeffect = 300,
				avoidfeature = false,
				burnblow = true,
				cegtag = "missiletrailmship",
				craterareaofeffect = 300,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				firestarter = 100,
				flighttime = 15,
				hightrajectory = 1,
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 1.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "corshiprocket.s3o",
				name = "Heavy long-range g2g starburst rocket launcher",
				noselfdamage = true,
				range = 1550,
				reloadtime = 6,
				smoketrail = false,
				soundhit = "xplomed4",
				soundhitwet = "splsmed",
				soundstart = "Rockhvy1",
				texture1 = "null",
				texture2 = "smoketrailbar",
				texture3 = "null",
				tolerance = 4000,
				turnrate = 24384,
				turret = true,
				weaponacceleration = 80,
				weapontimer = 5,
				weapontype = "Cannon",
				weaponvelocity = 450,
				customparams = {
					cegtag = "missiletrailcorroyspecial",
					def = "armmship_rocket_split",
					model = "airbomb",
					number = "6",
					speceffect = "split",
					splitexplosionceg = "genericshellexplosion-medium",
					when = "yvel<0",
				},
				damage = {
					commanders = 350,
					default = 650,
					subs = 5,
				},
			},
			rocket_split = {
				areaofeffect = 75,
				avoidfeature = false,
				burnblow = true,
				burst = 6,
				burstrate = 0.1,
				cegtag = "missiletrailcorroyspecial",
				craterareaofeffect = 75,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				firestarter = 100,
				flighttime = 15,
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "airbomb.s3o",
				name = "Heavy long-range g2g ballistic missile launcher",
				noselfdamage = true,
				range = 1550,
				reloadtime = 6,
				smoketrail = false,
				soundhit = "xplomed4",
				soundhitwet = "splsmed",
				soundstart = "Rockhvy1",
				texture1 = "null",
				texture2 = "null",
				texture3 = "null",
				tolerance = 4000,
				turnrate = 24384,
				weaponacceleration = 80,
				weapontimer = 5,
				weapontype = "Cannon",
				weaponvelocity = 400,
				damage = {
					commanders = 223,
					default = 350,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ROCKET",
				maindir = "0 .5 1",
				maxangledif = 60,
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
