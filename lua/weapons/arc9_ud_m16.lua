AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "Rifles"

SWEP.PrintName = "M16A2"
SWEP.IconOverride = "entities/arccw_ud_m16.png"

SWEP.Class = "Assault Rifle"

SWEP.Trivia = {
    Designer = "Eugene Stoner",
    Manufacturer = "FN Herstal USA",
    Calibre = "5.56x45mm NATO",
    Mechanism = "Gas-Operated Rotating Bolt",
    Origin = "United States of America",
    Year = "1979",
}

SWEP.Credits = {
    Author = "Urban Coalition",
}

SWEP.Description = [[Third generation of America's iconic military rifle. Army tests showed that soldiers were more likely to hit a target if they fired multiple shots, but were likely to spray in full-auto and fail to hit anything. As a result, they implemented a ratcheted three-round burst system which limited the maximum burst a soldier could fire to three shots.

Well-rounded gun with no major downsides.]]

SWEP.ViewModel = "models/weapons/arccw/c_ud_m16.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m16.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 6, -8),
    TPIKPos = Vector(-16, 4, -6),
    Ang = Angle(-5, 0, 180),
    Scale = 0.75
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = ArcCW.UC.StdDmg["556"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["556"].min

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 50 / ARC9.HUToM
SWEP.RangeMax = 350 / ARC9.HUToM

SWEP.Penetration = ArcCW.UC.StdDmg["556"].pen
SWEP.RicochetChance = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3150 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 800

SWEP.Firemodes = {
    {
        Mode = 3,
        PostBurstDelay = 0.1
    },
    {
        Mode = 1,
        RPMMult = 0.6
    }
}

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

SWEP.RecoilMultHipFire = 0.75

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 100 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1
SWEP.RecoilAutoControlHipFire = 2.5

SWEP.RecoilKick = 1

SWEP.FOV_RecoilAdd = 0 -- FOV to increase or decrease by.
SWEP.FOV_Recoil_TimeStart = 0.10 -- Peak
SWEP.FOV_Recoil_TimeEnd = 0.2 -- Until dropoff
SWEP.FOV_Recoil_FuncStart = math.ease.OutCirc -- Function to use
SWEP.FOV_Recoil_FuncEnd = math.ease.InCirc

SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true

SWEP.VisualRecoilUp = 0.5 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.1 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 30 -- Roll tilt for visual recoil.
SWEP.VisualRecoilPunch = 0.25

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPositionBump = 1.5

SWEP.VisualRecoilMultHipFire = 2
SWEP.VisualRecoilSideMultHipFire = 1.25

SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilCenter = Vector(4.675, 4, -1.3)

-------------------------- SPREAD

SWEP.Spread = 4 * ARC9.MOAToAcc

-------------------------- HANDLING

SWEP.FreeAimRadius = 10

SWEP.Sway = 1.5 -- How much the gun sways.

SWEP.SwayMultMidAir = 4
SWEP.SwayMultMove = 1.75
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.1
SWEP.SwayMultRecoil = 1.05
SWEP.SwayMultHipFire = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.1

SWEP.AimDownSightsTime = 0.32 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.34 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.9
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.815, 0, 1.3),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-4, 0, -8),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1.1,
}

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, -4, 0)

SWEP.ViewModelFOVBase = 80
SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -1, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 32, 5)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_5" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.AfterShotParticle = nil

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1
SWEP.CamCoolView = true

-------------------------- SOUNDS

local path = ")^weapons/arccw_ud/m16/"
local common = ")^/arccw_uc/common/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundIndoor = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}

SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}

SWEP.DistantShootSound = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}

SWEP.DistantShootSoundIndoor = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
}

SWEP.DistantShootSoundSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}

SWEP.DistantShootSoundIndoorSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}

SWEP.DryFireSound = path .. "dryfire.ogg"

SWEP.DryFireSingleAction = true

SWEP.TriggerDownSound = nil
SWEP.TriggerUpSound = nil

SWEP.EnterSightsSound = nil
SWEP.ExitSightsSound = nil

SWEP.FiremodeSound = nil

SWEP.Animations = {
    ["ready"] = {
        Source = "fix",
        Time = 45 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
        ProcDraw = true,
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["trigger"] = {
        Source = "idle",
        MinProgress = .1,
        EventTable = {
            {s = ")^weapons/arccw_ud/uzi/prefire.ogg",         t = 0, c = ci},
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    ["fire_cycle"] = {
        Source = "fire",
        Time = 13 / 30,
    },

    ["cycle"] = {
        Source = "fix",
        Time = 36 / 30 * 0.7,
        ShellEjectAt = 0.3,
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.05},
            {s = common .. "cloth_4.ogg",  t = 0.2},
            {s = path .. "chamber.ogg",  t = 0.3},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 45 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 45 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "ch_forward_empty.ogg",  t = 0.5},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2, v = 0.5},
            {s = ratel, t = 0.25},
            {s = path .. "magout_empty.ogg", 	 t = 0.23},
            {s = ratel, t = 0.5},
            {s = path .. "struggle.ogg",    t = 1, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab-polymer.ogg", t = 1.77, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 87 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = common .. "magpouch_gear.ogg", t = 0.1, v = 0.5},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = ratel, t = 0.5},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.7},
            {s = ratel, t = 1.9},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.0},
            {s = common .. "grab-polymer.ogg", t = 2.1, v = 0.35},
            {s = common .. "shoulder.ogg", t = 2.1},
        },
    },

    -- 20 Round Reloads --

    ["reload_20"] = {
        Source = "reload_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.05},
            {s = path .. "magout_empty.ogg", 	 t = 0.09},
            {s = common .. "magpouch_gear.ogg", t = 0.1},
            {s = rottle,  t = 0.75},
            {s = ratel, t = 0.85},
            {s = path .. "struggle.ogg",    t = 0.9, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle,  t = 1.1},
            {s = ratel, t = 1.125},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.65},
            {s = common .. "grab-polymer.ogg", t = 1.7, v = 0.25},
            {s = common .. "shoulder.ogg", t = 1.75},
        },
    },
    ["reload_empty_20"] = {
        Source = "reload_empty_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        EventTable = {
            {s = common .. "magpouch_gear.ogg", t = 0},
            {s = rottle, t = 0.01},
            {s = ratel, t = 0.05},
            {s = path .. "magout_empty.ogg", 	 t = 0.075},
            {s = rottle, t = 0.75},
            {s = ratel, t = 0.9},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.8, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.85},
            {s = rottle, t = 1.4},
            {s = ratel, t = 1.4},
            {s = path .. "chamber_press.ogg", t = 1.72},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.95},
            {s = common .. "grab-polymer.ogg", t = 2.075, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.13},
        },
    },

    -- 40 Round Reloads --

    ["reload_40"] = {
        Source = "reload_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 0.1},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = common .. "magpouch_gear.ogg", t = 0.25},
            {s = rottle, t = 0.75},
            {s = ratel, t = 0.8},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.0},
            {s = rottle, t = 1.1},
            {s = ratel, t = 1.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.65},
            {s = common .. "shoulder.ogg", t = 1.75},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 85 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = common .. "magpouch_gear.ogg", t = 0.25},
            {s = rottle,  t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle,  t = 1.475},
            {s = ratel,  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.78},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.1},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 60 Round Reloads --

    ["reload_60"] = {
        Source = "reload_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2},
            {s = path .. "magout_empty.ogg", 	 t = 0.25},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.1},
            {s = common .. "grab-polymer.ogg", t = 1.78, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.8},
            {s = common .. "shoulder.ogg", t = 1.9},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 85 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2},
            {s = path .. "magout_empty.ogg", 	 t = 0.25},
            {s = rottle, t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.475},
            {s = ratel, t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.8},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.1},
            {s = common .. "grab-polymer.ogg", t = 2.15, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.75,
        LastClip1OutTime = 0.9,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.8},
            {s = common .. "grab-polymer.ogg", t = 1.85, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.0},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 2.5,
        LastClip1OutTime = 0.7,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = rottle, t = 1.75},
            {s = path .. "chback.ogg",   t = 2.0},
            {s = common .. "cloth_4.ogg",  t = 2.05},
            {s = path .. "chamber.ogg",  t = 2.22},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.5},
            {s = common .. "grab-polymer.ogg", t = 2.55, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.6},
        },
    },

    -- 9mm 32 Round Reloads --

    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 70 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.15},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 16 / 30},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 27 / 30},
            {s = rottle, t = 1.1},
            {s = common .. "magpouchin.ogg", t = 1.55},
            {s = common .. "shoulder.ogg", t = 1.93},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_empty_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 80 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 0.1},
            {s = common .. "magpouch.ogg", t = 0.45},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 0.8},
            {s = path .. "chamber_press.ogg", t = 1.7},
            {s = rottle, t = 1.39},
            {s = common .. "shoulder.ogg", t = 2.15},
        },
    },


    ["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        EventTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter_empty",
        -- time = 35 / 60,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop_empty",
        -- time = 72 / 60,
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        -- time = 66 / 60,
        EventTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.BulletBones = {
    [2] = "m16_bullets1",    [3] = "m16_bullets2"
}

SWEP.HideBones = {
}

SWEP.ReloadHideBoneTables = {
}

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
}