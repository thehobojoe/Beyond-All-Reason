return {
	cordemon = {
		maxacc = 0.2208,
		maxdec = 1,
		energycost = 90000,--150000,
		metalcost = 6000,--10000,
		buildpic = "CORDEMON.DDS",
		buildtime = 120000,--150000,
		canmove = true,
		category = "BOT WEAPON ALL NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "60 88 60",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "explosiont3xl",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		mass = 200000,
		health = 18000,--27500,
		maxslope = 160,
		speed = 63.0,--2.5,
		maxwaterdepth = 12,
		movementclass = "HBOT4",
		nochasecategory = "VTOL",
		objectname = "Units/cordemon.s3o",
		script = "Units/cordemon.COB",
		seismicsignature = 0,
		selfdestructas = "explosiont3xxl",
		sightdistance = 500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.99,
		turnrate = 607.20001,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			maxrange = "500",
			model_author = "FireStorm, Hornet",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corgantry",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "3.89811706543 -12.9994070068 -38.2052841187",
				collisionvolumescales = "77.9624938965 23.0893859863 76.4105682373",
				collisionvolumetype = "Box",
				damage = 10000,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 40,
				metal = 3600,
				object = "Units/cordemon_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 10000,
				energy = 0,
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 2750,
				object = "Units/arm2X2D.s3o",
				reclaimable = true,
				resurrectable = 0,
			},

		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:flamestreamxxl",
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
				[1] = "mavbok1",
			},
			select = {
				[1] = "mavbsel1",
			},
		},
		weapondefs = {
			newdmaw = { -- fire based with trailing AoE on particles (or not, atm)
				accuracy = 0,
				areaofeffect = 128,
				avoidfeature = false,
				avoidfriendly = true,
				avoidground = true,
				burst = 12,
				burstrate = 0.03333,
				burnblow = true,
				bouncerebound = 1,
				cegtag = "demonflame",
				colormap = "1 0.95 0.9 0.032   0.55 0.55 0.40 0.028   0.40 0.28 0.19 0.024   0.033 0.018 0.011 0.04   0.0 0.0 0.0 0.01",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.01,
				explosiongenerator = "custom:burnblackxl",
				groundbounce = true,
				bounceSlip = 1.0,
				firestarter = 100,
				firesubmersed = false,
				flameGFXTime = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.85,
				name = "Demon's Maw; Heavy long range AoE flamethrower",
				noexplode = false,
				noselfdamage = true,
				predictboost = 1,
				range = 500,
				reloadtime = 0.39996,
				rgbcolor = "1 0.94 0.88",
				rgbcolor2 = "0.9 0.84 0.8",
				sizegrowth = 1.1,
				soundhitdry = "flamhit1",
				soundhitwet = "sizzle",
				soundstart = "Flamhvy1",
				soundhitvolume = 9.5,
				soundstartvolume = 7.3,
				soundtrigger = false,
				tolerance = 20000,
				turret = true,
				waterweapon = false,
				weapontype = "Flame",
				weaponvelocity = 500,
				damage = {
					default = 48,--100,
					subs = 16,
				}--,customparams = { single_hit_multi = 'true' },
			},
			dmaw = {
				areaofeffect = 128,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.03333,
				cegtag = "burnflamexl",
				colormap = "1 0.95 0.9 0.032   0.55 0.55 0.40 0.028   0.40 0.28 0.19 0.024   0.033 0.018 0.011 0.04   0.0 0.0 0.0 0.01",
				craterareaofeffect = 0,
				craterboost = 0.15,
				cratermult = 0.15,
				damageAreaOfEffect = 5,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:burnblackxl",
				firestarter = 100,
				flamegfxtime = 1,
				groundbounce = true,
				bounceRebound = 0.8,
				bounceSlip = 1.0,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.85,
				name = "Heavy long range AoE flamethrower",
				noexplode = true,
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = 3,
				range = 500,--450,
				reloadtime = 0.0667,---0.0667,
				rgbcolor = "1 0.94 0.88",
				rgbcolor2 = "0.9 0.84 0.8",
				sizegrowth = 1.7,
				soundhitwet = "sizzle",
				soundstart = "Flamhvy1",
				soundtrigger = false,
				sprayangle = 200,
				targetmoveerror = 0.001,
				texture1 = "flame_alt2",
				tolerance = 2500,
				turret = true,
				weapontimer = 1,
				weapontype = "notFlame",
				weaponvelocity = 600,
				damage = {
					default = 48,--100,
					subs = 16,
				},
				customparams = {
					single_hit_multi = 'true'
				},
			},
			karg_shoulder = {
				areaofeffect = 16,
				avoidfeature = false,
				burnblow = true,
				fixedLauncher = true,
				canattackground = false,
				cegtag = "missiletrailaa",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 72,
				flighttime = 1.75,
				impulseboost = 0,
				impulsefactor = 0,
				model = "cormissile.s3o",
				name = "ShoulderRockets",
				noselfdamage = true,
				proximitypriority = 1,
				range = 700,
				reloadtime = 0.6,--0.9,
				smoketrail = true,
				smokePeriod = 5,
				smoketime = 12,
				smokesize = 4.4,
				smokecolor = 0.95,
				smokeTrailCastShadow = false,
				castshadow = false, --projectile
				soundhit = "packohit",
				soundhitwet = "splshbig",
				soundstart = "packolau",
				soundtrigger = false,
				startvelocity = 820, --520
				texture1 = "null",
				texture2 = "smoketrailaa",
				tolerance = 9950,
				tracks = true,
				turnrate = 68000,
				turret = true,
				weaponacceleration = 160,
				weapontimer = 2,
				weapontype = "MissileLauncher",
				weaponvelocity = 820,
				damage = {
					default = 100,
					vtol = 150,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "GROUNDSCOUT VTOL",
				def = "newdmaw",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
			},
			[2] = {
				badtargetcategory = "NOTAIR GROUNDSCOUT",
				def = "KARG_SHOULDER",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
