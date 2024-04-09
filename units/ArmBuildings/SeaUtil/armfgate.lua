return {
	armfgate = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 2048,
		energycost = 72000,
		metalcost = 3900,
		builder = 0,
		buildpic = "ARMFGATE.DDS",
		buildtime = 59000,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR",
		collisionvolumeoffsets = "0 -30 0",
		collisionvolumescales = "53 65 53",
		collisionvolumetype = "cyly",
		corpse = "DEAD",
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 3900,
		maxslope = 10,
		speed = 0.0,
		minwaterdepth = 16,
		noautofire = true,
		norestrict = 1,
		objectname = "Units/armfgate.s3o",
		onoffable = false,
		script = "Units/armfgate.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 600,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "armfgate",
		waterline = 0,
		workertime = 0,
		customparams = {
			unitgroup = 'util',
			normaltex = "unittextures/Arm_normal.dds",
			removestop = true,
			removewait = true,
			shield_color_mult = 0.8,
			shield_power = 5000,
			shield_radius = 600,
			subfolder = "armbuildings/seautil",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -2.91625976558e-05 -0.414924621582",
				collisionvolumescales = "57.2399902344 32.5033416748 63.3298492432",
				collisionvolumetype = "Box",
				damage = 1800,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				metal = 2296,
				object = "Units/armfgate_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 900,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = 918,
				object = "Units/arm2X2D.s3o",
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
				[1] = "drone1",
			},
			select = {
				[1] = "drone1",
			},
		},
		weapondefs = {
			sea_repulsor = {
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				name = "NavalPlasmaRepulsor",
				range = 600,
				soundhitwet = "sizzle",
				weapontype = "Shield",
				damage = {
					default = 100,
				},
				shield = {
					alpha = 0.17,
					armortype = "shields",
					energyupkeep = 0,
					force = 2.5,
					intercepttype = 1,
					power = 3250,
					powerregen = 52,
					powerregenenergy = 562.5,
					radius = 600,
					repulser = true,
					smart = true,
					startingpower = 1100,
					visiblerepulse = true,
					badcolor = {
						[1] = 1,
						[2] = 0.2,
						[3] = 0.2,
						[4] = 0.2,
					},
					goodcolor = {
						[1] = 0.2,
						[2] = 1,
						[3] = 0.2,
						[4] = 0.17,
					},
				},
			},
		},
		weapons = {
			[1] = {
				def = "SEA_REPULSOR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
