return {
	coresupp = {
		maxacc = 0.11054,
		maxdec = 0.11054,
		buildangle = 16384,
		energycost = 1000,
		metalcost = 100,
		buildpic = "CORESUPP.DDS",
		buildtime = 1400,
		canmove = true,
		category = "ALL WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "20 16 40",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 2,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 480,
		speed = 109.8,
		minwaterdepth = 4,
		movementclass = "BOAT3",
		nochasecategory = "UNDERWATER VTOL",
		objectname = "Units/CORESUPP.s3o",
		script = "Units/CORESUPP.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 500, --663,
		waterline = 0.7,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Flaka",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corships",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "2.05702972412 -6.65740128174 -1.55792999268",
				collisionvolumescales = "20 16 40",
				collisionvolumetype = "Box",
				damage = 300,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 15,
				metal = 50,
				object = "Units/coresupp_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 25,
				object = "Units/cor4X4B.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-tiny-long",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			laser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.16,
				corethickness = 0.1,--0.14,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5,--8.8,
				minintensity = 0.6,
				name = "LightLaser",
				noselfdamage = true,
				range = 280,
				reloadtime = 0.93,--0.63333,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 1.7,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					default = 41,--37,
					vtol = 6,
				},
			},
		},
		weapons = {
			[1] = {
				def = "LASER",
				maindir = "0 0 1",
				maxangledif = 285,
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				def = "LASER",
				maindir = "0 0 -1",
				maxangledif = 285,
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
