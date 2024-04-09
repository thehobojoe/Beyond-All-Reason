return {
	corgant = {
		maxacc = 0,
		maxdec = 0,
		energycost = 62000,
		metalcost = 8400,
		builder = true,
		buildpic = "CORGANT.DDS",
		buildtime = 67300,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -5 8",
		collisionvolumescales = "150 43 150",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energystorage = 1400,
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 9,
		footprintz = 9,
		idleautoheal = 5,
		idletime = 1800,
		health = 17800,
		maxslope = 10,
		maxwaterdepth = 0,
		metalstorage = 800,
		objectname = "Units/CORGANT.s3o",
		--radardistance = 50,
		script = "Units/CORGANT.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 273,
		terraformspeed = 3000,
		usepiececollisionvolumes = 1,
		workertime = 600,
		yardmap = "oooooooooooooooooooocccccoooocccccoooocccccoooocccccoooocccccoooocccccoooocccccoo",
		buildoptions = {
			[1] = "corkorg",
			[2] = "corkarg",
			[3] = "corjugg",
			[4] = "corshiva",
			[5] = "corcat",
			[6] = "corsok",
			[7] = "cordemon",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corgant_aoplane.dds",
			buildinggrounddecalsizey = 12,
			buildinggrounddecalsizex = 12,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'buildert3',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/landfactories",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -21 0",
				collisionvolumescales = "114 74 129",
				collisionvolumetype = "CylZ",
				damage = 9600,
				featuredead = "HEAP",
				footprintx = 9,
				footprintz = 9,
				height = 20,
				metal = 5101,
				object = "Units/corgant_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 4800,
				footprintx = 9,
				footprintz = 9,
				height = 4,
				metal = 2040,
				object = "Units/cor7X7B.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:GantWhiteLight",
				[2] = "custom:YellowLight",
				[3] = "custom:WhiteLight",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			activate = "gantok2",
			build = "gantok2",
			canceldestruct = "cancel2",
			deactivate = "gantok2",
			repair = "lathelrg",
			underattack = "warning1",
			unitcomplete = "gantok1",
			working = "build",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "gantsel1",
			},
		},
	},
}
