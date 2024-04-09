return {
	armbull = {
		maxacc = 0.03542,
		maxdec = 0.07083,
		energycost = 13000,
		metalcost = 950,
		buildpic = "ARMBULL.DDS",
		buildtime = 17200,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "44 23 52",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "largeexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 4650,
		maxslope = 12,
		speed = 65.1,
		maxwaterdepth = 15,
		movementclass = "MTANK3",
		nochasecategory = "VTOL",
		objectname = "Units/ARMBULL.s3o",
		script = "Units/ARMBULL.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 494,
		trackoffset = 8,
		trackstrength = 10,
		tracktype = "armbull_tracks",
		trackwidth = 44,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.6104,
		turnrate = 365,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			driftratio = "0.5",
			firingceg = "barrelshot-medium",
			kickback = "-2.4",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "4",
			sleevename = "sleeve",
			subfolder = "armvehicles/t2",
			techlevel = 2,
			wpn1turretx = "65",
			wpn1turrety = "105",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 2",
				collisionvolumescales = "44 23 52",
				collisionvolumetype = "Box",
				damage = 3000,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 549,
				object = "Units/armbull_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 2000,
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 220,
				object = "Units/arm3X3F.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
				[2] = "custom:dust_cloud_dirt_light",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
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
			arm_bull = {
				areaofeffect = 130,
				avoidfeature = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Heavy g2g plasma cannon",
				noselfdamage = true,
				range = 460,
				reloadtime = 1.1,
				soundhit = "xplomed2",
				soundhitwet = "splsmed",
				soundstart = "cannon3",
				--soundhitvolume = 9.75,
				--soundstartvolume = 8.75,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 300,
				damage = {
					default = 270,
					subs = 100,
					vtol = 30,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_BULL",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
