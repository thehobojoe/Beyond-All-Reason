return {
	armlatnk = {
		maxacc = 0.05833,
		maxdec = 0.11666,
		energycost = 6400,
		metalcost = 330,
		buildpic = "ARMLATNK.DDS",
		buildtime = 6030,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "30 26 34",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 1060,
		maxslope = 10,
		speed = 90.0,
		maxwaterdepth = 12,
		movementclass = "TANK2",
		nochasecategory = "VTOL",
		objectname = "Units/ARMLATNK.s3o",
		script = "Units/ARMLATNK.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 390,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "armacv_tracks",
		trackwidth = 36,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 2.19516,
		turnrate = 440,
		customparams = {
			unitgroup = 'weaponaa',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armvehicles/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "30 26 34",
				collisionvolumetype = "Box",
				damage = 800,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 200,
				object = "Units/armlatnk_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 80,
				object = "Units/arm2X2D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-lightning",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg3-lightning",
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
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			armamph_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailaa",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Light g2a missile launcher",
				noselfdamage = true,
				range = 600,
				reloadtime = 2,
				smoketrail = true,
				smokePeriod = 5,
				smoketime = 12,
				smokesize = 4.4,
				smokecolor = 0.95,
				smokeTrailCastShadow = false,
				castshadow = false, --projectile
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundstart = "rocklit1",
				startvelocity = 650,
				texture1 = "null",
				texture2 = "smoketrailaa",
				tolerance = 9000,
				tracks = true,
				turnrate = 48000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				damage = {
					vtol = 85,
				},
			},
			lightning = {
				areaofeffect = 8,
				avoidfeature = false,
				beamttl = 1,
				burst = 10,
				burstrate = 0.03333,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 1,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:genericshellexplosion-medium-lightning2",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 24,
				name = "Close-quarters lightning turret",
				noselfdamage = true,
				range = 320,
				reloadtime = 1.4,
				rgbcolor = "0.5 0.5 1",
				soundhit = "lashit",
				soundhitwet = "sizzle",
				soundstart = "lghthvy1",
				soundtrigger = true,
				targetmoveerror = 0,
				thickness = 1.5,
				turret = true,
				weapontype = "LightningCannon",
				weaponvelocity = 400,
				customparams = {
					spark_ceg = "genericshellexplosion-splash-lightning",
					spark_forkdamage = "0.33",
					spark_maxunits = "2",
					spark_range = "60",
				},
				damage = {
					default = 22.7,
				},
			},
		},
		weapons = {
			[1] = {
				def = "LIGHTNING",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "ARMAMPH_MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
