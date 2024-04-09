return {
	corvroc = {
		maxacc = 0.02489,
		maxdec = 0.04978,
		energycost = 6700,
		metalcost = 880,
		buildpic = "CORVROC.DDS",
		buildtime = 15000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -9 -2",
		collisionvolumescales = "40 40 44",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "largeExplosionGeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 1390,
		maxslope = 16,
		speed = 33.0,
		maxwaterdepth = 12,
		movementclass = "HTANK4",
		nochasecategory = "MOBILE VTOL",
		objectname = "Units/CORVROC.s3o",
		script = "Units/CORVROC.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 221,
		stealth = true,
		trackstrength = 8,
		tracktype = "corwidetracks",
		trackwidth = 40,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.792,
		turnrate = 520.29999,
		customparams = {
			unitgroup = "weapon",
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corvehicles/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.75276184082 -4.69010970459 0.13981628418",
				collisionvolumescales = "42.9068603516 14.9519805908 46.03515625",
				collisionvolumetype = "Box",
				damage = 1897,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 538,
				object = "Units/corvroc_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 215,
				object = "Units/cor3X3E.s3o",
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
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
		weapondefs = {
			cortruck_rocket = {
				areaofeffect = 150,
				avoidfeature = false,
				cegtag = "missiletrailmedium-starburst",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				firestarter = 100,
				flighttime = 12,
				impulseboost = 0.2,
				impulsefactor = 0.2,
				metalpershot = 0,
				model = "corvrocket.s3o",
				name = "Rocket",
				noselfdamage = true,
				range = 1310,
				reloadtime = 16,
				smoketrail = true,
				smokePeriod = 9,
				smoketime = 45,
				smokesize = 16.0,
				smokecolor = 0.7,
				smokeTrailCastShadow = false,
				castshadow = true, --projectile
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundstart = "Rockhvy1",
				texture1 = "null",
				texture2 = "smoketrailbar",
				texture3 = "null",
				tolerance = 4000,
				turnrate = 15000,
				weaponacceleration = 100,
				weapontimer = 3,
				weapontype = "StarburstLauncher",
				weaponvelocity = 415,
				damage = {
					commanders = 810,
					default = 1700,
					subs = 600,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "CORTRUCK_ROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
