return {
	cortermite = {
		maxacc = 0.19665,
		maxdec = 0.60375,
		energycost = 9000,
		metalcost = 600,
		buildpic = "CORTERMITE.DDS",
		buildtime = 15000,
		canmove = true,
		category = "ALL BOT WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "40 26 48",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 3100,
		maxslope = 50,
		speed = 48.3,
		maxwaterdepth = 30,
		movementclass = "TBOT3",
		mygravity = 10000,
		nochasecategory = "VTOL",
		objectname = "Units/CORTERMITE.s3o",
		script = "Units/CORTERMITE.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 380,
		strafetoattack = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.0626,
		turnrate = 1214.40002,
		usepiececollisionvolumes = 1,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.125,
			subfolder = "corbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.2 0",
				collisionvolumescales = "26 12 43",
				collisionvolumetype = "Box",
				damage = 2000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 10,
				hitdensity = 100,
				metal = 523,
				object = "Units/cortermite_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				hitdensity = 100,
				metal = 209,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
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
				[1] = "spider2",
			},
			select = {
				[1] = "spider",
			},
		},
		weapondefs = {
			cor_termite_laser = {
				areaofeffect = 42,
				avoidfeature = false,
				avoidfriendly = true,
				beamtime = 0.55,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-medium-yellow",
				firestarter = 90,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 4.95,
				name = "HeatRay",
				noselfdamage = true,
				range = 340,
				reloadtime = 0.8,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "heatray1",
				soundtrigger = 1,
				targetborder = 0.3,
				targetmoveerror = 0,
				thickness = 2.6,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					default = 265,
					subs = 5,
					vtol = 55,
				},
			},
		},
		weapons = {
			[1] = {
				def = "COR_TERMITE_LASER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
