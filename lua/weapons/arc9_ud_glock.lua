AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "Urban Decay"

SWEP.PrintName = "Glock 17"
SWEP.IconOverride = "entities/arccw_ud_glock.png"

SWEP.Class = "Pistol"

SWEP.Trivia = {
    Designer = "John Browning",
    Manufacturer = "Colt Manufacturing Company",
    Calibre = "9x19mm",
    Mechanism = "Short Recoil",
    Origin = "United States of America",
    Year = "1924"
}

SWEP.Credits = {
    Author = "Urban Coalition",
}

SWEP.Description = [[Handgun originally designed by a curtain rod manufacturer for the Austrian military. Its reliable and cost-effective polymer design has since made it one of the most popular and widely used pistols in the world, common in military, police and civilian use alike.

Great backup weapon due to its quick draw and sight times, but a relatively low damage output makes it a less than ideal primary.]]

SWEP.ViewModel = "models/weapons/arccw/c_ud_glock.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 4, -5),
    TPIKPos = Vector(-18, 4, -4),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = ArcCW.UC.StdDmg["9mm"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["9mm"].min

SWEP.DamageRand = 0

SWEP.RangeMin = 15 / ARC9.HUToM
SWEP.RangeMax = 50 / ARC9.HUToM


SWEP.Penetration = ArcCW.UC.StdDmg["9mm"].pen
SWEP.RicochetChance = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 830 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 17 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 525

SWEP.Firemodes = {
    {
        Mode = 1
    }
}

SWEP.BarrelLength = 8

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1
SWEP.RecoilAutoControlHipFire = 2.5

SWEP.RecoilKick = 0.75

SWEP.FOV_RecoilAdd = 0 -- FOV to increase or decrease by.
SWEP.FOV_Recoil_TimeStart = 0.10 -- Peak
SWEP.FOV_Recoil_TimeEnd = 0.2 -- Until dropoff
SWEP.FOV_Recoil_FuncStart = math.ease.OutCirc -- Function to use
SWEP.FOV_Recoil_FuncEnd = math.ease.InCirc

SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true

SWEP.VisualRecoilUp = 1.5 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.25 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 25 -- Roll tilt for visual recoil.

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPositionBump = 1.5
SWEP.VisualRecoilPunchMultSights = 0.5

SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilCenter = Vector(3.73, -4, -2)

-------------------------- SPREAD

SWEP.Spread = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 2.5 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 2 -- How much the gun sways.

SWEP.SwayMultMidAir = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.1
SWEP.SwayMultRecoil = 1
SWEP.SwayMultHipFire = 1

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.2

SWEP.SpeedMult = 0.99
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

local path = ")^weapons/arccw_ud/glock/"
local ratel = {path .. "pistol_rattle_1.ogg", path .. "pistol_rattle_2.ogg", path .. "pistol_rattle_3.ogg"}
local common = ")^/arccw_uc/common/"

SWEP.IronSights = {
    Pos = Vector(-2.3, -5, 2.52),
    Ang = Angle(0.3, 0, 0),
    Magnification = 1.1,
}

SWEP.SprintAng = Angle(15, -15, 0)
SWEP.SprintPos = Vector(2, -1, 1)

SWEP.ViewModelFOVBase = 80
SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -1, -2)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 24, 4)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.AfterShotParticle = "barrel_smoke_plume"

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1
SWEP.CamCoolView = true

-------------------------- SOUNDS

SWEP.ShootSound = {
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
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.DryFireSound = path .. "dryfire.ogg"

SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ratel
SWEP.ExitSightsSound = ratel

local tail = ")/arccw_uc/common/9x19/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-9x19-pistol-ext-01.ogg",
    tail .. "fire-dist-9x19-pistol-ext-02.ogg",
    tail .. "fire-dist-9x19-pistol-ext-03.ogg",
    tail .. "fire-dist-9x19-pistol-ext-04.ogg",
    tail .. "fire-dist-9x19-pistol-ext-05.ogg",
    tail .. "fire-dist-9x19-pistol-ext-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    tail .. "fire-dist-9x19-pistol-int-01.ogg",
    tail .. "fire-dist-9x19-pistol-int-02.ogg",
    tail .. "fire-dist-9x19-pistol-int-03.ogg",
    tail .. "fire-dist-9x19-pistol-int-04.ogg",
    tail .. "fire-dist-9x19-pistol-int-05.ogg",
    tail .. "fire-dist-9x19-pistol-int-06.ogg"
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
    common .. "fire-dist-int-pistol-light-06.ogg",
}

-- CHAN_ITEM doesn't sound too right
local ci = CHAN_AUTO
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "fix_100",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
            {s = rattel, t = 0},
            {s = path .. "slide_pull_new.ogg",  t = 0.4, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.4, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
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
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 12 / 30,
        EventTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
        EventTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 12 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
        EventTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.5 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not Temporary
        },
    },
    ["fire_stock"] = {
        Source = "fire_stock",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0.03 }},
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0, c = ci}, -- Not Temporary
        },
    },
    ["fire_cycle"] = {
        Source = "fire_cycle",
        Time = 16 / 30,
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.7, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_10"] = {
        Source = "fix_10",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.7, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty_10"] = {
        Source = "fix_empty_10",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_33"] = {
        Source = "fix_33",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.7, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty_33"] = {
        Source = "fix_empty_33",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_100"] = {
        Source = "fix_100",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "slide_pull_new.ogg",  t = 0.4, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.4, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty_100"] = {
        Source = "cycle_empty",
        Time = 40 / 30,
        ShellEjectAt = false,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },

    ["cycle"] = {
        Source = "cycle",
        Time = 32 / 30,
        ShellEjectAt = 0.4,
        EventTable = {
            {s = rottle, t = 0, v = 50},
            {s = path .. "slide_pull_new.ogg",  t = 0.3, c = ci, v = 50},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci, v = 50},
            {s = path .. "slide_rel_new.ogg",        t = 0.55, c = ci, v = 50},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["cycle_empty"] = {
        Source = "cycle_empty",
        Time = 32 / 30,
        ShellEjectAt = 0.4,
        EventTable = {
            {s = rottle, t = 0, v = 50},
            {s = path .. "slide_pull_new.ogg",  t = 0.3, c = ci, v = 50},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci, v = 50},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },

    -- 17 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch_pull_small.ogg", t = 0.1, v = 0.5},
            {s = path .. "magout_partial_start.ogg",        t = 0.2, c = ci},
            {s = ratel, t = 0.37},
            {s = path .. "magout_partial.ogg",        t = 0.5, c = ci},
            {s = ratel, t = 0.4},
            {s = path .. "magin_new.ogg",         t = 0.65, c = ci},
            {s = rottle, t = 0.9, v = 0.6},
            {s = rottle, t = 1.2},
            {s = common .. "magpouch_replace_small.ogg", t = 1.375},
            {s = ratel, t = 1.6},
            {s = path .. "grab.ogg",         t = 1.8, c = ci},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 75 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = ratel, t = 0},
            {s = rottle, t = 0.1},
            {s = path .. "magout_empty.ogg",        t = 0.13, c = ci},
            {s = common .. "magpouch_pull_small.ogg", t = 0.35},
            {s = rottle, t = 0.36, v = 0.6},
            {s = path .. "magin_new.ogg",         t = 0.6, v = 1.5},
            {s = ratel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rottle, t = 1.15, v = 0.6},
            {s = ratel, t = 1.55},
            {s = path .. "chamber.ogg",      t = 1.55},
            {s = rottle, t = 1.6, v = 0.6},
            {s = ratel, t = 1.7},
            {s = path .. "grab.ogg",         t = 1.95, c = ci},
        },
    },
    ["reload_empty_fesiug"] = {
        Source = "reload_empty_fesiug",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 78 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "magout_empty.ogg",        t = 0.13, c = ci},
            {s = common .. "magpouch_pull_small.ogg", t = 0.35},
            {s = path .. "magin_new.ogg",         t = 0.55, c = ci},
            {s = rattel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rattel, t = 1.2},
            {s = path .. "sliderel_deact.ogg",  t = 1.62, c = ci},
            {s = path .. "chamber.ogg",        t = 1.85, v = 1.5},
            {s = rottle, t = 1.9},
        },
    },

    -- 10 Round Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = common .. "magpouch_pull_small.ogg", t = 0.025, c = ci},
            {s = rattel, t = 0.3},
            {s = path .. "magout_partial.ogg",        t = 0.2, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.33, v = 1.5},
            {s = common .. "magpouch_replace_small.ogg", t = 1.2},
            {s = rottle, t = 0.65},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 65 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "magrelease.ogg",    t = 0.15, c = ci},
            {s = path .. "magout_empty.ogg",        t = 0.1, c = ci},
            {s = common .. "magpouch_pull_small.ogg", t = 0.3, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.45, c = ci},
            {s = rattel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rottle, t = 0.9},
            {s = path .. "chamber.ogg",      t = 1.35, c = ci},
        },
    },

    -- 33 Round Reloads --

    ["reload_33"] = {
        Source = "reload_33",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = rattel, t = 0.3},
            {s = path .. "magout_partial.ogg",        t = 0.4, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.49},
            {s = rottle, t = 0.75},
            {s = common .. "magpouchin.ogg", t = 1.25, v = .35},
        },
    },
    ["reload_empty_33"] = {
        Source = "reload_empty_33",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "magrelease.ogg",    t = 0.16, c = ci},
            {s = path .. "magout_empty.ogg",        t = 0.16, c = ci},
            {s = common .. "magpouch.ogg", t = 0.35, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.55, c = ci},
            {s = rattel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rottle, t = 1.3},
            {s = path .. "chamber.ogg",      t = 1.42, c = ci},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.3,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = rattel, t = 0.7},
            {s = path .. "magin.ogg",         t = 1.0, c = ci},
            {s = rottle, t = 1.1},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.75,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        EventTable = {
            {s = rattel, t = 0},
            {s = path .. "magrelease.ogg",      t = 0.12, c = ci},
            {s = path .. "magout.ogg",        t = 0.12, c = ci},
            {s = path .. "magin.ogg",           t = 0.5, c = ci},
            {s = common .. "magdrop.ogg",  t = 0.55},
            {s = rattel, t = 0.7},
            {s = path .. "sliderel_deact.ogg",  t = 1.33, c = ci},
            {s = path .. "chamber.ogg",        t = 1.525, c = ci},
            {s = rottle, t = 1.6},
        },
    },
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
}