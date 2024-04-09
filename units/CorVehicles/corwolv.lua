return {
	corwolv = {
		maxacc = 0.02293,
		maxdec = 0.04585,
		energycost = 2500,
		metalcost = 170,
		buildpic = "CORWOLV.DDS",
		buildtime = 3550,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "35 17 49",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		hightrajectory = 1,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		health = 750,
		--maxreversevelocity = 0.648,
		maxslope = 10,
		speed = 48.0,
		maxwaterdepth = 8,
		movementclass = "TANK3",
		nochasecategory = "VTOL",
		objectname = "Units/CORWOLV.s3o",
		pushresistant = true,
		script = "Units/CORWOLV.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 299,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "corwidetracks",
		trackwidth = 28,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.2342,
		turnrate = 466,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			canareaattack = 1,
			cannon2name = "barrel2",
			cobkickbackrestorespeed = "10",
			driftratio = "1",
			firingceg = "barrelshot-tiny",
			kickback = "-2",
			model_author = "Mr Bob, Flaka",
			normaltex = "unittextures/cor_normal.dds",
			restoretime = "3000",
			rockrestorespeed = "1",
			rockspeed = "2",
			rockstrength = "0.02",
			sleevename = "sleeves",
			subfolder = "corvehicles",
			turretname = "turret",
			wpn1turretx = "200",
			wpn1turrety = "200",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "31 15 43",
				collisionvolumetype = "Box",
				damage = 430,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 0,
				metal = 103,
				object = "Units/corwolv_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 640,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 39,
				object = "Units/cor2X2E.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
			},
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			corwolv_gun = {
				accuracy = 275,
				areaofeffect = 113,
				avoidfeature = false,
				cegtag = "arty-medium",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				--model = "artshell-small.s3o",
				mygravity = 0.276,
				name = "LightArtillery",
				noselfdamage = true,
				range = 710,
				reloadtime = 7.1,--6.6,
				soundhit = "tawf113a",
				soundhitwet = "splsmed",
				soundstart = "cannhvy3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 580,
				damage = {
					default = 300,
					subs = 75,
					vtol = 30,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORWOLV_GUN",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
