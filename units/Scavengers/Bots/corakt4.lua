return {
	corakt4 = {
		maxacc = 0.4416,
		maxdec = 0.8625,
		energycost = 120000,
		metalcost = 6000,
		buildpic = "CORAKT4.DDS",
		buildtime = 120000,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -2 -3",
		collisionvolumescales = "49 56 49",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "explosiont3",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		mass = 1000000,
		health = 11100,
		maxslope = 17,
		speed = 84.0,
		maxwaterdepth = 25,
		movementclass = "EPICBOT",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/CORAKT4.s3o",
		script = "Units/scavboss/CORAKT4.cob",
		seismicsignature = 0,
		selfdestructas = "explosiont3xl",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.848,
		turnrate = 1391.5,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbots",
			wpn1turretx = 300,
			wpn1turrety = 300,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.114540100098 -2.64214854004 2.11838531494",
				collisionvolumescales = "32.2373809814 13.5927429199 29.8415679932",
				collisionvolumetype = "Box",
				damage = 15000,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				metal = 3500,
				object = "Units/scavboss/corakt4_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 7500,
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 4,
				metal = 1750,
				object = "Units/cor4X4C.s3o",
				reclaimable = true,
				resurrectable = 0,
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
				[1] = "servtny1",
			},
			select = {
				[1] = "servtny1",
			},
		},
		weapondefs = {
			gator_laser = {
				areaofeffect = 17,
				avoidfeature = false,
				beamtime = 0.1,
				beamttl = 1,
				corethickness = 0.315,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 0,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 8,
				name = "Laser",
				noselfdamage = true,
				range = 600,
				reloadtime = 0.1,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrlit3",
				soundtrigger = 1,
				targetmoveerror = 0.15,
				thickness = 2.25,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1000,
				damage = {
					default = 100,
					vtol = 20,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "GATOR_LASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
