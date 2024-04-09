return {
	leggat	= {
		maxacc = 0.02,
		maxdec = 0.04,
		energycost = 2700,
		metalcost = 300,
		buildpic = "LEGGAT.DDS",
		buildtime = 4000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "34 20 40",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 2450,
		maxslope = 10,
		speed = 45.0,
		maxwaterdepth = 12,
		movementclass = "TANK3",
		name = "Gattling",
		nochasecategory = "VTOL",
		objectname = "Units/LEGGAT.s3o",
		script = "Units/LEGGAT.cob",
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
			cannon1name = "cannon1",
			driftratio = "0.3",
			firingceg = "barrelshot-small",
			flare1name = "flare1",
			kickback = "-2.4",
			lumamult = "1.2",
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "4",
			sleevename = "sleeve",
			subfolder = "armvehicles",
			turretname = "turret",
			wpn1turretx = "45",
			wpn1turrety = "80",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.0399932861328 0.00128356933594 -0.564636230469",
				collisionvolumescales = "25.7996826172 19.2875671387 29.4318847656",
				collisionvolumetype = "Box",
				damage = 1056,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 200,
				object = "Units/leggat_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 528,
				energy = 0,
				featurereclamate = "SMUDGE01",
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
			armmg_weapon = {
				accuracy = 7,
				areaofeffect = 16,
				avoidfeature = false,
				burst = 6,
				burstrate = 0.066,
				burnblow = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.03,
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
				range = 400,
				reloadtime = 0.4,
				rgbcolor = "1 0.95 0.4",
				--size = 2.25,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundstartvolume = 3,
				sprayangle = 1600,
				thickness = 0.6,
				tolerance = 6000,
				turret = true,
				--weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 921,
				damage = {
					commanders = 6,
					default = 12,
					vtol = 12,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARMMG_WEAPON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
