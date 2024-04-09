return {
	cortrem = {
		maxacc = 0.0098,
		maxdec = 0.0196,
		energycost = 49000,
		metalcost = 1850,
		buildpic = "CORTREM.DDS",
		buildtime = 31100,
		canmove = true,
		category = "ALL WEAPON NOTSUB NOTAIR NOTHOVER SURFACE TANK EMPABLE",
		collisionvolumeoffsets = "0 -5 3",
		collisionvolumescales = "37 61 51",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "hugeexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		hightrajectory = 1,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		mass = 5001,
		health = 3000,
		--maxreversevelocity = 0.762,
		maxslope = 14,
		speed = 40.5,
		maxwaterdepth = 15,
		movementclass = "HTANK4",
		nochasecategory = "VTOL",
		objectname = "Units/CORTREM.s3o",
		onoffable = true,
		script = "Units/CORTREM.cob",
		seismicsignature = 0,
		selfdestructas = "hugeExplosionGenericSelfd",
		sightdistance = 351,
		trackoffset = -8,
		trackstrength = 8,
		tracktype = "corwidetracks",
		trackwidth = 50,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.95832,
		turnrate = 169.39999,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Mr Bob",
			onoffname = "siege",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corvehicles/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.25984954834 -1.01012474365 0.475593566895",
				collisionvolumescales = "55.5426483154 42.2261505127 61.5749359131",
				collisionvolumetype = "Box",
				damage = 2000,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 8,
				metal = 1006,
				object = "Units/cortrem_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				footprintx = 2,
				footprintz = 2,
				height = 2,
				metal = 474,
				object = "Units/cor2X2B.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			tremor_focus_fire = {

				accuracy = 0, --accuracy controlled by the customparams sector_fire
				areaofeffect = 200,
				avoidfeature = false,
				cegtag = "arty-medium",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.9,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				--impulseboost = 0.123,
				impulsefactor = 1.8,
				name = "RapidArtillery",
				noselfdamage = true,
				proximitypriority = -3,
				range = 1275,
				mygravity = 0.1333,
				reloadtime = 0.5,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundstart = "cannhvy2",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 420,
				customparams = {
					speceffect = "sector_fire",
					when = "always",
					max_range_reduction = "0.25",
					--active_range = "1275",
					--active_accuracy = "0",
					spread_angle = "15",
				},
				damage = {
					default = 150,
					subs = 75,
					vtol = 19,
				},

			},
			tremor_spread_fire = {

				accuracy = 0, --accuracy controlled by the customparams sector_fire
				areaofeffect = 200,
				avoidfeature = false,
				cegtag = "arty-medium",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.9,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				--impulseboost = 0.123,
				impulsefactor = 1.8,
				name = "RapidArtillery",
				noselfdamage = true,
				proximitypriority = -3,
				range = 1470,
				mygravity = 0.1333,
				reloadtime = 0.5,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundstart = "cannhvy2",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 420,
				customparams = {
					speceffect = "sector_fire",
					when = "always",
					max_range_reduction = "0.35",
					spread_angle = "24",
				},
				damage = {
					default = 150,
					subs = 75,
					vtol = 19,
				},

			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "TREMOR_FOCUS_FIRE",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "TREMOR_SPREAD_FIRE",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
