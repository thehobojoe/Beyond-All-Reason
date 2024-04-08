return {
	armlunchbox = {
		maxacc = 0.02645,
		maxdec = 0.345,
		energycost = 71000,
		metalcost = 3300,
		buildpic = "ARMLUNCHBOX.DDS",
		buildtime = 71000,
		canmove = true,
		category = "ALL NOTSUB WEAPON NOTAIR NOTHOVER SURFACE BOT EMPABLE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "65 60 65",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "explosiont3",
		footprintx = 4,
		footprintz = 4,
		hightrajectory = 2,
		idleautoheal = 5,
		idletime = 1800,
		mass = 200000,
		health = 10000,
		maxslope = 17,
		speed = 33.0,
		maxwaterdepth = 0,
		movementclass = "EPICBOT",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/armlunchbox.s3o",
		script = "Units/scavboss/armlunchbox.cob",
		seismicsignature = 0,
		selfdestructas = "explosiont3xl",
		sightdistance = 625,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.726,
		turnrate = 265.64999,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armgantry",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-3.37104034424 -1.05229058838 1.8899307251",
				collisionvolumescales = "64.0154266357 41.4324188232 55.433883667",
				collisionvolumetype = "Box",
				damage = 3000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 2028,
				object = "Units/scavboss/armlunchbox_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 3015,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 811,
				object = "Units/arm4X4D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-huge",
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
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			shocker = {
				areaofeffect = 192,
				avoidfeature = false,
				avoidfriendly = true,
				cegtag = "arty-huge",
				collidefriendly = false,
				craterareaofeffect = 192,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-huge",
				firetolerance = 5000,
				gravityaffected = "true",
				heightboostfactor = 2.8,
				impulseboost = 0.5,
				impulsefactor = 0.5,
				name = "Heavy long-range g2g plasma cannon",
				noselfdamage = true,
				predictboost = 0.25,
				range = 1325,
				reloadtime = 8,
				--size = 5,
				soundhit = "xplomed2",
				soundhitwet = "splslrg",
				soundstart = "cannhvy5",
				targetborder = 1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					commanders = 1100,
					default = 1265,
					shields = 765,
					subs = 400,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "SHOCKER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
