return {
	leginfestor = {
		maxacc = 0.25,
		maxdec = 0.65,
		energycost = 5000,
		metalcost = 300,
		buildpic = "LEGINFESTOR.DDS",
		builddistance = 175,
		buildtime = 4500,
		builder = true,
		canassist = true,
		canreclaim = true,
		canmove = true,
		category = "ALL BOT WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "36 26 44",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 1500,
		maxslope = 50,
		speed = 54.0,
		maxwaterdepth = 30,
		movementclass = "TBOT3",
		mygravity = 10000,
		nochasecategory = "VTOL",
		objectname = "Units/leginfestor.s3o",
		script = "Units/leginfestor.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 400,
		strafetoattack = true,
		stealth = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.0626,
		turnrate = 1214.40002,
		workertime = 150,
		usePieceCollisionVolumes=true,
		buildoptions = {
			[1] = "leginfestor"
		},
		customparams = {
			unitgroup = 'weapon',
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.125,
			subfolder = "corbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.81045331299 4.38243865967",
				collisionvolumescales = "36 26 44",
				collisionvolumetype = "CylY",
				damage = 750,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 10,
				metal = 523,
				object = "Units/leginfestor_dead.s3o",
				reclaimable = true,
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
				metal = 209,
				object = "Units/cor3X3A.s3o",
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
				[1] = "spider2",
			},
			select = {
				[1] = "spider",
			},
		},
		weapondefs = {
			festorbeam = {
				areaofeffect = 42,
				avoidfeature = false,
				beamtime = 0.35,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-medium-yellow",
				firestarter = 90,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 3.95,
				name = "HeatRay",
				noselfdamage = true,
				range = 300,
				reloadtime = 1,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "heatray1",
				soundtrigger = 1,
				targetborder = 0.3,
				targetmoveerror = 0,
				thickness = 1.25,
				tolerance = 2000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					default = 120,
					subs = 5,
					vtol = 40,
				},
			},
		},
		weapons = {
			[1] = {
				def = "festorbeam",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
