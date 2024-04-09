return {
	coruwmex = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 8192,
		energycost = 500,
		metalcost = 50,
		buildingmask = 0,
		buildpic = "CORUWMEX.DDS",
		buildtime = 1880,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE UNDERWATER EMPABLE",
		collisionvolumeoffsets = "0 -55 0",
		collisionvolumescales = "31 128 31",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energyupkeep = 3,
		explodeas = "tinyBuildingExplosionGeneric-uw",
		extractsmetal = 0.001,
		floater = true,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 205,
		maxslope = 30,
		metalstorage = 50,
		minwaterdepth = 15,
		objectname = "Units/coruwmex.s3o",
		onoffable = true,
		script = "Units/coruwmex.cob",
		seismicsignature = 0,
		selfdestructcountdown = 1,
		sightdistance = 169,
		usepiececollisionvolumes = true,
		waterline = 0,
		yardmap = "h cbbbbbbc bsossbsb bbsbbsob bsbbbbsb bsbbbbsb bosbbsbb bsbssosb cbbbbbbc",
		customparams = {
			unitgroup = 'metal',
			cvbuildable = true,
			metal_extractor = 1,
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/seaeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.610664367676 -0.375460168457 -0.573463439941",
				collisionvolumescales = "48.6033782959 20.3522796631 48.5289764404",
				collisionvolumetype = "Box",
				damage = 111,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 36,
				object = "Units/cor3X3A.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 56,
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 14,
				object = "Units/cor3X3B.s3o",
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
			activate = "waterex2",
			canceldestruct = "cancel2",
			deactivate = "waterex2",
			underattack = "warning1",
			working = "waterex2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "waterex2",
			},
		},
	},
}
