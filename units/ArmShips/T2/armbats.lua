return {
	armbats = {
		maxacc = 0.01583,
		maxdec = 0.01583,
		buildangle = 16384,
		energycost = 22000,
		metalcost = 3300,
		buildpic = "ARMBATS.DDS",
		buildtime = 35000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "-1 -10 4",
		collisionvolumescales = "63 63 144",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "hugeexplosiongeneric",
		floater = true,
		footprintx = 6,
		footprintz = 6,
		idleautoheal = 5,
		idletime = 1800,
		health = 8900,
		speed = 57.9,
		minwaterdepth = 15,
		movementclass = "BOAT8",
		nochasecategory = "VTOL",
		objectname = "Units/ARMBATS.s3o",
		script = "Units/ARMBATS.cob",
		seismicsignature = 0,
		selfdestructas = "hugeexplosiongenericSelfd",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 180,
		waterline = 0,
		customparams = {
			unitgroup = 'weapon',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-16.0281448364 -3.59007536621 -2.5637588501",
				collisionvolumescales = "74.9459686279 67.6992492676 151.322341919",
				collisionvolumetype = "Box",
				damage = 12972,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				metal = 1650,
				object = "Units/armbats_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 4032,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 825,
				object = "Units/arm6X6D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-large",
				[2] = "custom:waterwake-large",
				[3] = "custom:bowsplash-large",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			arm_bats = {
				accuracy = 350,
				areaofeffect = 140,
				avoidfeature = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Heavy long-range g2g plasma cannon",
				noselfdamage = true,
				range = 880,
				reloadtime = 1,
				soundhit = "xplomed2",
				soundhitwet = "splsmed",
				soundstart = "cannhvy1",
				tolerance = 5000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 470,
				damage = {
					default = 300,
					--subs = 5,
					vtol = 65,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_BATS",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
			},
			[2] = {
				def = "ARM_BATS",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
			},
		},
	},
}
