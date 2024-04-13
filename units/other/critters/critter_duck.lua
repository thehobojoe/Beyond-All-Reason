return {
	critter_duck = {
		maxacc = 0.12,
		blocking = false,
		maxdec = 1,
		energycost = 1,
		metalcost = 0,
		builder = false,
		buildpic = "critters/critter_duck.DDS",
		buildtime = 10,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		cantbetransported = true,
		capturable = false,
		category = "MOBILE NOWEAPON NOTAIR NOTSUB",
		defaultmissiontype = "Standby",
		explodeas = "SMALLBUG_DEATH",
		floater = true,
		footprintx = 1,
		footprintz = 1,
		idleautoheal = 0,
		leavetracks = false,
		maneuverleashlength = "640",
		mass = 24,
		health = 17,
		maxslope = 45,
		speed = 10.5,
		maxwaterdepth = 22,
		movementclass = "BOT1",
		movestate = -1,
		noautofire = false,
		nochasecategory = "MOBILE ",
		objectname = "Critters/critter_duck.s3o",
		reclaimable = false,
		script = "Critters/critter_duck.lua",
		seismicsignature = 0,
		selfdestructcountdown = 0,
		sightdistance = 500,
		smoothanim = true,
		sonarstealth = true,
		stealth = true,
		trackoffset = 0,
		trackstrength = 3,
		trackstretch = 1,
		trackwidth = 10,
		turninplace = 1,
		turnrate = 500,
		unitname = "critter_duck",
		upright = false,
		waterline = 6,
		workertime = 0,
		customparams = {
			paralyzemultiplier = 0,
			nohealthbars = true,
			subfolder = "other/critters",
		},
		
		
		
		weapondefs = {
			eyelaser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.2,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				energypershot = 0,
				explosiongenerator = "custom:laserhit-tiny-red",
				firestarter = 100,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 3.146,
				name = "LightLaser",
				noselfdamage = true,
				proximitypriority = 2,
				range = 266,
				reloadtime = 0.2,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "duckcry2",
				soundtrigger = 1,
				targetborder = 0.75,
				targetmoveerror = 0.1,
				thickness = 1.25,
				tolerance = 7000,
				turret = false,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				customparams = {
					nohealthbars = true,
				},
				damage = {
					default = 5,
					vtol = 2,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "EYELASER",
				onlytargetcategory = "",
			},
		},		
				
		
		
		
		
	},
}
