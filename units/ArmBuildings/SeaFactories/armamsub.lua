return {
	armamsub = {
		maxacc = 0,
		maxdec = 0,
		energycost = 5500,
		metalcost = 1200,
		builder = true,
		buildpic = "ARMAMSUB.DDS",
		buildtime = 11100,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER UNDERWATER EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "118 40 119",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 150,
		explodeas = "largeBuildingexplosiongeneric-uw",
		footprintx = 8,
		footprintz = 8,
		idleautoheal = 5,
		idletime = 1800,
		health = 2650,
		maxslope = 10,
		minwaterdepth = 25,
		objectname = "Units/ARMAMSUB.s3o",
		script = "Units/ARMAMSUB.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd-uw",
		sightdistance = 234,
		terraformspeed = 750,
		workertime = 150,
		yardmap = "oooooooooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCo",
		buildoptions = {
			[1] = "armbeaver",
			[2] = "armpincer",
			[3] = "armcroc",
			[4] = "armjeth",
			[5] = "armaak",
			[6] = "armdecom",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armamsub_aoplane.dds",
			buildinggrounddecalsizey = 11,
			buildinggrounddecalsizex = 11,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'builder',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbuildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 0 2",
				collisionvolumescales = "118 35 107",
				collisionvolumetype = "Box",
				damage = 1440,
				energy = 0,
				footprintx = 7,
				footprintz = 7,
				height = 5,
				metal = 800,
				object = "Units/armamsub_dead.s3o",
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
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pvehactv",
			},
		},
	},
}
