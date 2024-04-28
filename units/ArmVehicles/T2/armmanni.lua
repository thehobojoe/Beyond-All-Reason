return {
	armmanni = {
		maxacc = 0.00715,
		maxdec = 0.01431,
		energycost = 13500,
		metalcost = 1200,
		buildpic = "ARMMANNI.DDS",
		buildtime = 25700,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "39 49 39", -- have this be defined in collisions.lua
		collisionvolumetype = "box",
		corpse = "DEAD",
		explodeas = "penetrator",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		mass = 5001,
		health = 2800,
		maxslope = 12,
		speed = 42.0,
		maxwaterdepth = 0,
		movementclass = "HTANK4",
		movestate = 0,
		nochasecategory = "VTOL",
		objectname = "Units/ARMMANNI.s3o",
		script = "Units/ARMMANNI.cob",
		seismicsignature = 0,
		selfdestructas = "penetrator",
		sightdistance = 650,
		trackoffset = 6,
		trackstrength = 10,
		tracktype = "armacv_tracks",
		trackwidth = 46,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.00188,
		turnrate = 120.8,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			firingceg = "barrelshot-small",
			kickback = "-2",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armvehicles/t2",
			techlevel = 2,
			weapon1turretx = 50,
			weapon1turrety = 50,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "39 49 39",
				collisionvolumetype = "box",
				damage = 2000,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 734,
				object = "Units/armmanni_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 294,
				object = "Units/arm3X3C.s3o",
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
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			atam = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.3,
				corethickness = 0.23,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 1000,
				explosiongenerator = "custom:laserhit-large-blue",
				impulseboost = 0,
				impulsefactor = 0,
				largebeamlaser = true,
				laserflaresize = 6.05,
				name = "Heavy long-range g2g tachyon beam",
				noselfdamage = true,
				range = 950,
				reloadtime = 4.7,
				rgbcolor = "0 0 1",
				scrollspeed = 5,
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "annigun1",
				soundtrigger = 1,
				targetmoveerror = 0,
				texture3 = "largebeam",
				thickness = 4.5,
				tilelength = 150,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					commanders = 1000,
					default = 2500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ATAM",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
