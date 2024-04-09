return {
	legbastion = {
		maxacc= 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 4096,
		energycost = 58000,
		metalcost = 4200,
		buildpic = "legbastion.DDS",
		buildtime = 79000,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0.0 0.0 0.0",
		collisionvolumescales = "60 150 60",
		collisionvolumetype = "box",
		corpse = "DEAD",
		damagemodifier = 0.25,
		energystorage = 1000,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 2,
		idletime = 1800,
		losemitheight = 80,
		health = 15000,
		maxslope = 10,
		maxwaterdepth = 0,
		nochasecategory = "VTOL",
		objectname = "Units/legbastion.s3o",
		onoffable = true,
		radardistance = 1200,
		radaremitheight = 80,
		script = "Units/legbastion.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 780,
		yardmap = "yoo0y o0ooo o0ooo yo0oy",
		customparams = {
			maxrange = 1125,
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corjuno_aoplane.dds",
			buildinggrounddecalsizey = 5,
			buildinggrounddecalsizex = 5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Hornet",
			normaltex = "unittextures/cor_normal.dds",
			removewait = true,
			subfolder = "corbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "60 150 60",
				collisionvolumetype = "Box",
				damage = 5400,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 2911,
				object = "Units/legbastion_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 2700,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 1644,
				object = "Units/cor3X3E.s3o",
				reclaimable = true,
				resurrectable = 0,
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
				[1] = "doom",
			},
			select = {
				[1] = "doom",
			},
		},
		weapondefs = {
			pineappleofdoom = {
				areaofeffect = 120,
				avoidfeature = false,
				avoidfriendly = true,
				beamtime = 1,
				camerashake = 0.1,
				--collidefriendly = false,
				corethickness = 0.4,
				craterareaofeffect = 120,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.45,
				energypershot = 500,
				explosiongenerator = "custom:genericshellexplosion-medium-beam",
				firestarter = 90,
				firetolerance = 300,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 6,
				name = "Cleansing Light",
				noselfdamage = true,
				predictboost = 0.3,
				proximitypriority = 1,
				range = 1100,
				reloadtime = 2.5,
				rgbcolor = "1 0.5 0",
				rgbcolor2 = "0.9 1.0 0.5",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "heatray3",
				soundstartvolume = 38,
				soundtrigger = 1,
				--sweepfire = true,
				targetmoveerror = 0.001,
				thickness = 5.5,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					default = 4500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "pineappleofdoom",
				onlytargetcategory = "SURFACE",
				--fastautoretargeting = true,
			}
		},
	},
}
