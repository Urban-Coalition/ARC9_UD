local ATT = {}
local m16_hg_lhik_offset = Vector(-10, 0, 1.5 - 0.33)
local path

-----------------------------------------------------------
-- Top
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 Integrated Carry Handle"
ATT.CompactName = "Carry Handle"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "mips smooth")
ATT.Description = [[Standard integrated carry handle.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_top"
ATT.SortOrder = 0

ATT.Attachments = {
    {
        PrintName = "Top",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = "ud_m16_ch",
        Icon_Offset = Vector(0, 0, 0),
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_top_ch")

ATT = {}

ATT.PrintName = "M16 Flat Top"
ATT.CompactName = "Flat Top"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "mips smooth")
ATT.Description = [[Flat top rail, common in most modern AR models.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_top"
ATT.SortOrder = 0

ATT.Attachments = {
    {
        PrintName = "Optic",
        Pos = Vector(-2, 0, 0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1, 0, 0.2),
        Category = {"csgo_optic", "ud_m16_rail"},
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_top_flat")


ATT = {}

ATT.PrintName = "M16 Modern Rail Mount"
ATT.CompactName = "Mount (M)"
ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_ch.png", "mips smooth")
ATT.Description = [[A top rail mount with modern Picatinny rails.
Place your favourite optics without ruining the classic AR look.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_ch"
ATT.SortOrder = 1

ATT.Attachments = {
    {
        PrintName = "Optic",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
        Category = "csgo_optic",
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_ch_rail")

ATT = {}

ATT.PrintName = "M16 Classic Rail Mount"
ATT.CompactName = "Mount (C)"
ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_ch2.png", "mips smooth")
ATT.Description = [[An old-school top rail mount.
Place your favourite optics without ruining the classic AR look.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_ch"
ATT.SortOrder = 1

ATT.Attachments = {
    {
        PrintName = "Optic",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
        Category = "csgo_optic",
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_ch_rail2")

-----------------------------------------------------------
-- Gas Block
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 Gas Block"
ATT.CompactName = "Gas Block"
ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_fs.png", "mips smooth")
ATT.Description = [[Standard gas block that also acts as the front sight.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_gas"
ATT.SortOrder = 0

ARC9.LoadAttachment(ATT, "ud_m16_gas")

ATT = {}

ATT.PrintName = "M16 Low Profile Gas Block"
ATT.CompactName = "Low Profile"
ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_fs.png", "mips smooth")
ATT.Description = [[Low profile gas block that does not block line of sight.
Commonly used alongside a flat top rail and an optic.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_gas"
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "ud_m16_gas_lp")

-----------------------------------------------------------
-- Top Rail
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 Railed Carry Handle"
ATT.CompactName = "Carry Handle"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_ch.png", "mips smooth")
ATT.Description = [[Modern carry handle designed to be mounted on a flat top rail.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_rail"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/colt_ch.mdl"
ATT.ModelOffset = Vector(-1.1, 0, 0.1)
ATT.Scale = 0.75

ATT.IronSights = {
    Pos = Vector(-2.80, -5, 1.1),
    Ang = Angle(0, 0.4, 0),
    Magnification = 1.1,
}


ARC9.LoadAttachment(ATT, "ud_m16_rail_ch")

ATT = {}

ATT.PrintName = "M16 SIG Rear Sight"
ATT.CompactName = "SIG"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "mips smooth")
ATT.Description = [[Aftermarket rear sight for flat top receivers.
Functionally identical to other iron sights, but may look more tactical (or mall-ninja, depending on your taste).]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_rail"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/sig_rs.mdl"

ATT.ModelOffset = Vector(-2, -0.002, 0)
ATT.Scale = 0.86

ATT.IronSights = {
    Pos = Vector(-2.80, -5, 1),
    Ang = Angle(0, 0.5, 0),
    Magnification = 1.1,
}

ARC9.LoadAttachment(ATT, "ud_m16_rs_sig")

ATT = {}

ATT.PrintName = "KAC Rear Sight"
ATT.CompactName = "KAC"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth")
ATT.Description = [[Aftermarket rear sight for flat top receivers.
Functionally identical to other iron sights, but may look more tactical (or mall-ninja, depending on your taste).]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_rail"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/kac_rs.mdl"

ATT.ModelOffset = Vector(-1.5, -0.01, -0.09)
ATT.Scale = 0.9

ATT.IronSights = {
    Pos = Vector(-2.80, -5, 1),
    Ang = Angle(0, 0.5, 0),
    Magnification = 1.1,
}

ARC9.LoadAttachment(ATT, "ud_m16_rs_kac")

ATT = {}

ATT.PrintName = "Magpul Rear Sight"
ATT.CompactName = "Magpul"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_magpul.png", "mips smooth")
ATT.Description = [[Aftermarket rear sight for flat top receivers.
Functionally identical to other iron sights, but may look more tactical (or mall-ninja, depending on your taste).]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_rail"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/magpul_rs.mdl"

ATT.ModelOffset = Vector(-1.5, -0.005, 0)
ATT.Scale = 0.87

ATT.IronSights = {
    Pos = Vector(-2.80, -5, 0.95),
    Ang = Angle(0, 0.55, 0),
    Magnification = 1.1,
}

ARC9.LoadAttachment(ATT, "ud_m16_rs_magpul")

ATT = {}

ATT.PrintName = "Scalarworks Rear Sight"
ATT.CompactName = "Scalarworks"
ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_sclr.png", "mips smooth")
ATT.Description = [[Aftermarket rear sight for flat top receivers.
Functionally identical to other iron sights, but may look more tactical (or mall-ninja, depending on your taste).]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_rail"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/scalerworks_rs.mdl"

ATT.ModelOffset = Vector(-3, 0, -0.1)
ATT.Scale = 1.17

ATT.IronSights = {
    Pos = Vector(-2.80, -5, 0.95),
    Ang = Angle(0, 0.55, 0),
    Magnification = 1.1,
}

ARC9.LoadAttachment(ATT, "ud_m16_rs_sclr")


ATT = {}

ATT.PrintName = "UTG Low Profile Front Sight"
ATT.CompactName = "UTG"
ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_colt.png", "mips smooth")
ATT.Description = [[A2 style rail-mounted front sight for picatinny rails.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_fs"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/colt_fs.mdl"

ATT.Scale = 0.7

ARC9.LoadAttachment(ATT, "ud_m16_fs_utg")

ATT = {}

ATT.PrintName = "SIG Flip-Up Front Sight"
ATT.CompactName = "SIG"
ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_sig.png", "mips smooth")
ATT.Description = [[Removable front sight made by SIG Sauer. Designed to be mounted on forend rails.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_fs"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/sig_fs.mdl"

ATT.Scale = 0.7

ARC9.LoadAttachment(ATT, "ud_m16_fs_sig")

ATT = {}

ATT.PrintName = "Scalarworks Front Sight"
ATT.CompactName = "Scalarworks"
ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_sclr.png", "mips smooth")
ATT.Description = [[Removable front sight. Designed to be mounted on forend rails.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_fs"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/scalerworks_fs.mdl"

ATT.ModelOffset = Vector(0, 0.01, -0.1)
ATT.Scale = 0.95

ARC9.LoadAttachment(ATT, "ud_m16_fs_sclr")

ATT = {}

ATT.PrintName = "KAC Flip-Up Front Sight"
ATT.CompactName = "KAC"
ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_sclr.png", "mips smooth")
ATT.Description = [[Removable front sight made by Knight's Armament Company. Designed to be mounted on forend rails.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_fs"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/kac_fs.mdl"

ATT.Scale = 0.7

ARC9.LoadAttachment(ATT, "ud_m16_fs_kac")

ATT = {}

ATT.PrintName = "Magpul Flip-Up Front Sight"
ATT.CompactName = "Magpul"
ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_magpul.png", "mips smooth")
ATT.Description = [[Removable front sight made by Magpul. Designed to be mounted on forend rails.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_fs"
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw/atts/magpul_fs.mdl"

ATT.Scale = 0.73

ARC9.LoadAttachment(ATT, "ud_m16_fs_magpul")

-----------------------------------------------------------
-- Barrel
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 20\" Standard Barrel"
ATT.CompactName = "20\""
ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "mips smooth")
ATT.Description = [[Full-length barrel.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_blen"
ATT.SortOrder = -20

ARC9.LoadAttachment(ATT, "ud_m16_barrel_20")

ATT = {}

ATT.PrintName = "M16 14.5\" Carbine Barrel"
ATT.CompactName = "14.5\""
ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_14_5.png", "mips smooth")
ATT.Description = [[Carbine length barrel. Provides a small increase in firerate while maintaining respectable accuracy and range.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_blen"
ATT.SortOrder = -14

ATT.RPMMult = 1.1111111111
ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.04
ATT.VisualRecoilMult = 1.25
ATT.SpreadAdd = 2.5 * ARC9.MOAToAcc
ATT.SwayMult = 0.85
ATT.RangeMaxMult = 0.75
ATT.PhysBulletMuzzleVelocityMult = 0.83333333

ATT.BarrelLengthAdd = -6

ARC9.LoadAttachment(ATT, "ud_m16_barrel_14")

ATT = {}

ATT.PrintName = "M16 10.5\" Commando Barrel"
ATT.CompactName = "10.5\""
ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_10_5.png", "mips smooth")
ATT.Description = [[Short barrel, technically classified as a submachine gun barrel. Offers high fire rates at the cost of range.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_blen"
ATT.SortOrder = -10

ATT.RPMMult = 1.15
ATT.AimDownSightsTimeAdd = -0.08
ATT.SprintToFireTimeAdd = -0.08
ATT.VisualRecoilMult = 1.5
ATT.SpreadAdd = 5 * ARC9.MOAToAcc
ATT.SwayMult = 0.75
ATT.RangeMaxMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 0.729167

ATT.BarrelLengthAdd = -10
ATT.ExcludeElements = {"ud_m16_no10"}

ARC9.LoadAttachment(ATT, "ud_m16_barrel_10")

-----------------------------------------------------------
-- Handguard
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16A2 Ribbed Handguard"
ATT.CompactName = "Ribbed"
ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_ribbed.png", "mips smooth")
ATT.Description = [[Standard handguard.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_hg"
ATT.SortOrder = 0

ARC9.LoadAttachment(ATT, "ud_m16_hg_a2")

ATT = {}

ATT.PrintName = "M16A1 Triangular Handguard"
ATT.CompactName = "Triangular"
ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_triangle.png", "mips smooth")
ATT.Description = [[Classic handguard issued with the rifle's original models.
In comparison to the modern "ribbed" handguard, it is more comfortable to hold but prone to slipping.

This handguard does not have a short variant and cannot be used with the 10.5" barrel.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_hg"
ATT.SortOrder = 1

ATT.LHIK = true
ATT.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2)) + m16_hg_lhik_offset

ATT.ActivateElements = {"ud_m16_no10"}
ATT.ExcludeElements = {"ud_m16_barrel_10"}

ARC9.LoadAttachment(ATT, "ud_m16_hg_a1")

ATT = {}

ATT.PrintName = "M16A4 Tactical Rail Handguard"
ATT.CompactName = "Tactical"
ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_ris.png", "mips smooth")
ATT.Description = [[Barrel shroud equipped with a quad-rail RIS interface, allowing the rifle to accept the attachment of tactical devices and foregrips without any additional modification.
The railed surface is harder to hold.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_hg"
ATT.SortOrder = 1

ATT.SwayMult = 1.1

ATT.ActivateElements = {"ud_m16_fs"}

ARC9.LoadAttachment(ATT, "ud_m16_hg_a4")

ATT = {}

ATT.PrintName = "M-LOK Aluminum Handguard"
ATT.CompactName = "M-LOK"
ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_ru556.png", "mips smooth")
ATT.Description = [[Short handguard from the M-LOK line of AR-15 accessories, featuring a unique barrel shroud and top rail.
The thin aluminum frame has extremely low weight.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_hg"
ATT.SortOrder = 1

ATT.SwayMult = 0.9
ATT.AimDownSightsTimeAdd = -0.03
ATT.RecoilRandomSideMult = 1.15

ATT.LHIK = true
ATT.Model = "models/weapons/arccw/atts/ru556_lhik.mdl"
ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2)) + m16_hg_lhik_offset

ATT.ActivateElements = {"ud_m16_fs"}

ARC9.LoadAttachment(ATT, "ud_m16_hg_ru556")

-----------------------------------------------------------
-- Upper Receiver
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 5.56x45mm Upper Receiver"
ATT.CompactName = "5.56x45mm"
ATT.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
ATT.Description = [[Standard upper receiver firing 5.56x45mm NATO rounds.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_upper"
ATT.SortOrder = 0

ARC9.LoadAttachment(ATT, "ud_m16_upper_556")

ATT = {}

ATT.PrintName = "M16 .300 BLK Upper Receiver"
ATT.CompactName = ".300 BLK"
ATT.Icon = Material("entities/att/uc_bullets/300blackout.png", "mips smooth")
ATT.Description = [[Aftermarket receiver that fires .300 Blackout cartridges, identical to 5.56x45mm in diameter but with a much larger projectile.
Its low muzzle velocity makes it well suited for subsonic loads.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_upper"
ATT.SortOrder = 1

ATT.DamageMax = ArcCW.UC.StdDmg["300blk"].max
ATT.DamageMin = ArcCW.UC.StdDmg["300blk"].min
ATT.Penetration = ArcCW.UC.StdDmg["300blk"].pen

ATT.RangeMax = 300 / ARC9.HUToM

ATT.PhysBulletMuzzleVelocity = 410 / ARC9.HUToM

ATT.ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"

path = "weapons/arccw_ud/m16/"

ATT.ShootSound = {
    path .. "fire-300-01.ogg",
    path .. "fire-300-02.ogg",
    path .. "fire-300-03.ogg",
    path .. "fire-300-04.ogg",
    path .. "fire-300-05.ogg",
    path .. "fire-300-06.ogg"
}
ATT.ShootSoundIndoor = {
    path .. "fire-300-01.ogg",
    path .. "fire-300-02.ogg",
    path .. "fire-300-03.ogg",
    path .. "fire-300-04.ogg",
    path .. "fire-300-05.ogg",
    path .. "fire-300-06.ogg"
}
ATT.DistantShootSound = {
    path .. "fire-dist-300-01.ogg",
    path .. "fire-dist-300-02.ogg",
    path .. "fire-dist-300-03.ogg",
    path .. "fire-dist-300-04.ogg",
    path .. "fire-dist-300-05.ogg",
    path .. "fire-dist-300-06.ogg"
}

ARC9.LoadAttachment(ATT, "ud_m16_upper_300blk")

ATT = {}

ATT.PrintName = "R0635 9x19mm Upper Receiver"
ATT.CompactName = "9x19mm"
ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "mips smooth")
ATT.Description = [[A converted receiver that fires 9x19mm Parabellum rounds.
The smaller caliber drastically reduces recoil, but has much less range and is less accurate.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_upper"
ATT.SortOrder = 1

ATT.RPMMult = 1 / 0.85

ATT.DamageMax = ArcCW.UC.StdDmg["9mm"].max
ATT.DamageMin = ArcCW.UC.StdDmg["9mm"].min
ATT.Penetration = ArcCW.UC.StdDmg["9mm"].pen

ATT.RangeMax = 150 / ARC9.HUToM

ATT.RecoilMult = 0.75

path = ")^weapons/arccw_ud/glock/"

ATT.ShootSound = "weapons/arccw_ud/m16/fire_9.ogg"
ATT.ShootSoundIndoor = "weapons/arccw_ud/m16/fire_9.ogg"
ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
ATT.ShootSoundSilencedIndoor = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
ATT.DistantShootSound = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
ATT.DistantShootSoundIndoor = {
    path .. "fire-dist-int-01.ogg",
    path .. "fire-dist-int-02.ogg",
    path .. "fire-dist-int-03.ogg",
    path .. "fire-dist-int-04.ogg",
    path .. "fire-dist-int-05.ogg",
    path .. "fire-dist-int-06.ogg"
}

ATT.Attachments = {
    {
        PrintName = "Magazine",
        Pos = Vector(-0.2, 0, 3),
        Ang = Angle(90, 0, -90),

        Category = "ud_m16_mag_9mm",
        Integral = "ud_m16_mag_9mm_20",
    },
}

ATT.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_9mm"
end

ATT.Ammo = "pistol"
ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"

ARC9.LoadAttachment(ATT, "ud_m16_upper_9mm")

-----------------------------------------------------------
-- Lower Receiver
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16A2 Burst Lower Receiver"
ATT.CompactName = "Burst"
ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "mips smooth")
ATT.Description = [[Standard lower receiver firing up to 3 rounds with the trigger held.
In real life, the burst mechanism does not reset on trigger release, which can result in awkward half-bursts.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_lower"
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "ud_m16_lower_burst")

ATT = {}

ATT.PrintName = "M16A2 Cam-lock Burst Lower Receiver"
ATT.CompactName = "Alt. Burst"
ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "mips smooth")
ATT.Description = [[An alternative burst fire receiver that fires the entire burst with one trigger pull.
This has a slight benefit for recoil control, but is mostly down to preference.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_lower"
ATT.SortOrder = 1.1

ATT.InvAtt = "ud_m16_lower_burst"

ATT.Firemodes = {
    {
        Mode = 3,
        PostBurstDelay = 0.1,
        RunawayBurst = true,
        RecoilUpMult = 0.9,
    },
    {
        Mode = 1,
        RPMMult = 0.6
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_lower_burst2")


ATT = {}

ATT.PrintName = "M16A3 Automatic Lower Receiver"
ATT.CompactName = "Auto"
ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "mips smooth")
ATT.Description = [[A fire control group that supports fully automatic fire. Comes in semi-auto-safe configuration.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_lower"
ATT.SortOrder = 2

ATT.SpreadMult = 1.25
ATT.RPMMult = 0.85
ATT.RecoilAutoControlMult = 0.85

ATT.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_lower_auto")

ATT = {}

ATT.PrintName = "AR-15 Semi-automatic Lower Receiver"
ATT.CompactName = "Semi"
ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "mips smooth")
ATT.Description = [[A semi-automatic receiver sold in civilian markets.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_lower"
ATT.SortOrder = 3

ATT.RPMMult = 600 / 900
ATT.VisualRecoilMult = 0.8
ATT.SpreadMult = 0.75
ATT.PhysBulletMuzzleVelocityMult = 1.1

ATT.Firemodes = {
    {
        Mode = 1,
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_lower_semi")

-----------------------------------------------------------
-- Magazine
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "STANAG 30-Round Box Magazine"
ATT.CompactName = "30-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_30.png", "mips smooth")
ATT.Description = [[Standard magazine compatible among most 5.56x45mm rifles.
The thirty-round capacity is typically regarded as the best balance between capacity and ease of carry.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag"
ATT.SortOrder = 0

ARC9.LoadAttachment(ATT, "ud_m16_mag_30")

ATT = {}

ATT.PrintName = "USGI 20-Round Box Magazine"
ATT.CompactName = "20-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_20.png", "mips smooth")
ATT.Description = [[Straight magazines originally produced for the M16.
Its relatively lower capacity allows it to be lighter and more reliable than the standard magazines.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag"
ATT.SortOrder = 20

ATT.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

ATT.ClipSize = 20

ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = -0.05
ATT.ReloadTimeMult = 0.85
ATT.SwayMult = 0.75
ATT.MalfunctionMeanShotsToFailMult = 1.5


ARC9.LoadAttachment(ATT, "ud_m16_mag_20")

ATT = {}

ATT.PrintName = "AR-15 40-Round Box Magazine"
ATT.CompactName = "40-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "mips smooth")
ATT.Description = [[Aftermarket magazines with a slightly higher magazine capacity.
The length is awkward and encumbers the weapon slightly, but may be worth the additional rounds.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag"
ATT.SortOrder = 40

ATT.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

ATT.ClipSize = 40

ATT.SprintToFireTimeAdd = 0.05
ATT.AimDownSightsTimeAdd = 0.03
ATT.ReloadTimeMult = 1.15
ATT.SwayMult = 1.15

ARC9.LoadAttachment(ATT, "ud_m16_mag_40")

ATT = {}

ATT.PrintName = "Surefire 60-Round Casket Magazine"
ATT.CompactName = "60-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "mips smooth")
ATT.Description = [[Aftermarket magazine with double the standard capacity.
Adds noticeable weight to the weapon, and has a chance to jam.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag"
ATT.SortOrder = 60

ATT.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_60"
end

ATT.ClipSize = 60

ATT.Malfunction = true

ATT.SprintToFireTimeAdd = 0.1
ATT.AimDownSightsTimeAdd = 0.06
ATT.ReloadTimeMult = 1.25
ATT.SwayMult = 1.25

ARC9.LoadAttachment(ATT, "ud_m16_mag_60")

ATT = {}

ATT.PrintName = "C-Mag 100-Round Drum Magazine"
ATT.CompactName = "100-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_100.png", "mips smooth")
ATT.Description = [[Dual-drum magazine with an incredibly generous capacity.
Very heavy, and prone to feeding failures.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag"
ATT.SortOrder = 100

ATT.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end

ATT.ClipSize = 100

ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.75

ATT.SprintToFireTimeAdd = 0.2
ATT.AimDownSightsTimeAdd = 0.12
ATT.ReloadTimeMult = 1.5
ATT.SwayMult = 1.75

ARC9.LoadAttachment(ATT, "ud_m16_mag_100")


ATT = {}

ATT.PrintName = "R0635 9x19mm 20-Round Box Magazine"
ATT.CompactName = "20-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_9mm_20.png", "mips smooth")
ATT.Description = [[A short stick magazine used on the 9mm caliber AR-15.
It is much lighter compared to a rifle caliber magazine.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag_9mm"
ATT.SortOrder = 0

ATT.ClipSize = 20

ATT.AimDownSightsTimeAdd = -0.06
ATT.SprintToFireTimeAdd = -0.08
ATT.ReloadTimeMult = 0.85
ATT.SwayMult = 0.85

ARC9.LoadAttachment(ATT, "ud_m16_mag_9mm_20")

ATT = {}

ATT.PrintName = "R0635 9x19mm 32-Round Box Magazine"
ATT.CompactName = "32-Round"
ATT.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "mips smooth")
ATT.Description = [[A long stick magazine used on the 9mm caliber AR-15.
It is marginally lighter than the equivalent rifle caliber magazine.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_mag_9mm"
ATT.SortOrder = 1

ATT.ClipSize = 32

ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = -0.04
ATT.ReloadTimeMult = 0.95
ATT.SwayMult = 0.95

ARC9.LoadAttachment(ATT, "ud_m16_mag_9mm_32")

-----------------------------------------------------------
-- Grip
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 Factory Grip"
ATT.CompactName = "Factory"
ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_default.png", "mips smooth")
ATT.Description = [[Standard grip.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_grip"
ATT.SortOrder = 0

ARC9.LoadAttachment(ATT, "ud_m16_grip_standard")

ATT = {}

ATT.PrintName = "M16 Wooden Grip"
ATT.CompactName = "Wooden"
ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_default.png", "mips smooth")
ATT.Description = [[For a classy look.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_grip"
ATT.SortOrder = 1

ATT.AimDownSightsTimeAdd = 0.025
ATT.RecoilRandomSideMult = 0.95
ATT.RecoilPatternDriftMult = 0.95

ARC9.LoadAttachment(ATT, "ud_m16_grip_wood")

ATT = {}

ATT.PrintName = "M16 Ergonomic Grip"
ATT.CompactName = "Ergonomic"
ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_ergo.png", "mips smooth")
ATT.Description = [[Polymer grip with a comfortable shape, enabling faster handling.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_grip"
ATT.SortOrder = 1

ATT.AimDownSightsTimeAdd = -0.025
ATT.RecoilPatternDriftMult = 1.1

ARC9.LoadAttachment(ATT, "ud_m16_grip_ergo")

ATT = {}

ATT.PrintName = "M16 Skeletonized Grip"
ATT.CompactName = "Skeleton"
ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_skel.png", "mips smooth")
ATT.Description = [[Lightweight grip, marginally reducing weapon weight.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_grip"
ATT.SortOrder = 1

ATT.SprintToFireTimeAdd = -0.025
ATT.RecoilRandomSideMult = 1.1

ARC9.LoadAttachment(ATT, "ud_m16_grip_skel")

-----------------------------------------------------------
-- Stock
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 Full Stock"
ATT.CompactName = "Full"
ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_default.png", "mips smooth")
ATT.Description = [[Standard, full-sized stock.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_stock"
ATT.SortOrder = 0

ARC9.LoadAttachment(ATT, "ud_m16_stock_full")

ATT = {}

ATT.PrintName = "M16 Wooden Stock"
ATT.CompactName = "Wood"
ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_default.png", "mips smooth")
ATT.Description = [[A sturdy stock made from wood. Heavier than polymer, and almost makes you wish for a nuclear winter.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_stock"
ATT.SortOrder = 1

ATT.RecoilAutoControlMult = 1.1
ATT.SprintToFireTimeAdd = 0.02
ATT.AimDownSightsTimeAdd = 0.02
ATT.SpeedMult = 0.975
ATT.SpeedMultSights = 0.9

ARC9.LoadAttachment(ATT, "ud_m16_stock_wood")

ATT = {}

ATT.PrintName = "M16 Carbine Stock"
ATT.CompactName = "Carbine"
ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_carbine.png", "mips smooth")
ATT.Description = [[Adjustable combat stock used on the XM177 carbine. When collapsed, it allows the user to move swiftly in close quarters; when extended, it functions similarly to a full stock.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_stock"
ATT.SortOrder = 1

ATT.SwayMult = 1.1

ATT.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"ud_stock_carbine_ex"},
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"ud_stock_carbine_in"},
        RecoilRandomSideMult = 1.25,
        BarrelLengthAdd = -4,
        SpeedMultSights = 1.1,
        SprintToFireTimeAdd = -0.04,
        AimDownSightsTimeAdd = -0.04,
    },
}

ARC9.LoadAttachment(ATT, "ud_m16_stock_carbine")

