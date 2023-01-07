local ATT = {}

ATT.PrintName = "M16 20\" Standard Barrel"
ATT.CompactName = "20\""
ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "mips smooth")
ATT.Description = [[Full-length barrel.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_blen"
ATT.SortOrder = -20

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = "ud_m16_hg_20",
        Icon_Offset = Vector(0, 0, 2),
        UnInstalledElements = {"ud_m16_hg_a2_20"},
    }
}

ARC9.LoadAttachment(ATT, "ud_m16_barrel_20")

ATT = {}

ATT.PrintName = "M16 14.5\" Carbine Barrel"
ATT.CompactName = "14.5\""
ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_14_5.png", "mips smooth")
ATT.Description = [[Carbine length barrel. Provides a small increase in firerate while maintaining respectable accuracy and range.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_blen"
ATT.SortOrder = -14

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = "ud_m16_hg_14",
        Icon_Offset = Vector(0, 0, 2),
        UnInstalledElements = {"ud_m16_hg_a2_14"},
    },
}

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

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = "ud_m16_hg_10",
        Icon_Offset = Vector(0, 0, 2),
        UnInstalledElements = {"ud_m16_hg_a2_10"},
    }
}

ATT.RPMMult = 1.15
ATT.AimDownSightsTimeAdd = -0.08
ATT.SprintToFireTimeAdd = -0.08
ATT.VisualRecoilMult = 1.5
ATT.SpreadAdd = 5 * ARC9.MOAToAcc
ATT.SwayMult = 0.75
ATT.RangeMaxMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 0.729167

ATT.BarrelLengthAdd = -10

ARC9.LoadAttachment(ATT, "ud_m16_barrel_10")

-----------------------------------------------------------
-- Handguard
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16A2 Ribbed Handguard"
ATT.CompactName = "Ribbed"
ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_14_5.png", "mips smooth")
ATT.Description = [[Standard handguard.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_hg"
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "ud_m16_hg_a2")


-----------------------------------------------------------
-- Upper Receiver
-----------------------------------------------------------

ATT = {}

ATT.PrintName = "M16 5.56x45mm Upper"
ATT.CompactName = "5.56x45mm"
ATT.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
ATT.Description = [[Standard upper receiver firing 5.56x45mm NATO rounds.]]
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Category = "ud_m16_upper"
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "ud_m16_upper_556")

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