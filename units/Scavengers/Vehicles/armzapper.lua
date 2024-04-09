return {
	armzapper = {
		maxacc = 0.3,
		maxdec = 0.5,
		energycost = 1200,
		metalcost = 80,
		buildpic = "armzapper.DDS",
		buildtime = 1200,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE GROUNDSCOUT EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "21 15 26",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "tinyExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = false,
		health = 150,
		maxslope = 26,
		speed = 168.0,
		maxwaterdepth = 12,
		movementclass = "TANK2",
		nochasecategory = "VTOL",
		objectname = "Units/armzapper.s3o",
		script = "Units/armzapper.cob",
		seismicsignature = 0,
		selfdestructas = "tinyExplosionGenericSelfd",
		sightdistance = 260,
		trackoffset = -2,
		trackstrength = 5,
		tracktype = "armstump_tracks",
		trackwidth = 20,
		turninplace = true,
		turninplaceanglelimit = 180,
		turninplacespeedlimit = 0,
		turnrate = 800,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			driftratio = "0",
			firingceg = "",
			kickback = "0",
			lumamult = "1.3",
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "0",
			sleevename = "gun",
			subfolder = "armvehicles",
			turretname = "gun",
			wpn1turretx = "300",
			wpn1turrety = "300",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.351249694824 -0.179103781738 -0.672737121582",
				collisionvolumescales = "23 13 25",
				collisionvolumetype = "Box",
				damage = 111,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 15,
				object = "Units/armfav_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 56,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 6,
				object = "Units/arm2X2F.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
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
				[1] = "veht1buggyok",
			},
			select = {
				[1] = "veht1buggysel",
			},
		},
		weapondefs = {
			bladewing_lyzer = {
				areaofeffect = 8,
				avoidfeature = false,
				avoidfriendly = false,
				beamdecay = 0.5,
				beamtime = 0.1,
				beamttl = 1,
				collidefriendly = false,
				corethickness = 0.12,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				duration = 0.01,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-emp",
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 6.6,
				name = "Light EMP laser",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 7,
				range = 220,
				reloadtime = 1.2,
				rgbcolor = "0.7 0.7 1",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "hackshot",
				soundtrigger = 1,
				targetmoveerror = 0.3,
				thickness = 1.4,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				damage = {
					default = 800,
				},
			},
		},
		weapons = {
			[1] = {
				def = "BLADEWING_LYZER",
				maindir = "0 0 1",
				maxangledif = 90,
				onlytargetcategory = "EMPABLE",
			},
		},
	},
}
