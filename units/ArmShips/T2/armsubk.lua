return {
	armsubk = {
		maxacc = 0.05,
		activatewhenbuilt = true,
		maxdec = 0.05,
		energycost = 17000,
		metalcost = 950,--800,
		buildpic = "ARMSUBK.DDS",
		buildtime = 22000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTAIR NOTHOVER CANBEUW SURFACE EMPABLE UNDERWATER",
		collisionvolumeoffsets = "0.5 0 0",
		collisionvolumescales = "20 15 64",
		collisionvolumetype = "box",
		corpse = "DEAD",
		explodeas = "mediumExplosionGeneric-uw",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 10,
		idletime = 900,
		health = 2350, --1670,
		speed = 81.0,
		minwaterdepth = 15,
		movementclass = "UBOAT4",
		nochasecategory = "VTOL",
		objectname = "Units/ARMSUBK.s3o",
		script = "Units/ARMSUBK.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-uw",
		sightdistance = 390,
		sonardistance = 525,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 540,
		upright = true,
		waterline = 40,
		customparams = {
			unitgroup = 'sub',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.712867736816 -4.88281237665e-09 -0.00479125976563",
				collisionvolumescales = "19.7231903076 16.8272399902 61.3809509277",
				collisionvolumetype = "Box",
				damage = 1434,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 475,
				object = "Units/armsubk_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 240,
				object = "Units/arm2X2A.s3o",
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
			explosiongenerators = {
				[0] = "custom:subbubbles",
				[1] = "custom:subwake",
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
				[1] = "suarmmov",
			},
			select = {
				[1] = "suarmsel",
			},
		},
		weapondefs = {
			armsmart_torpedo = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				cegtag = "torpedotrail-small",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium-uw",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo.s3o",
				name = "Rapid armor-piercing torpedoes",
				noselfdamage = true,
				range = 400,
				reloadtime = 2, --2.5,
				soundhit = "xplodep1",
				soundstart = "torpedo1",
				soundhitvolume = 18,
				startvelocity = 150,
				tolerance = 9000,
				tracks = true,
				turnrate = 1000,
				turret = false,
				waterweapon = true,
				weaponacceleration = 10,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 200,
				damage = {
					default = 350,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "HOVER NOTSHIP",
				def = "ARMSMART_TORPEDO",
				maindir = "0 0 1",
				maxangledif = 180, --110,
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
