return {
	legstr = {
		maxacc = 0.253,
		maxdec = 0.8211,
		energycost = 5400,
		metalcost = 360,
		buildpic = "LEGSTR.DDS",
		buildtime = 7200,
		canmove = true,
		category = "BOT WEAPON ALL NOTSUB NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 -4",
		collisionvolumescales = "25 53 25",
		collisionvolumetype = "CYLY",
		corpse = "DEAD",
		explodeas = "mediumExplosionGeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 1780,
		maxslope = 17,
		speed = 84.0,
		maxwaterdepth = 32,
		movementclass = "BOT4",
		nochasecategory = "VTOL",
		objectname = "Units/LEGSTR.s3o",
		script = "Units/LEGSTR.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 400,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.98,
		turnrate = 1214.40002,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Zecrus",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armgantry",
			techlevel = 2,
			wpn1turretx = 90,
			wpn1turrety = 150,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.882118225098 0.0283161499023 6.0887298584",
				collisionvolumescales = "32.1447906494 31.2162322998 37.0860900879",
				collisionvolumetype = "Box",
				damage = 2400,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 250,
				object = "Units/legstr_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1200,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 125,
				object = "Units/arm2X2F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-tiny",
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
				[1] = "mavbok1",
			},
			select = {
				[1] = "mavbsel1",
			},
		},
		weapondefs = {
			armmg_weapon = {
				accuracy = 7,
				areaofeffect = 16,
				avoidfeature = false,
				burst = 12,
				burstrate = 0.033,
				burnblow = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1.5,
				intensity = 0.8,
				name = "Rapid-fire a2g machine guns",
				noselfdamage = true,
				ownerExpAccWeight = 4.0,
				proximitypriority = 3,
				range = 280,
				reloadtime = 0.4,
				rgbcolor = "1 0.95 0.4",
				--size = 2.25,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundstartvolume = 4.5,
				sprayangle = 1500,
				thickness = 0.6,
				tolerance = 6000,
				turret = true,
				--weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 933,
				damage = {
					default = 9,
					vtol = 3,
				},
			},
		},
		weapons = {
			[1] = {
				def = "ARMMG_WEAPON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
