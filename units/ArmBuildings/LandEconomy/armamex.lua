return {
	armamex = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 6092,
		energycost = 1500,
		metalcost = 200,
		buildingmask = 0,
		buildpic = "ARMAMEX.DDS",
		buildtime = 1800,
		canrepeat = false,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		cloakcost = 12,
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "70 50 70",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energyupkeep = 3,
		explodeas = "empblast",
		extractsmetal = 0.001,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		--initcloaked = true,
		health = 1610,
		maxslope = 30,
		maxwaterdepth = 20,
		metalstorage = 75,
		mincloakdistance = 66,
		objectname = "Units/ARMAMEX.s3o",
		onoffable = true,
		script = "Units/ARMAMEX.cob",
		seismicsignature = 0,
		selfdestructas = "empblast",
		selfdestructcountdown = 1,
		sightdistance = 286,
		stealth = true,
		yardmap = "h cbbbbbbc bssssosb bosbbssb bsbbbbsb bsbbbbsb bssbbsob bsossssb cbbbbbbc",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armamex_aoplane.dds",
			buildinggrounddecalsizey = 5,
			buildinggrounddecalsizex = 5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'metal',
			cvbuildable = true,
			metal_extractor = 1,
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armbuildings/landeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "70 50 70",
				collisionvolumetype = "CylY",
				damage = 870,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 9,
				hitdensity = 100,
				metal = 103,
				object = "Units/armamex_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 435,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				hitdensity = 100,
				metal = 41,
				object = "Units/arm3X3A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			activate = "mexrun2",
			canceldestruct = "cancel2",
			deactivate = "mexoff2",
			underattack = "warning1",
			working = "mexrun2",
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
				[1] = "servmed2",
			},
			select = {
				[1] = "mexon2",
			},
		},
	},
}
