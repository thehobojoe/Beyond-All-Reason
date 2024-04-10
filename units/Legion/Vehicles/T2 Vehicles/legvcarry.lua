return {
	legvcarry	= {
		maxacc = 0.02,
		maxdec = 0.04,
		energycost = 6000,
		metalcost = 300,
		buildpic = "LEGVCARRY.DDS",
		buildtime = 6000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 10 0",
		collisionvolumescales = "44 38 44",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 1200,
		maxslope = 10,
		speed = 45.0,
		maxwaterdepth = 12,
		movementclass = "TANK3",
		name = "Gattling",
		nochasecategory = "VTOL",
		objectname = "Units/LEGVCARRY.s3o",
		script = "Units/LEGVCARRY.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 400,
		trackoffset = 3,
		trackstrength = 6,
		tracktype = "armstump_tracks",
		trackwidth = 38,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.952,
		turnrate = 300,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			firingceg = "barrelshot-small",
			kickback = "-2.4",
			lumamult = "1.2",
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armvehicles",
			wpn1turretx = "45",
			wpn1turrety = "80",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "44 38 44",
				collisionvolumetype = "Box",
				damage = 1056,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 200,
				object = "Units/legvcarry_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 528,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 80,
				object = "Units/arm2X2D.s3o",
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
				[1] = "tnkt1canok",
			},
			select = {
				[1] = "tnkt1cansel",
			},
		},
		weapondefs = {
			plasma = {
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyCannon",
				noselfdamage = true,
				range = 900,
				reloadtime = 2.5,
				size = 0,
				soundhit = "",
				soundhitwet = "",,
				soundstart = "",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 360,
				damage = {
					default = 0,
				},
				customparams = {
					carried_unit = "legdrone",  --Name of the unit spawned by this carrier unit.
					engagementrange = 900,
					spawns_surface = "LAND",    -- "LAND" or "SEA". The SEA option has not been tested currently.
					spawnrate = 10, 			--Spawnrate roughly in seconds.
					maxunits = 4,				--Will spawn units until this amount has been reached.
					energycost = 500,			--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					metalcost = 15,				--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					controlradius = 1000,			--The spawned units should stay within this radius. Unfinished behavior may cause exceptions. Planned: radius = 0 to disable radius limit.
					decayrate = 4,
					carrierdeaththroe = "release",
					dockingarmor = 0.2,
					dockinghealrate = 16,
					docktohealthreshold = 66,
					enabledocking = true,		--If enabled, docking behavior is used. Currently docking while moving or stopping, and undocking while attacking. Unfinished behavior may cause exceptions.
					dockingHelperSpeed = 5,
					dockingpiecestart = 5,		--First model piece to be used for docking.
					dockingpieceinterval = 2,	--Number of pieces to skip when docking the next unit.
					dockingpieceend = 11,		--Last model piece used for docking. Will loop back to first when exceeded.
					dockingradius = 120,			--The range at which the units snap to the carrier unit when docking.
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "PLASMA",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
