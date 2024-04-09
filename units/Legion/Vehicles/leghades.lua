return {
	leghades = {
		maxacc = 0.06788,
		maxdec = 0.13575,
		energycost = 600,
		metalcost = 50,
		buildpic = "LEGHADES.DDS",
		buildtime = 1500,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 -1",
		collisionvolumescales = "16 7 25",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 1,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 445,
		maxslope = 10,
		speed = 102.0,
		maxwaterdepth = 12,
		movementclass = "TANK2",
		name = "Hades",
		nochasecategory = "VTOL",
		objectname = "Units/LEGHADES.s3o",
		script = "Units/LEGHADES.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 300,
		trackoffset = 5,
		trackstrength = 4,
		tracktype = "armpincer_tracks",
		trackwidth = 24,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 2.424,
		turnrate = 544,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			firingceg = "barrelshot-tiny",
			kickback = "-2",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			sleevename = "sleeves",
			subfolder = "armvehicles",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0750198364258 0.20984 -0.70206451416",
				collisionvolumescales = "20.3918304443 9.5 30.2260284424",
				collisionvolumetype = "Box",
				damage = 250,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 40,
				object = "Units/leghades_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 193,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 20,
				object = "Units/arm2X2C.s3o",
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
				[1] = "veht1emgok",
			},
			select = {
				[1] = "veht1emgsel",
			},
		},
		weapondefs = {
			gauss = {
				areaofeffect = 8,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small",
				impactonly = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Close-quarters g2g gauss-cannon",
				noselfdamage = true,
				range = 210,
				reloadtime = 2,
				size = 2,
				soundhit = "xplomed1",
				soundhitwet = "splsmed",
				soundstart = "cannhvy1",
				soundstartvolume = 2,
				sprayangle = 500,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 550,
				damage = {
					default = 75,
					vtol = 35,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "GAUSS",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
