return {
	armart = {
		maxacc = 0.02727,
		maxdec = 0.05454,
		energycost = 2200,
		metalcost = 135,
		buildpic = "armart.DDS",
		buildtime = 3000,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -5 3",
		collisionvolumescales = "28 14 35",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hightrajectory = 1,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 620,
		--maxreversevelocity = 0.912,
		maxslope = 15,
		speed = 54.0,
		maxwaterdepth = 8,
		movementclass = "TANK3",
		nochasecategory = "VTOL",
		objectname = "Units/armart.s3o",
		pushresistant = true,
		script = "Units/armart.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 364,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "armpincer_tracks",
		trackwidth = 30,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.29228,
		turnrate = 393.79999,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			canareaattack = 1,
			kickback = "-6.25",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			sleevename = "sleeve",
			subfolder = "armvehicles",
			wpn1turretx = "40",
			wpn1turrety = "110",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 3.10058593911e-07 3.44650268555",
				collisionvolumescales = "30.6000061035 17.1577606201 39.1929931641",
				collisionvolumetype = "Box",
				damage = 418,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 24,
				metal = 92,
				object = "Units/armart_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 259,
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 37,
				object = "Units/arm3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
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
				[1] = "tnkt1artyok",
			},
			select = {
				[1] = "tnkt1artysel",
			},
		},
		weapondefs = {
			tawf113_weapon = {
				accuracy = 175,
				areaofeffect = 75,
				avoidfeature = false,
				cegtag = "arty-small",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small-bomb",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				--model = "artshell-small.s3o",
				mygravity = 0.276,
				name = "Long-range high-trajectory g2g plasma cannon",
				noselfdamage = true,
				range = 710,
				reloadtime = 4.3,--6.1,
				soundhit = "tawf113a",
				soundhitwet = "splsmed",
				soundstart = "cannhvy3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 600,
				damage = {
					default = 182,
					subs = 61,
					vtol = 20,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "TAWF113_WEAPON",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
