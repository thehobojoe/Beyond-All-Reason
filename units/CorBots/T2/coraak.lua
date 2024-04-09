return {
	coraak = {
		maxacc = 0.138,
		airsightdistance = 925,
		maxdec = 0.6486,
		energycost = 6200,
		metalcost = 650,
		buildpic = "CORAAK.DDS",
		buildtime = 7600,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "27 29 22", -- questions for later
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric-phib",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 1420,
		speed = 34.5,
		movementclass = "ABOT2",
		nochasecategory = "NOTAIR",
		objectname = "Units/CORAAK.s3o",
		script = "Units/CORAAK.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 390,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.759,
		turnrate = 1048.79993,
		upright = true,
		customparams = {
			unitgroup = 'aa',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.21222686768 -2.24119818115 -5.60705566406",
				collisionvolumescales = "38.4586334229 17.0406036377 34.7582092285",
				collisionvolumetype = "Box",
				damage = 1548,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 15,
				metal = 395,
				object = "Units/coraak_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 774,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				metal = 158,
				object = "Units/cor4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium-aa",
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
			aakflak = {
				accuracy = 1000,
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				cegtag = "flaktrailaa",
				canattackground = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:genericshellexplosion-large-air",
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "FlakCannon",
				noselfdamage = true,
				range = 680,
				reloadtime = 4.5,
				size = 1.4,
				sizedecay = 0.08,
				soundhit = "flakhit",
				soundhitvolume = 9,
				soundhitwet = "splsmed",
				soundstart = "flakfire",
				soundstartvolume = 7,
				stages = 8,
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 1500,
				damage = {
					vtol = 220,
				},
				rgbcolor = {
					[1] = 1,
					[2] = 0.33,
					[3] = 0.7,
				},
			},
			bogus_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				name = "Missiles",
				range = 800,
				reloadtime = 0.5,
				soundhitwet = "splshbig",
				startvelocity = 450,
				tolerance = 9000,
				turnrate = 33000,
				turret = true,
				weaponacceleration = 101,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					default = 0,
				},
				customparams = {
					bogus = 1
				}
			},
			coraabot_missile1 = {
				areaofeffect = 24,
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
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 790,
				reloadtime = 1.3,
				smoketrail = true,
				smokePeriod = 6,
				smoketime = 10,
				smokesize = 4.4,
				smokecolor = 0.5,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 650,
				texture1 = "null",
				texture2 = "smoketrailaa",
				tolerance = 9000,
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 825,
				damage = {
					vtol = 80,
				},
			},
			coraabot_missile2 = {
				areaofeffect = 24,
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
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 780,
				reloadtime = 1.6,
				smoketrail = true,
				smokePeriod = 6,
				smoketime = 10,
				smokesize = 4.4,
				smokecolor = 0.5,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 650,
				texture1 = "null",
				texture2 = "smoketrailaa",
				tolerance = 9000,
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 825,
				damage = {
					vtol = 80,
				},
			},
			coraabot_missile3 = {
				areaofeffect = 24,
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
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 770,
				reloadtime = 1.9,
				smoketrail = true,
				smokePeriod = 6,
				smoketime = 10,
				smokesize = 4.4,
				smokecolor = 0.5,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 650,
				texture1 = "null",
				texture2 = "smoketrailaa",
				tolerance = 9000,
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 825,
				damage = {
					vtol = 80,
				},
			},
			coraabot_missile4 = {
				areaofeffect = 64,
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
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 850,
				reloadtime = 3.2,
				smoketrail = true,
				smokePeriod = 6,
				smoketime = 12,
				smokesize = 4.6,
				smokecolor = 0.95,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splssml",
				soundstart = "rocklit1",
				soundstartvolume = 10,
				texture1 = "null",
				texture2 = "smoketrailaa3",
				tolerance = 9000,
				tracks = true,
				turnrate = 99000,
				turret = true,
				startvelocity = 1,
				weaponacceleration = 1200,
				weapontimer = 2,
				weapontype = "MissileLauncher",
				weaponvelocity = 1000,
				damage = {
					vtol = 150,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "BOGUS_MISSILE",
				onlytargetcategory = "VTOL",
			},
			[2] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAABOT_MISSILE3",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[3] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAABOT_MISSILE1",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[4] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAABOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[5] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAABOT_MISSILE4",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[6] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "AAKFLAK",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
