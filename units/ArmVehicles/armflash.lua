return {
	armflash = {
		maxacc = 0.06788,
		maxdec = 0.13575,
		energycost = 911,
		metalcost = 109,
		buildpic = "ARMFLASH.DDS",
		buildtime = 1960,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -2 -1",
		collisionvolumescales = "24 13 31",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 690,
		maxslope = 10,
		speed = 99.0,
		maxwaterdepth = 12,
		movementclass = "TANK2",
		nochasecategory = "VTOL",
		objectname = "Units/ARMFLASH.s3o",
		script = "Units/ARMFLASH.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 299,
		trackoffset = 5,
		trackstrength = 4,
		tracktype = "armpincer_tracks",
		trackwidth = 24,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 2.424,
		turnrate = 544,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			cannon1name = "barrel1",
			cannon2name = "barrel2",
			driftratio = "0.7",
			firingceg = "barrelshot-tiny",
			flare2name = "flare2",
			kickback = "-2",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "1",
			sleevename = "sleeves",
			subfolder = "armvehicles",
			turretname = "turret",
			wpn1turretx = "240",
			wpn1turrety = "240",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 -1",
				collisionvolumescales = "24 9 31",
				collisionvolumetype = "Box",
				damage = 396,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 71,
				object = "Units/armflash_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 193,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 28,
				object = "Units/arm2X2C.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
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
				[1] = "veht1emgok",
			},
			select = {
				[1] = "veht1emgsel",
			},
		},
		weapondefs = {
			emgx = {
				areaofeffect = 8,
				avoidfeature = false,
				burst = 3,
				burstrate = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:plasmahit-small",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.7,
				name = "Rapid-fire close-quarters plasma gun",
				noselfdamage = true,
				range = 180,
				reloadtime = 0.3,
				rgbcolor = "1 0.95 0.4",
				size = 1.9,
				soundhitwet = "splshbig",
				soundstart = "flashemg",
				sprayangle = 1180,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					default = 9,
					vtol = 3,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "EMGX",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
