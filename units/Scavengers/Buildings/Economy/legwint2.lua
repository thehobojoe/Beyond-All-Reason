return {
	legwint2 = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		energycost = 1750,
		metalcost = 450,
		buildpic = "LEGWIN.DDS",
		buildtime = 17000,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 2 0",
		collisionvolumescales = "68 178 68",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energystorage = 5,
		explodeas = "windboom",
		footprintx = 6,
		footprintz = 6,
		idleautoheal = 5,
		idletime = 1800,
		health = 1990,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/scavbuildings/LEGWINT2.s3o",
		script = "Units/LEGWINT2.cob",
		seismicsignature = 0,
		selfdestructas = "windboom",
		sightdistance = 273,
		windgenerator = 500,
		yardmap = "oooooo oooooo oooooo oooooo oooooo oooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/legwint2_aoplane.dds",
			buildinggrounddecalsizey = 5,
			buildinggrounddecalsizex = 5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'energy',
			energymultiplier = 10, --Doesn't work for some reason. Acts like "energymultiplier = 1". Build cost is reduced 10x, until It's fixed.
			model_author = "Yzch",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landeconomy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 2 0",
				collisionvolumescales = "68 178 68",
				collisionvolumetype = "CylY",
				damage = 1125,
				energy = 0,
				footprintx = 6,
				footprintz = 6,
				height = 20,
				metal = 270,
				object = "Units/scavbuildings/LEGWINT2_dead.s3o",
				reclaimable = true,
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
			canceldestruct = "cancel2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "windgen",
			},
		},
	},
}
