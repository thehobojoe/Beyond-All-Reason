return {
	armsam = {
		maxacc = 0.0236,
		airsightdistance = 900,
		maxdec = 0.0472,
		energycost = 2100,
		metalcost = 150,
		buildpic = "ARMSAM.DDS",
		buildtime = 3420,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "26 15 41",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 820,
		maxslope = 16,
		speed = 45.0,
		maxwaterdepth = 12,
		movementclass = "TANK3",
		objectname = "Units/ARMSAM.s3o",
		script = "Units/ARMSAM.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 620,
		trackoffset = -7,
		trackstrength = 5,
		tracktype = "armsam_tracks",
		trackwidth = 28,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.056,
		turnrate = 370,
		customparams = {
			unitgroup = 'weaponaa',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armvehicles",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "26 15 41",
				collisionvolumetype = "Box",
				damage = 639,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 97,
				object = "Units/armsam_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 320,
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 45,
				object = "Units/arm3X3D.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:rocketflare",
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
				[1] = "veht1aaok",
			},
			select = {
				[1] = "veht1aasel",
			},
		},
		weapondefs = {
			armtruck_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				burnblow = true,
				--burst = 2,
				--burstrate = 0.3,
				cegtag = "missiletrailtiny",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-tiny",
				firestarter = 70,
				flighttime = 2,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Light g2g/g2a missile launcher",
				noselfdamage = true,
				range = 575,--600,
				reloadtime = 3.33333,
				smoketrail = true,
				smokePeriod = 8,
				smoketime = 14,
				smokesize = 5.0,
				smokecolor = 0.66,
				smokeTrailCastShadow = false,
				castshadow = true, --projectile
				soundhit = "rockhit2",
				soundhitwet = "splssml",
				soundstart = "rockhvy2",
				soundstartvolume = 8.5,
				soundtrigger = true,
				startvelocity = 420,
				texture1 = "null",
				texture2 = "smoketrailbar",
				tolerance = 8000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 110,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 670,
				damage = {
					default = 64,
					vtol = 160,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "ARMTRUCK_MISSILE",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
