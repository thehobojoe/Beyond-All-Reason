return {
	armwar = {
		maxacc = 0.0828,
		maxdec = 0.8211,
		energycost = 3100,
		metalcost = 270,
		buildpic = "ARMWAR.DDS",
		buildtime = 4200,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 1",
		collisionvolumescales = "30 32 30",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 1590,
		maxslope = 17,
		speed = 45.0,
		maxwaterdepth = 12,
		movementclass = "BOT3",
		nochasecategory = "VTOL",
		objectname = "Units/ARMWAR.s3o",
		script = "Units/ARMWAR.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 350,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.99,
		turnrate = 885.5,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Kaiser",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbots",
			wpn1turretx = 200,
			wpn1turrety = 200,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.527076721191 -5.09926749023 6.06378173828",
				collisionvolumescales = "37.3442840576 10.0486450195 42.9995422363",
				collisionvolumetype = "Box",
				damage = 880,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 161,
				object = "Units/armwar_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 490,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 64,
				object = "Units/arm2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg2",
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
			armwar_laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.12,
				corethickness = 0.155,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7.7,
				name = "Dual close-quarters g2g laser",
				noselfdamage = true,
				range = 330,
				reloadtime = 0.3,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 1.85,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 950,
				damage = {
					default = 55,
					vtol = 9,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARMWAR_LASER",
				onlytargetcategory = "NOTSUB",
				fastautoretargeting = true,
			},
		},
	},
}
