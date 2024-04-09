return {
	armflea = {
		maxacc = 0.575,
		maxdec = 1.725,
		energycost = 340,
		metalcost = 17,
		buildpic = "ARMFLEA.DDS",
		buildtime = 800,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE GROUNDSCOUT EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "20 12 20",
		collisionvolumetype = "cylY",
		corpse = "DEAD",
		explodeas = "tinyexplosiongeneric",
		footprintx = 1,
		footprintz = 1,
		idleautoheal = 5,
		idletime = 1800,
		mass = 1000,
		health = 61,
		maxslope = 255,
		speed = 132.0,
		maxwaterdepth = 16,
		movementclass = "BOT1",
		nochasecategory = "VTOL",
		objectname = "Units/ARMFLEA.s3o",
		script = "Units/ARMFLEA.cob",
		seismicsignature = 0,
		selfdestructas = "tinyexplosiongenericSelfd",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 2.904,
		turnrate = 1807.79993,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Kaiser",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbots",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.00276184082031 -0.139985849609 -0.0299072265625",
				collisionvolumescales = "18.3164367676 15.4085083008 17.7548828125",
				collisionvolumetype = "Box",
				damage = 30,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 1,
				footprintz = 1,
				height = 20,
				metal = 9,
				object = "Units/armflea_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "21.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 15,
				energy = 0,
				footprintx = 1,
				footprintz = 1,
				height = 4,
				metal = 4,
				object = "Units/arm1X1A.s3o",
				reclaimable = true,
				resurrectable = 0,
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
				[1] = "servtny2",
			},
			select = {
				[1] = "servtny2",
			},
		},
		weapondefs = {
			flea_laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.1,
				beamttl = 1,
				burstrate = 0.2,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 2,
				explosiongenerator = "custom:laserhit-tiny-yellow",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 1.65,
				name = "Light close-quarters g2g laser",
				noselfdamage = true,
				range = 140,
				reloadtime = 0.6,
				rgbcolor = "1 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 0.9,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 600,
				damage = {
					default = 24,
					vtol = 2,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "FLEA_LASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
