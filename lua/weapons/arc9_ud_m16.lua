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
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 3.5, -6.7),
    TPIKPos = Vector(-7, 3.5, -3),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = false

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

SWEP.RPM = 900

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

SWEP.Bash = true

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

SWEP.VisualRecoilUp = 0.4 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.1 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 20 -- Roll tilt for visual recoil.
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

SWEP.Sway = 1 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.1
SWEP.SwayMultRecoil = 1
SWEP.SwayMultHipFire = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.1

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.38 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.9
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- MALFUNCTIONS

SWEP.Malfunction = false -- not realism
SWEP.MalfunctionMeanShotsToFail = 300

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.815, -5, 1.3),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.SightMidPoint = {
    Pos = Vector(-3, 15, -5),
    Ang = Angle(0, 0, -45),
}

SWEP.PeekPos = Vector(2, 0, -1)
SWEP.PeekAng = Angle(0, 0, 0)

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

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1" -- Used for some muzzle effects.

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
SWEP.ShootSoundSilencedIndoor = {
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
SWEP.DistantShootSoundSilencedIndoor = {
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_20_empty"] = {
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_40_empty"] = {
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_60_empty"] = {
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_100_empty"] = {
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_9mm_empty"] = {
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
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
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
    ["ud_m16_barrel_14"] = {
        Bodygroups = {
            {4, 1},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.33, 19.5),
            },
        }
    },
    ["ud_m16_barrel_10"] = {
        Bodygroups = {
            {4, 4},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.33, 16),
            },
        }
    },

    ["ud_m16_gb_short"] = {
        AttPosMods = {
            [15] = {
                Pos = Vector(0, -0.33, 14),
            },
            [16] = {
                Pos = Vector(0, -1.62, 12.25),
            },
            [17] = {
                Pos = Vector(0, -1.62, 9),
            },
        }
    },
    ["ud_m16_gb_ru556"] = {
        AttPosMods = {
            [15] = {
                Pos = Vector(0, -0.33, 15.25),
            },
        }
    },

    ["ud_m16_fs_ru556"] = {
        AttPosMods = {
            [16] = {
                Pos = Vector(0, -1.62, 13.5),
            },
        }
    },

    ["ud_m16_top_flat"] = {
        Bodygroups = {
            {1, 1},
            {3, 2},
        }
    },

    ["ud_m16_ch_rail"] = {
        Bodygroups = {
            {3, 1},
        }
    },
    ["ud_m16_ch_rail2"] = {
        Bodygroups = {
            {3, 3},
        }
    },

    ["rail_fg"] = {
        Bodygroups = {{9, 1}},
    },

    ["ud_m16_gas_lp"] = {}, -- handled in code

    ["ud_stock_carbine_ex"] = {
        Bodygroups = {{7, 7}},
    },
    ["ud_stock_carbine_in"] = {
        Bodygroups = {{7, 8}},
    },
    ["ud_m16_stock_wood"] = {
        Bodygroups = {{7, 9}},
    },

    ["ud_m16_mag_20"] = {Bodygroups = {{2, 1}}},
    ["ud_m16_mag_40"] = {Bodygroups = {{2, 2}}},
    ["ud_m16_mag_60"] = {Bodygroups = {{2, 3}}},
    ["ud_m16_mag_100"] = {Bodygroups = {{2, 4}}},
    ["ud_m16_mag_9mm_20"] = {Bodygroups = {{2, 5}}},
    ["ud_m16_mag_9mm_32"] = {Bodygroups = {{2, 6}}},

    ["ud_m16_grip_ergo"] = {Bodygroups = {{8, 1}}},
    ["ud_m16_grip_skel"] = {Bodygroups = {{8, 2}}},
    ["ud_m16_grip_wood"] = {Bodygroups = {{8, 3}}},
}

local blen = {
    ["sd"] = -1,
    ["20"] = 1,
    ["14"] = 2,
    ["fpw"] = 2,
    ["10"] = 2,
}

local barrLookup = {
    ["sd"] = -1,
    ["20"] = 0,
    ["14"] = 1,
    ["fpw"] = 1,
    ["10"] = 2,
}

local hgLookup = {
    ["a2"]          = {0,4,0},
    ["a1"]          = {1,1,1},
    ["a4"]          = {2,5,0},
    ["heat"]        = {10,10,1},
    ["heatm203"]    = {11,11,1},
    ["wood"]        = {1,1,1},
    ["lmg"]         = {3,3,1},
    ["fpw"]         = {6,6,2},
    ["ru556"]       = {7,7,3},
    ["adar"]        = {8,8,2},
    ["hk416"]       = {9,9,3},
    ["607"]         = {9,9,0},
}

SWEP.Hook_ModifyElements = function(wep, data)
    local atts = wep.Attachments

    local barrel = string.Replace(atts[2].Installed or "20", "ud_m16_barrel_", "")
    local hg = string.Replace(atts[3].Installed or "a2","ud_m16_hg_","")
    local gbPos = hgLookup[hg] and hgLookup[hg][3] or 0

    if gbPos == 0 and barrel ~= "20" then
        data["ud_m16_gb_short"] = true
    elseif gbPos == 3 and barrel ~= "20" then
        data["ud_m16_gb_ru556"] = true
    end

    if gbPos == 3 then
        data["ud_m16_fs_ru556"] = true
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.model
    local atts = wep.Attachments
    if !IsValid(vm) then return end

    local barrel = string.Replace(atts[2].Installed or "20", "ud_m16_barrel_", "")
    local hg = string.Replace(atts[3].Installed or "ar","ud_m16_hg_","")
    local gbPos = hgLookup[hg] and hgLookup[hg][3] or 0
    local barr = barrLookup[barrel]

    if barrel == "sd" or (wep:HasElement("ud_m16_receiver_fpw") and barr > 0) then
        vm:SetBodygroup(6,5)
    else
        local flat = wep:HasElement("ud_m16_gas_lp") and 1 or 0

        if gbPos == 1 or barr == 0 then
            vm:SetBodygroup(6, 0 + flat)
        elseif gbPos == 2 then
            vm:SetBodygroup(6, 4 + flat * 2)
        elseif gbPos == 3 then
            vm:SetBodygroup(6, 4 - flat)
        else
            vm:SetBodygroup(6, 2 + flat)
        end
    end

    if hgLookup[hg] and blen[barrel] > 0 then
        vm:SetBodygroup(5, hgLookup[hg][blen[barrel]])
    end

    if hg == "a4" and atts[5].Installed then
        vm:SetBodygroup(9, 0)
    end
end

SWEP.Attachments = {
    {
        PrintName = "Top",
        Bone = "m16_parent",
        Pos = Vector(0, -1.75, 0),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_top",
        Installed = "ud_m16_top_ch",
        Integral = "ud_m16_top_ch",
    },
    {
        PrintName = "Barrel",
        Bone = "m16_parent",
        Pos = Vector(0, -0.33, 8),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_blen",
        Installed = "ud_m16_barrel_20",
        Integral = "ud_m16_barrel_20",
    },
    {
        PrintName = "Handguard",
        Bone = "m16_parent",
        Pos = Vector(0, -0.33, 10),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_hg",
        Installed = "ud_m16_hg_a2",
        Integral = "ud_m16_hg_a2",
    },
    {
        PrintName = "Muzzle",
        Bone = "m16_parent",
        Pos = Vector(0, -0.33, 23.25),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(1, 0, 0),

        Category = "muzzle",
    },
    {
        PrintName = "Underbarrel",
        Bone = "m16_parent",
        Pos = Vector(0, 1, 10),
        Ang = Angle(90, 0, 90),
        Icon_Offset = Vector(0, 0, 1),

        InstalledElements = {"rail_fg"},
        Category = {"grip"},
    },
    {
        PrintName = "Upper",
        Bone = "m16_parent",
        Pos = Vector(0, 0.5, 3.8),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_upper",
        Installed = "ud_m16_upper_556",
        Integral = "ud_m16_upper_556",
    },
    {
        PrintName = "Lower",
        Bone = "m16_parent",
        Pos = Vector(0, 0.5, 0),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_lower",
        Installed = "ud_m16_lower_burst",
        Integral = "ud_m16_lower_burst",
    },
    {
        PrintName = "Grip",
        Bone = "m16_parent",
        Pos = Vector(0, 3.5, -1.3),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_grip",
        Installed = "ud_m16_grip_standard",
        Integral = "ud_m16_grip_standard",
    },
    {
        PrintName = "Stock",
        Bone = "m16_parent",
        Pos = Vector(0, 0.25, -3),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_stock",
        Installed = "ud_m16_stock_full",
        Integral = "ud_m16_stock_full",
    },
    {
        PrintName = "Magazine",
        Bone = "m16_parent",
        Pos = Vector(0, 3.5, 4),
        Ang = Angle(90, 0, -90),

        ExcludeElements = {"ud_m16_upper_9mm"},
        Category = "ud_m16_mag",
        Installed = "ud_m16_mag_30",
        Integral = "ud_m16_mag_30",
    },
    {
        PrintName = "Ammo Type",
        Bone = "m16_parent",
        Pos = Vector(0, 5.5, 4.75),
        Ang = Angle(90, 0, -90),

        Category = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Bone = "m16_parent",
        Pos = Vector(0, 6, 2),
        Ang = Angle(90, 0, -90),

        Category = "uc_powder",
    },
    {
        PrintName = "Training Package",
        Bone = "m16_parent",
        Pos = Vector(0, 4, -5),
        Ang = Angle(90, 0, -90),

        Category = "uc_tp",
    },
    {
        PrintName = "Internals",
        Bone = "m16_parent",
        Pos = Vector(0, 4, -7),
        Ang = Angle(90, 0, -90),

        Category = "uc_fg",
    },
    {
        PrintName = "Gas Block",
        Bone = "m16_parent",
        Pos = Vector(0, -0.33, 18.5),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_gas",
        Installed = "ud_m16_gas",
        Integral = "ud_m16_gas",
    },
    {
        PrintName = "Front Sight",
        Bone = "m16_parent",
        Pos = Vector(0, -1.62, 16.75),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(0, 0, 1),

        Category = "ud_m16_fs",
        RequireElements = {"ud_m16_fs"},
    },
    {
        PrintName = "Tactical",
        Bone = "m16_parent",
        Pos = Vector(0, -1.62, 12),
        Ang = Angle(90, 0, 90),
        Icon_Offset = Vector(0, 0, -1),

        Category = "csgo_tac",
        RequireElements = {"ud_m16_fs"},
    },

    {
        PrintName = "Sticker A",
        StickerModel = "models/weapons/arc9/stickers/ud_m16_sticker_stock.mdl",
        Category = "stickers",
    },
}