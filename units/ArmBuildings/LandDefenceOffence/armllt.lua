return {
	armllt = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 32768,
		energycost = 680,
		metalcost = 85,
		buildpic = "ARMLLT.DDS",
		buildtime = 2660,
		canrepeat = false,
		cantbetransported = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 5 0",
		collisionvolumescales = "32 77 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "mediumBuildingExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		mass = 5100,
		health = 620,
		maxslope = 14,
		maxwaterdepth = 0,
		nochasecategory = "MOBILE",
		objectname = "Units/ARMLLT.s3o",
		script = "Units/ARMLLT.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		sightdistance = 494,
		yardmap = "oooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armllt_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armbuildings/landdefenceoffence",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -4 0",
				collisionvolumescales = "32 84 32",
				collisionvolumetype = "CylY",
				damage = 336,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 53,
				object = "Units/armllt_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 168,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 21,
				object = "Units/arm2X2B.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "lltok",
			},
			select = {
				[1] = "lltselect",
			},
		},
		weapondefs = {
			arm_lightlaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.12,
				corethickness = 0.175,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 20,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7,
				name = "Light g2g laser turret",
				noselfdamage = true,
				range = 430,
				reloadtime = 0.46667,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 2,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					commanders = 112.5,
					default = 75,
					subs = 5,
					vtol = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_LIGHTLASER",
				onlytargetcategory = "NOTSUB",
				fastautoretargeting = true,
			},
		},
	},
}
