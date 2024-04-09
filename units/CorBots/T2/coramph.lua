return {
	coramph = {
		maxacc = 0.1035,
		activatewhenbuilt = true,
		maxdec = 0.6486,
		energycost = 9500,
		metalcost = 330,
		buildpic = "CORAMPH.DDS",
		buildtime = 9650,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSHIP NOTAIR NOTHOVER NOTSUB SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "32 29 32", -- possible multihotbox scheme here
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric-phib",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 2350,
		maxslope = 14,
		speed = 55.5,
		movementclass = "ABOT2",
		nochasecategory = "VTOL",
		objectname = "Units/CORAMPH.s3o",
		radardistance = 300,
		script = "Units/CORAMPH.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 400,
		sonardistance = 300,
		sonarstealth = false,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.221,
		turnrate = 1147.69995,
		upright = true,
		customparams = {
			unitgroup = 'weaponsub',
			model_author = "FireStorm",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -7.5 0",
				collisionvolumescales = "32 29 32",
				collisionvolumetype = "CylY",
				damage = 1056,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 152,
				object = "Units/coramph_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 920,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 114,
				object = "Units/cor2X2D.s3o",
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
		weapondefs = {
			coramph_weapon1 = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cortorpedo.s3o",
				name = "Torpedo",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 6,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 75,
				turnrate = 1700,
				turret = true,
				waterweapon = true,
				weaponacceleration = 20,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 135,
				damage = {
					default = 250,
				},
			},
			coramph_weapon2 = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.15,
				corethickness = 0.16,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 35,
				explosiongenerator = "custom:laserhit-medium-green",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7.7,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 300,
				reloadtime = 1.13333,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrhvy3",
				soundtrigger = 1,
				targetmoveerror = 0,
				thickness = 2.4,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					default = 150,
					vtol = 38,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CORAMPH_WEAPON1",
				onlytargetcategory = "NOTHOVER",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "CORAMPH_WEAPON2",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
