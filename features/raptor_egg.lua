local raptor_egg =  {
    description = "Egg",
    blocking = 0,
    category = "corpses",
    damage = 10000,
    energy = 1000,
    featurereclamate = "SMUDGE01",
    footprintx = 1,
    footprintz = 1,
    height = 15,
    hitdensity = 999999,
    metal = 100,
    mass = 100,
    reclaimable = 1,
    resurrectable = 0,
    world = "All Worlds",
    smokeTime = 0,

    --collisions
    collisionVolumeType = "sphere",
    collisionVolumeScales = "2 2 2",
    collisionVolumeOffsets = "0 -2 0",
    selectionVolumeType = "sphere",
    selectionVolumeScales = "8 8 8",
}

local eggs = {}
local sizes = {"s","m","l",}
local colors = {"pink","white","red", "blue", "darkgreen", "purple", "green", "yellow", "darkred", "acidgreen"}
local mvalues = {s = 200, m = 500, l = 2000}
local evalues = {s = 2000, m = 4000, l = 20000}
local healthvalues = {s = 2000, m = 5000, l = 8000}

for _, size in pairs(sizes) do
    for _, color in pairs(colors) do
        local name = "raptor_egg_"..size.."_"..color
        local def = {}
        for k,v in pairs(raptor_egg) do def[k] = v    end
        def.customparams =     {
            model_author = "KDR11k, Beherith",
            normalmaps = "yes",
            normaltex = "unittextures/raptor_s_normals.png",
            treeshader = "yes",
            i18nfrom = 'raptor_egg'
        }
        def.name = name
        def.object =  "Raptors/raptoregg_"..size.."_"..color .. ".s3o"
        def.metal = mvalues[size]
        def.energy = evalues[size]
        def.reclaimtime = evalues[size]
        def.damage = healthvalues[size]
        eggs[name] = def
    end
end

return eggs
