return {
	corsnap = {
		maxacc = 0.04624,
		maxdec = 0.04624,
		energycost = 3100,
		metalcost = 300,
		buildpic = "CORSNAP.DDS",
		buildtime = 3500,
		canmove = true,
		category = "ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "32 16 38",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 1720,
		maxslope = 16,
		speed = 66.99,
		maxwaterdepth = 0,
		movementclass = "HOVER3",
		nochasecategory = "VTOL",
		objectname = "Units/CORSNAP.s3o",
		script = "Units/CORSNAP.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 491,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.518,
		turnrate = 500,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corhovercraft",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 1 0",
				collisionvolumescales = "32 16 38",
				collisionvolumetype = "Box",
				damage = 877,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 192,
				object = "Units/corsnap_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 439,
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 77,
				object = "Units/cor3X3D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
				[2] = "custom:waterwake-small-hover",
				[3] = "custom:bowsplash-small-hover",
				[4] = "custom:hover-wake-small",
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
				[1] = "hovmdok2",
			},
			select = {
				[1] = "hovmdsl2",
			},
		},
		weapondefs = {
			armanac_weapon = {
				areaofeffect = 32,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "MediumPlasmaCannon",
				noselfdamage = true,
				range = 370,
				reloadtime = 1.4,
				soundhit = "xplosml3",
				soundhitwet = "splshbig",
				soundstart = "canlite3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 260,
				damage = {
					default = 98,
					vtol = 29,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARMANAC_WEAPON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
