local L = Apollo.GetPackage("Gemini:Locale-1.0").tPackage:NewLocale("ItemPreviewImproved", "deDE")
if not L then return end

L["FABkits"] = {
{
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5000,
    nId = 4,
    strName = "Wasserbrunnen",
    strTooltip = "Ein dekorativer Brunnen für dein Land.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Wasserbrunnen"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_588_Waterwell_01"
      }, {
        strSprite = "Icon_Housing1x1_588_Waterwell_02"
      }, {
        strSprite = "Icon_Housing1x1_588_Waterwell_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 2500,
    nId = 7,
    strName = "Silo",
    strTooltip = "Ein turmhoher Silo für Futter und Getreide.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Silo"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_596_Silo_01"
      }, {
        strSprite = "Icon_Housing1x1_596_Silo_02"
      }, {
        strSprite = "Icon_Housing1x1_596_Silo_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 8,
    strName = "Garten (Rang 1)",
    strTooltip = "Du hast etwas zu pflanzen? Dieser einfache Garten bietet dir eine Handvoll Stellen, an denen du dein Anbautalent ausprobieren kannst.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Garten (Rang 1)"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = true,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 7500,
        strName = "Garten (Rang 1)"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_597_Garden_Tier1_01"
      }, {
        strSprite = "Icon_Housing1x1_597_Garden_Tier1_02"
      }, {
        strSprite = "Icon_Housing1x1_597_Garden_Tier1_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 2500,
    nId = 23,
    strName = "Windmühle",
    strTooltip = "Was für eine pittoreske Windmühle. Sie ist bestimmt mehr zur Dekoration da als dass sie nützlich ist, oder?",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Windmühle"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 19+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_659_Windmill_01"
      }, {
        strSprite = "Icon_Housing1x1_659_Windmill_02"
      }, {
        strSprite = "Icon_Housing1x1_659_Windmill_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 25,
    strName = "Mineralvorkommen (Rang 1)",
    strTooltip = "Als Bergarbeiter kannst du hier ohne Konkurrenz niedrigstufige Erze abbauen. Dieses Stück Land funktioniert nicht mehr, wenn deine Pacht ausgelaufen ist.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Mineralvorkommen (Rang 1)"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = true
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Mineralvorkommen (Rang 1)"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_590_Mineral_Deposit_Tier1_01"
      }, {
        strSprite = "Icon_Housing1x1_590_Mineral_Deposit_Tier1_02"
      }, {
        strSprite = "Icon_Housing1x1_590_Mineral_Deposit_Tier1_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 28,
    strName = "Reliktausgrabung (Rang 1)",
    strTooltip = "Diese Ausgrabungsstätte hat Omniplasma und diverse Relikte auf niedriger Stufe zu bieten. Reliktjäger sollten aktiv werden, bevor die Pacht ausläuft.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Reliktausgrabung (Rang 1)"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = true
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Reliktausgrabung (Rang 1)"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_592_Excavation_Site_Tier1_01"
      }, {
        strSprite = "Icon_Housing1x1_592_Excavation_Site_Tier1_02"
      }, {
        strSprite = "Icon_Housing1x1_592_Excavation_Site_Tier1_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 12500,
    nId = 80,
    strName = "Gemütliches Granokhaus",
    strTooltip = "Ein von den eigensinnigen Granok robust erbautes, komfortables Haus.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gemütliches Granokhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Nur für Verbannte"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Cozy_Granok_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Granok_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Granok_House_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 12500,
    nId = 83,
    strName = "Gemütliches Aurinhaus",
    strTooltip = "Ein von den naturliebenden Aurin gebautes, pittoreskes Haus.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gemütliches Aurinhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Nur für Verbannte"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Cozy_Aurin_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Aurin_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Aurin_House_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 44,
    nCost = 12500,
    nId = 86,
    strName = "Geräumiges Verbanntenhaus",
    strTooltip = "Ein geräumiges Haus im Verbannten-Baustil.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Geräumiges Verbanntenhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Nur für Verbannte"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Erfordert Stufe 36"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spacious_Exile_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Exile_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Exile_House_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 90,
    strName = "Eldan-Statue",
    strTooltip = "Die Eldan meisterten mehrere Kräfte des Universums. Dieses spezielle Relikt gewährt dir besondere Buffs.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Eldan-Statue"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 4370,
        strName = "Eldan-Statue"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1365_Buff_Statue_01"
      }, {
        strSprite = "Icon_Housing1x1_1365_Buff_Statue_02"
      }, {
        strSprite = "Icon_Housing1x1_1365_Buff_Statue_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 91,
    strName = "Übungsgelände",
    strTooltip = "Trainiere deine Kampftechniken und perfektioniere deinen Stil an einer wehrlosen Zielattrappe.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Übungsgelände"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 15+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Übungsgelände"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1359_Training_Lounge_01"
      }, {
        strSprite = "Icon_Housing1x1_1359_Training_Lounge_02"
      }, {
        strSprite = "Icon_Housing1x1_1359_Training_Lounge_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 92,
    strName = "Herstellungskiosk",
    strTooltip = "Endlich! Mit diesem Herstellungstisch auf deinem Grund und Boden kannst du in aller Ruhe arbeiten …",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Herstellungskiosk"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Herstellungskiosk"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1366_Crafting_Bench_01"
      }, {
        strSprite = "Icon_Housing1x1_1366_Crafting_Bench_02"
      }, {
        strSprite = "Icon_Housing1x1_1366_Crafting_Bench_03"
      }, {
        strSprite = "Icon_Housing1x1_1366_Crafting_Bench_04"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 93,
    strName = "Grillgrube",
    strTooltip = "Entspann dich und genieße ein wenig Ruhe beim Grillen.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 14470,
        strName = "Grillgrube"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 7500,
        strName = "Grillgrube"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_589_BBQ_Pit_Tier1_01"
      }, {
        strSprite = "Icon_Housing1x1_589_BBQ_Pit_Tier1_02"
      }, {
        strSprite = "Icon_Housing1x1_589_BBQ_Pit_Tier1_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 4000,
    nId = 94,
    strName = "Raumschiff",
    strTooltip = "Dein eigenes Raumschiff nur für dich, an deinem Grundstück angedockt.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Raumschiff"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 35+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 32000,
        strName = "Raumschiff"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1x2_Spaceship_01"
      }, {
        strSprite = "Icon_Housing1x2_1x2_Spaceship_02"
      }, {
        strSprite = "Icon_Housing1x2_1x2_Spaceship_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 100,
    nId = 98,
    strName = "Heckenlabyrinth",
    strTooltip = "Dieses Labyrinth aus Hecken sorgte für unkomplizierte Unterhaltung, bevor nagende Jabbits fast das ganze Gesträuch abfraßen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Heckenlabyrinth"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1427_Hedge_Maze_01"
      }, {
        strSprite = "Icon_Housing1x1_1427_Hedge_Maze_02"
      }, {
        strSprite = "Icon_Housing1x1_1427_Hedge_Maze_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 100,
    nId = 99,
    strName = "Großes Heckenlabyrinth",
    strTooltip = "Spiel Verstecken oder flaniere einfach nur durch das kunstvoll angelegte Grün der Hecken.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Großes Heckenlabyrinth"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1460_Hedge_Maze_01"
      }, {
        strSprite = "Icon_Housing1x2_1460_Hedge_Maze_02"
      }, {
        strSprite = "Icon_Housing1x2_1460_Hedge_Maze_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 100,
    strName = "Dickicht (Rang 1)",
    strTooltip = "Der Traum eines jeden Überlebenskünstlers! Hier hast du eine garantierte Quelle von Materialien, solange deine Pacht läuft.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Dickicht (Rang 1)"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = true
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Dickicht (Rang 1)"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1436_Survivalist_Tier1_01"
      }, {
        strSprite = "Icon_Housing1x1_1436_Survivalist_Tier1_02"
      }, {
        strSprite = "Icon_Housing1x1_1436_Survivalist_Tier1_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 4000,
    nId = 102,
    strName = "Niedrigschwerkraftfeld",
    strTooltip = "Simuliere niedrige Schwerkraft und katapultiere dich in den Himmel mit Hilfe deines eigenen Niedrigschwerkraftfelds. Jipiiiieeee!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Niedrigschwerkraftfeld"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 35+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 40000,
        strName = "Niedrigschwerkraftfeld"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1476_Low_Grav_01"
      }, {
        strSprite = "Icon_Housing1x1_1476_Low_Grav_02"
      }, {
        strSprite = "Icon_Housing1x1_1476_Low_Grav_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 10000,
    nId = 118,
    strName = "Portal: Datenzone (Schlachtzug)",
    strTooltip = "Ein Portal, das dich und deine Kumpel direkt zur Datenzone teleportiert!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Portal: Datenzone (Schlachtzug)"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 125000,
        strName = "Portal: Datenzone (Schlachtzug)"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1526_Datascape_Raid_Portal_01"
      }, {
        strSprite = "Icon_Housing1x1_1526_Datascape_Raid_Portal_02"
      }, {
        strSprite = "Icon_Housing1x1_1526_Datascape_Raid_Portal_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 10,
    nId = 128,
    strName = "Knochengrube",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Die richtige Einstellung” zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Knochengrube"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 37+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 45000,
        strName = "Knochengrube"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1701_Bone_Pit_01"
      }, {
        strSprite = "Icon_Housing1x1_1701_Bone_Pit_02"
      }, {
        strSprite = "Icon_Housing1x1_1701_Bone_Pit_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5,
    nId = 141,
    strName = "Schwürfel-Futtertrog",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Wenn Schwürfel fliegen” zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Schwürfel-Futtertrog"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 17+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Schwürfel-Futtertrog"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_605_Cubig_Feeder_01"
      }, {
        strSprite = "Icon_Housing1x1_605_Cubig_Feeder_02"
      }, {
        strSprite = "Icon_Housing1x1_605_Cubig_Feeder_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5,
    nId = 152,
    strName = "Fest (Rang 1)",
    strTooltip = "Vergnüge dich auf deinem persönlichen Fest mit Speis und Trank.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 1,
        nRequiredCost = 1,
        strName = "Fest (Rang 1)"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 7500,
        strName = "Fest (Rang 1)"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1886_Festival_Tier1_01"
      }, {
        strSprite = "Icon_Housing1x1_1886_Festival_Tier1_02"
      }, {
        strSprite = "Icon_Housing1x1_1886_Festival_Tier1_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 30,
    nId = 159,
    strName = "Feuerwerkbatterie",
    strTooltip = "Ein Sortiment Feuerwerkbatterien für dein eigenes Grundstück.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Feuerwerkbatterie"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 30+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Feuerwerkbatterie"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1732_Fireworks_01"
      }, {
        strSprite = "Icon_Housing1x1_1732_Fireworks_02"
      }, {
        strSprite = "Icon_Housing1x1_1732_Fireworks_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 50,
    nId = 160,
    strName = "Blumengarten",
    strTooltip = "Ein hübscher Garten voller Blumen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Blumengarten"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1733_Flower_Garden_01"
      }, {
        strSprite = "Icon_Housing1x1_1733_Flower_Garden_02"
      }, {
        strSprite = "Icon_Housing1x1_1733_Flower_Garden_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 40,
    nId = 164,
    strName = "Granok-Anhänger",
    strTooltip = "Wolltest du schon immer mal deinen eigenen Granok-Mietnomaden? Hier ist er, komplett mit seinem abgewrackten Wohnwagen!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Granok-Anhänger"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 26+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 53860,
        strName = "Granok-Anhänger"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1737_Granok_Trailer_01"
      }, {
        strSprite = "Icon_Housing1x1_1737_Granok_Trailer_02"
      }, {
        strSprite = "Icon_Housing1x1_1737_Granok_Trailer_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 24,
    nId = 181,
    strName = "Sanitätsposten",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Sanitäter!“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Sanitätsposten"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 18+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 50000,
        strName = "Sanitätsposten"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1755_Medical_Station_01"
      }, {
        strSprite = "Icon_Housing1x1_1755_Medical_Station_02"
      }, {
        strSprite = "Icon_Housing1x1_1755_Medical_Station_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5,
    nId = 184,
    strName = "Außenklo",
    strTooltip = "Jetzt musst du nicht mehr im Protostar-Einkaufszentrum anstehen! Jetzt kannst du deinen Darm auf deinem eigenen Grund und Boden entleeren!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Außenklo"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 2000,
        strName = "Außenklo"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1758_Outhouse_01"
      }, {
        strSprite = "Icon_Housing1x1_1758_Outhouse_02"
      }, {
        strSprite = "Icon_Housing1x1_1758_Outhouse_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 25,
    nId = 187,
    strName = "Energiegenerator",
    strTooltip = "Dieser Energiegenerator könnte problemlos etliche Verteidigungskanonen antreiben!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Energiegenerator"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 34+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1920_Power_Generator_01"
      }, {
        strSprite = "Icon_Housing1x1_1920_Power_Generator_02"
      }, {
        strSprite = "Icon_Housing1x1_1920_Power_Generator_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 45,
    nId = 192,
    strName = "Forschungslabor",
    strTooltip = "Ein gut ausgestattetes Labor … für wissenschaftliche Zwecke.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Forschungslabor"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 41+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 67860,
        strName = "Forschungslabor"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1766_Science_Lab_01"
      }, {
        strSprite = "Icon_Housing1x1_1766_Science_Lab_02"
      }, {
        strSprite = "Icon_Housing1x1_1766_Science_Lab_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 49,
    nId = 193,
    strName = "Luftabwehrturm",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Dampfgleiteraufregung” zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Luftabwehrturm"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 45+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 65000,
        strName = "Luftabwehrturm"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1767_Sniper_Tower_Exile_01"
      }, {
        strSprite = "Icon_Housing1x1_1767_Sniper_Tower_Exile_02"
      }, {
        strSprite = "Icon_Housing1x1_1767_Sniper_Tower_Exile_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 12,
    nId = 206,
    strName = "Verkaufsautomat",
    strTooltip = "Ein Verkaufsautomat, der diverse Snacks und Medikamente ausgibt.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Verkaufsautomat"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 25000,
        strName = "Verkaufsautomat"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1780_Vending_Machine_01"
      }, {
        strSprite = "Icon_Housing1x1_1780_Vending_Machine_02"
      }, {
        strSprite = "Icon_Housing1x1_1780_Vending_Machine_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 25,
    nId = 210,
    strName = "Kriegshorn",
    strTooltip = "Ein turmhohes, dekoratives Kriegshorn.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Kriegshorn"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 23+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 20000,
        strName = "Kriegshorn"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_2185_Warhorn_01"
      }, {
        strSprite = "Icon_Housing1x1_2185_Warhorn_02"
      }, {
        strSprite = "Icon_Housing1x1_2185_Warhorn_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 13,
    nId = 211,
    strName = "Wasserturm",
    strTooltip = "Ein hoher, dekorativer Wasserturm.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Wasserturm"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_702_Water_Tower_01"
      }, {
        strSprite = "Icon_Housing1x1_702_Water_Tower_02"
      }, {
        strSprite = "Icon_Housing1x1_702_Water_Tower_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 22,
    nId = 212,
    strName = "Wirbelwind",
    strTooltip = "Platziere dieses Modul, um die Herausforderung  „Sturmreiter“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Wirbelwind"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 15000,
        strName = "Wirbelwind"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1786_Whirlwind_01"
      }, {
        strSprite = "Icon_Housing1x1_1786_Whirlwind_01"
      }, {
        strSprite = "Icon_Housing1x1_1786_Whirlwind_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5,
    nId = 213,
    strName = "Wunschbrunnen",
    strTooltip = "Dieser Wunschbrunnen erfüllt garantiert Wünsche!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Wunschbrunnen"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 30+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 30000,
        strName = "Wunschbrunnen"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1787_Wishing_Well_01"
      }, {
        strSprite = "Icon_Housing1x1_1787_Wishing_Well_02"
      }, {
        strSprite = "Icon_Housing1x1_1787_Wishing_Well_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 40,
    nId = 220,
    strName = "Osun-Schmiede",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Turmverteidiger“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Osun-Schmiede"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 125000,
        strName = "Osun-Schmiede"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1909_Osun_Forge_01"
      }, {
        strSprite = "Icon_Housing1x2_1909_Osun_Forge_02"
      }, {
        strSprite = "Icon_Housing1x2_1909_Osun_Forge_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 26,
    nId = 261,
    strName = "Große Schwarzbrennerhütte",
    strTooltip = "Platziere dieses Modul, um eine Chance zu erhalten, die Herausforderung „Das ist kein Badewannenfusel“ anzugehen.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 9950,
        strName = "Große Schwarzbrennerhütte"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 10+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1906_Moonshiners_Cabin_01"
      }, {
        strSprite = "Icon_Housing1x2_1906_Moonshiners_Cabin_02"
      }, {
        strSprite = "Icon_Housing1x2_1906_Moonshiners_Cabin_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 28,
    nId = 264,
    strName = "Hoogle-Steinmonument",
    strTooltip = "Eine Ansammlung von Hoogle-Statuen. Wer sie aufgestellt hat, bleibt ein Geheimnis.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Hoogle-Steinmonument"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 35530,
        strName = "Hoogle-Steinmonument"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_3006_Hoogle_Henge_01"
      }, {
        strSprite = "Icon_Housing1x2_3006_Hoogle_Henge_02"
      }, {
        strSprite = "Icon_Housing1x2_3006_Hoogle_Henge_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 41,
    nId = 266,
    strName = "Roboterwerkstatt",
    strTooltip = "Eine voll funktionsfähige Roboterwerkstatt … nur etwas durcheinander.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Roboterwerkstatt"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 34+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 39000,
        strName = "Roboterwerkstatt"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1908_Robot_Workshop_01"
      }, {
        strSprite = "Icon_Housing1x2_1908_Robot_Workshop_02"
      }, {
        strSprite = "Icon_Housing1x2_1908_Robot_Workshop_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 41,
    nId = 267,
    strName = "Aufwändiger Steingarten",
    strTooltip = "Ein beschaulicher, dekorativer Zen-Garten.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Aufwändiger Steingarten"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2143_Elaborate_Rock_Garden_01"
      }, {
        strSprite = "Icon_Housing1x2_2143_Elaborate_Rock_Garden_02"
      }, {
        strSprite = "Icon_Housing1x2_2143_Elaborate_Rock_Garden_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 30,
    nId = 271,
    strName = "Der Eingesponnene Wald",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Schaumschläger“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Der Eingesponnene Wald"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 41+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 45000,
        strName = "Der Eingesponnene Wald"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1910_Spiderland_01"
      }, {
        strSprite = "Icon_Housing1x2_1910_Spiderland_02"
      }, {
        strSprite = "Icon_Housing1x2_1910_Spiderland_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 22,
    nId = 272,
    strName = "Großes Übungsgelände",
    strTooltip = "Tritt gegen von einer Ekose-KI erzeugte holografische Wesen an.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Großes Übungsgelände"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 45+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Großes Übungsgelände"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1907_Training_Grounds_01"
      }, {
        strSprite = "Icon_Housing1x2_1907_Training_Grounds_02"
      }, {
        strSprite = "Icon_Housing1x2_1907_Training_Grounds_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 12,
    nId = 283,
    strName = "Prospektorzone",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Goldrausch” zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Prospektorzone"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 21+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 17500,
        strName = "Prospektorzone"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1924_Prospector_Parcel_01"
      }, {
        strSprite = "Icon_Housing1x2_1924_Prospector_Parcel_01"
      }, {
        strSprite = "Icon_Housing1x2_1924_Prospector_Parcel_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 27,
    nId = 289,
    strName = "Meditationsort",
    strTooltip = "Ein dekorativer, stiller Meditationsort.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Meditationsort"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2144_Meditation_Spot_01"
      }, {
        strSprite = "Icon_Housing1x2_2144_Meditation_Spot_02"
      }, {
        strSprite = "Icon_Housing1x2_2144_Meditation_Spot_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5,
    nId = 290,
    strName = "Zen-Teich",
    strTooltip = "Tiefe, stille Erholung an deinem eigenen Privat-Teich!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Zen-Teich"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 36+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1796_Koi_Pond_01"
      }, {
        strSprite = "Icon_Housing1x1_1796_Koi_Pond_02"
      }, {
        strSprite = "Icon_Housing1x1_1796_Koi_Pond_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 44,
    nCost = 50000,
    nId = 291,
    strName = "Geräumiges Granokhaus",
    strTooltip = "Ein von den eigensinnigen Granok robust erbautes geräumiges Haus.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Geräumiges Granokhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Nur für Verbannte"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Erfordert Stufe 36"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spacious_Granok_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Granok_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Granok_House_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 12500,
    nId = 292,
    strName = "Gemütliches Verbanntenhaus",
    strTooltip = "Ein gemütliches Haus im Verbannten-Baustil.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gemütliches Verbanntenhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Nur für Verbannte"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Cozy_Exile_Housing_03"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Exile_Housing_02"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Exile_Housing"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 12500,
    nId = 293,
    strName = "Gemütliches Cassianerhaus",
    strTooltip = "Ein elegantes Haus im Cassianerstil.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gemütliches Cassianerhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Nur für Dominion"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Cozy_Cassian_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Cassian_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Cassian_House_01"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 12500,
    nId = 294,
    strName = "Gemütliches Drakenhaus",
    strTooltip = "Ein von den wilden Draken errichtetes, robustes Haus.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gemütliches Drakenhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Nur für Dominion"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Cozy_Drakken_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Drakken_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Drakken_House_01"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 12500,
    nId = 295,
    strName = "Gemütliches Chuahaus",
    strTooltip = "Ein gemütliches Haus, entworfen von den exzentrischen Chua.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gemütliches Chuahaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Nur für Dominion"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Cozy_Chua_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Chua_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Cozy_Chua_House_01"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 44,
    nCost = 50000,
    nId = 296,
    strName = "Geräumiges Chuahaus",
    strTooltip = "Ein geräumiges Haus, entworfen von den exzentrischen Chua.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Geräumiges Chuahaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Nur Dominion"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Erfordert Stufe 36"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spacious_Chua_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Chua_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Chua_House_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 44,
    nCost = 50000,
    nId = 297,
    strName = "Geräumiges Aurinhaus",
    strTooltip = "Ein idyllisches, geräumiges Haus, errichtet von den naturverbundenen Aurin.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Geräumiges Aurinhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Nur Verbannte"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Erfordert Stufe 36"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spacious_Aurin_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Aurin_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Aurin_House_01"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 44,
    nCost = 50000,
    nId = 298,
    strName = "Geräumiges Cassianerhaus",
    strTooltip = "Ein elegantes, geräumiges Haus, gebaut in cassianischem Stil.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Geräumiges Cassianerhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Nur Dominion"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Erfordert Stufe 36"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spacious_Cassian_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Cassian_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Cassian_House_01"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 44,
    nCost = 50000,
    nId = 299,
    strName = "Geräumiges Drakenhaus",
    strTooltip = "Ein robustes, geräumiges Haus, errichtet von den wilden Draken.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Geräumiges Drakenhaus"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Nur Dominion"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Erfordert Stufe 36"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spacious_Drakken_House_03"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Drakken_House_02"
      }, {
        strSprite = "Icon_Housing2x2_Spacious_Drakken_House_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 304,
    strName = "Landstreicherzug",
    strTooltip = "Der Landstreicherzug ist treffend benannt.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Landstreicherzug"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 17+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14500,
        strName = "Landstreicherzug"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1837_Hobo_Train_01"
      }, {
        strSprite = "Icon_Housing1x2_1837_Hobo_Train_02"
      }, {
        strSprite = "Icon_Housing1x2_1837_Hobo_Train_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 306,
    strName = "Eldanische Ausgrabung",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Den Code knacken“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Eldanische Ausgrabung"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 48+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Eldanische Ausgrabung"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1882_Eldan_Excavation_Site_01"
      }, {
        strSprite = "Icon_Housing1x2_1882_Eldan_Excavation_Site_02"
      }, {
        strSprite = "Icon_Housing1x2_1882_Eldan_Excavation_Site_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 309,
    strName = "EXPEDITION: Kel Voreth, Unterschmiede",
    strTooltip = "Die Unterschmiede von Kel Voreth ist ein kleiner, skalierbarer Dungeon für 1 bis 5 Spieler von beliebiger Stufe.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPEDITION: Kel Voreth, Unterschmiede"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 20+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 30000,
        strName = "EXPEDITION: Kel Voreth, Unterschmiede"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1893_Auroria_Osun_Dungeon_01"
      }, {
        strSprite = "Icon_Housing1x1_1893_Auroria_Osun_Dungeon_02"
      }, {
        strSprite = "Icon_Housing1x1_1893_Auroria_Osun_Dungeon_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 310,
    strName = "EXPEDITION: Verlassenes eldanisches Testlabor",
    strTooltip = "Das Verlassene eldanische Testlabor ist ein skalierbarer Dungeon für 1 bis 5 Spieler beliebiger Stufe.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPEDITION: Verlassenes eldanisches Testlabor"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 30+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 44000,
        strName = "EXPEDITION: Verlassenes eldanisches Testlabor"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1903_Eldan_Test_Lab_01"
      }, {
        strSprite = "Icon_Housing1x1_1903_Eldan_Test_Lab_02"
      }, {
        strSprite = "Icon_Housing1x1_1903_Eldan_Test_Lab_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 312,
    strName = "Riesenrad",
    strTooltip = "Feiere mit Freunden und deinem persönlichen Riesenrad!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Riesenrad"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 125000,
        strName = "Riesenrad"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1918_Ferris_Wheel_01"
      }, {
        strSprite = "Icon_Housing1x2_1918_Ferris_Wheel_02"
      }, {
        strSprite = "Icon_Housing1x2_1918_Ferris_Wheel_03"
      }, {
        strSprite = "Icon_Housing1x2_1918_Ferris_Wheel_04"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 313,
    strName = "Verwüstete Landschaft",
    strTooltip = "Platziere dieses Modul, um das Öffentliche Event „Verwüstete Landschaft“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Verwüstete Landschaft"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 26000,
        strName = "Verwüstete Landschaft"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1921_Blasted_Landscape_01"
      }, {
        strSprite = "Icon_Housing1x2_1921_Blasted_Landscape_02"
      }, {
        strSprite = "Icon_Housing1x2_1921_Blasted_Landscape_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 314,
    strName = "Dominion-Hologramm",
    strTooltip = "Verwende das Hologramm, um dir und deiner Größe ein ruhmvolles Denkmal zu setzen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Dominion-Hologramm"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Fraktion Dominion erforderlich"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 20+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 15000,
        strName = "Dominion-Hologramm"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1925_Dominion_Hologram_01"
      }, {
        strSprite = "Icon_Housing1x1_1925_Dominion_Hologram_02"
      }, {
        strSprite = "Icon_Housing1x1_1925_Dominion_Hologram_03"
      }, {
        strSprite = "Icon_Housing1x1_1925_Dominion_Hologram_04"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 344,
    strName = "Lopp-Party",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Glänzende Vind-Verfolgung“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Lopp-Party"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 29+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 36000,
        strName = "Lopp-Party"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1961_Lopp_Party_01"
      }, {
        strSprite = "Icon_Housing1x2_1961_Lopp_Party_02"
      }, {
        strSprite = "Icon_Housing1x2_1961_Lopp_Party_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 345,
    strName = "Müllhalde",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Haldentauchen“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Müllhalde"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 31+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 32000,
        strName = "Müllhalde"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1951_Garbage_Dump_01"
      }, {
        strSprite = "Icon_Housing1x1_1951_Garbage_Dump_02"
      }, {
        strSprite = "Icon_Housing1x1_1951_Garbage_Dump_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 348,
    strName = "Gruseliger Friedhof",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Überiridische Zwangsräumung“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Gruseliger Friedhof"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 8500,
        strName = "Gruseliger Friedhof"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1965_Large_Graveyard_01"
      }, {
        strSprite = "Icon_Housing1x2_1965_Large_Graveyard_01"
      }, {
        strSprite = "Icon_Housing1x2_1965_Large_Graveyard_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 349,
    strName = "Wetterkontrollstation",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Erdung des Sturms“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Wetterkontrollstation"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 42+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 65000,
        strName = "Wetterkontrollstation"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1950_Array_of_Weather_Controlling_Dishes_01"
      }, {
        strSprite = "Icon_Housing1x1_1950_Array_of_Weather_Controlling_Dishes_02"
      }, {
        strSprite = "Icon_Housing1x1_1950_Array_of_Weather_Controlling_Dishes_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 351,
    strName = "Lagereinheit",
    strTooltip = "Dank Protostar können Sie jetzt Ihre eigene Lagereinrichtung auf Ihrem eigenen Grund und Boden haben!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Lagereinheit"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "Lagereinheit"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1975_Storage_Unit_01"
      }, {
        strSprite = "Icon_Housing1x1_1975_Storage_Unit_02"
      }, {
        strSprite = "Icon_Housing1x1_1975_Storage_Unit_03"
      }, {
        strSprite = "Icon_Housing1x1_1975_Storage_Unit_04"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 352,
    strName = "Dunkelsporn-Fußbodenklavier",
    strTooltip = "Mach deine eigene Musik mit diesem Dunkelsporn-Klavier.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Dunkelsporn-Fußbodenklavier"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 75000,
        strName = "Dunkelsporn-Fußbodenklavier"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1947_Darkspur_Floor_Piano_01"
      }, {
        strSprite = "Icon_Housing1x1_1947_Darkspur_Floor_Piano_02"
      }, {
        strSprite = "Icon_Housing1x1_1947_Darkspur_Floor_Piano_03"
      }, {
        strSprite = "Icon_Housing1x1_1947_Darkspur_Floor_Piano_04"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 353,
    strName = "Scherbenspitzen-Canyon",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Die Spitze der Welt“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Scherbenspitzen-Canyon"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 17500,
        strName = "Scherbenspitzen-Canyon"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1969_Shardspire_Canyon_01"
      }, {
        strSprite = "Icon_Housing1x2_1969_Shardspire_Canyon_02"
      }, {
        strSprite = "Icon_Housing1x2_1969_Shardspire_Canyon_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 354,
    strName = "Biotop: Ellevar",
    strTooltip = "Ein Stück Land, das direkt aus Ellevar importiert wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Ellevar"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Biotop: Ellevar"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1986_Elevar_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1986_Elevar_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1986_Elevar_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 356,
    strName = "Duellarena",
    strTooltip = "Fordere einen Freund in deiner eigenen Duellarena zum Duell heraus!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Duellarena"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 17500,
        strName = "Duellarena"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1985_Moodie_Duel_Pit_01"
      }, {
        strSprite = "Icon_Housing1x2_1985_Moodie_Duel_Pit_02"
      }, {
        strSprite = "Icon_Housing1x2_1985_Moodie_Duel_Pit_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 357,
    strName = "Fliegende Untertasse",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Fange die Ikthianer” ab zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Fliegende Untertasse"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 31+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 30000,
        strName = "Fliegende Untertasse"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1951_Ikthian_Flying_Saucer_01"
      }, {
        strSprite = "Icon_Housing1x1_1951_Ikthian_Flying_Saucer_02"
      }, {
        strSprite = "Icon_Housing1x1_1951_Ikthian_Flying_Saucer_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 359,
    strName = "Biotop: Deradune",
    strTooltip = "Ein Stück Land, das direkt aus Deradune importiert wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Deradune"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Biotop: Deradune"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1989_Deradune_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1989_Deradune_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1989_Deradune_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 360,
    strName = "Mini-Biotop: Orkanas",
    strTooltip = "Ein Landstrich, der direkt aus Orkanas eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Orkanas"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14500,
        strName = "Mini-Biotop: Orkanas"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1990_Galeras_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1990_Galeras_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1990_Galeras_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 361,
    strName = "Biotop: Celestia",
    strTooltip = "Ein Stück Land, das direkt aus Celestia importiert wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Celestia"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Biotop: Celestia"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1991_Celestion_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1991_Celestion_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1991_Celestion_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 362,
    strName = "Mini-Biotop: Weißtal",
    strTooltip = "Ein Landstrich, der direkt aus Weißtal eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Weißtal"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 26000,
        strName = "Mini-Biotop: Weißtal"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1992_Whitevale_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1992_Whitevale_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1992_Whitevale_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 363,
    strName = "Mini-Biotop: Auroria",
    strTooltip = "Ein Landstrich, der direkt aus Auroria eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Auroria"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14500,
        strName = "Mini-Biotop: Auroria"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1993_Auroria_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1993_Auroria_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1993_Auroria_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 364,
    strName = "Biotop: Blutrote Insel",
    strTooltip = "Ein Landstrich, der direkt von der Blutroten Insel eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Blutrote Insel"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Biotop: Blutrote Insel"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1994_Crimson_Isle_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_1994_Crimson_Isle_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_1994_Crimson_Isle_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 366,
    strName = "Eisteich",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Eisanomalien“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Eisteich"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 23+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 26000,
        strName = "Eisteich"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1966_Ice_Pond_01"
      }, {
        strSprite = "Icon_Housing1x2_1966_Ice_Pond_02"
      }, {
        strSprite = "Icon_Housing1x2_1966_Ice_Pond_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 43,
    nCost = 0,
    nId = 367,
    strName = "Raumschiff",
    strTooltip = "Sei gegrüßt! Dein eigenes Raumschiff auf Nexus.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 2500,
        strName = "Raumschiff"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Erfolg: Vorbestellungsbonus"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing2x2_Spaceship_03"
      }, {
        strSprite = "Icon_Housing2x2_Spaceship_02"
      }, {
        strSprite = "Icon_Housing2x2_Spaceship_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 372,
    strName = "Meteorkrater",
    strTooltip = "Ein von einem großen Meteor gerissener Krater.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Meteorkrater"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1944_Meteor_Crater_01"
      }, {
        strSprite = "Icon_Housing1x1_1944_Meteor_Crater_02"
      }, {
        strSprite = "Icon_Housing1x1_1944_Meteor_Crater_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 373,
    strName = "Großes abgestürztes Schiff",
    strTooltip = "Die schwelenden Überreste eines großen abgestürzten Schiffs.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Großes abgestürztes Schiff"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 32+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14470,
        strName = "Großes abgestürztes Schiff"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1967_Large_Crashed_Ship_01"
      }, {
        strSprite = "Icon_Housing1x2_1967_Large_Crashed_Ship_02"
      }, {
        strSprite = "Icon_Housing1x2_1967_Large_Crashed_Ship_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 374,
    strName = "Superwaffentestzone",
    strTooltip = "Warnung: Radioaktives Gebiet!",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Superwaffentestzone"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 25+"
      } },
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1952_Nuclear_Weapon_Test_Zone_01"
      }, {
        strSprite = "Icon_Housing1x1_1952_Nuclear_Weapon_Test_Zone_02"
      }, {
        strSprite = "Icon_Housing1x1_1952_Nuclear_Weapon_Test_Zone_03"
      }, {
        strSprite = "Icon_Housing1x1_1952_Nuclear_Weapon_Test_Zone_04"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 375,
    strName = "Protostar-Trainingsparcours zur Gefahrenvermeidung",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Ausweichmanöver“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Protostar-Trainingsparcours zur Gefahrenvermeidung"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 39+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 58000,
        strName = "Protostar-Trainingsparcours zur Gefahrenvermeidung"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1970_Protostar_Hazard_Training_Course_01"
      }, {
        strSprite = "Icon_Housing1x2_1970_Protostar_Hazard_Training_Course_02"
      }, {
        strSprite = "Icon_Housing1x2_1970_Protostar_Hazard_Training_Course_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 376,
    strName = "Planschbecken",
    strTooltip = "Spring ins kühle Nass mit deinem eigenen Planschbecken.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Planschbecken"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1958_Kiddie_Pool_01"
      }, {
        strSprite = "Icon_Housing1x1_1958_Kiddie_Pool_02"
      }, {
        strSprite = "Icon_Housing1x1_1958_Kiddie_Pool_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 377,
    strName = "Tiki-Lounge",
    strTooltip = "Dein eigener (schwebender) Insel-Erholungsort! ",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Tiki-Lounge"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "Tiki-Lounge"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1959_Tiki_Lounge_01"
      }, {
        strSprite = "Icon_Housing1x1_1959_Tiki_Lounge_02"
      }, {
        strSprite = "Icon_Housing1x1_1959_Tiki_Lounge_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 379,
    strName = "Magmastrom",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Trampelgründe“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Magmastrom"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 44+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 82000,
        strName = "Magmastrom"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_1968_Magma_Flow_01"
      }, {
        strSprite = "Icon_Housing1x2_1968_Magma_Flow_02"
      }, {
        strSprite = "Icon_Housing1x2_1968_Magma_Flow_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 380,
    strName = "Biotop: Algofels",
    strTooltip = "Ein Stück Land, das direkt aus Algofels importiert wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Algofels"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Biotop: Algofels"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2172_Algoroc_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2172_Algoroc_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2172_Algoroc_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 381,
    strName = "Biotop: Levian-Bucht",
    strTooltip = "Ein Landstrich, der direkt aus der Levian-Bucht eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Levian-Bucht"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2193_Levian_Bay_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2193_Levian_Bay_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2193_Levian_Bay_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 382,
    strName = "Mini-Biotop: Jochgrab",
    strTooltip = "Ein Landstrich, der direkt aus Jochgrab eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Jochgrab"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 50000,
        strName = "Mini-Biotop: Jochgrab"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2175_Malgrave_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2175_Malgrave_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2175_Malgrave_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 383,
    strName = "Biotop: Nördliche Wildnis",
    strTooltip = "Ein Landstrich, der direkt aus der Nördlichen Wildnis eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Nördliche Wildnis"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Biotop: Nördliche Wildnis"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2191_Northern_Wild_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2191_Northern_Wild_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2191_Northern_Wild_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 391,
    strName = "Treffpunkt für süße Dates",
    strTooltip = "Ein ganz besonderer Ort, an den du dein Date bringen kannst.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Treffpunkt für süße Dates"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 24+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 7500,
        strName = "Treffpunkt für süße Dates"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1885_Aurin_Picnic_Area_01"
      }, {
        strSprite = "Icon_Housing1x1_1885_Aurin_Picnic_Area_02"
      }, {
        strSprite = "Icon_Housing1x1_1885_Aurin_Picnic_Area_03"
      }, {
        strSprite = "Icon_Housing1x1_1885_Aurin_Picnic_Area_04"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 392,
    strName = "Verbannten-Hologramm",
    strTooltip = "Verwende das Hologramm, um dir und deiner Größe ein ruhmvolles Denkmal zu setzen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Verbannten-Hologramm"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Fraktion Verbannte erforderlich"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 20+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 15000,
        strName = "Verbannten-Hologramm"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_2174_Exile_Hologram_01"
      }, {
        strSprite = "Icon_Housing1x1_2174_Exile_Hologram_02"
      }, {
        strSprite = "Icon_Housing1x1_2174_Exile_Hologram_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 394,
    strName = "Heiße Quellen",
    strTooltip = "Genieße ein entspannendes Bad in den heißen Quellen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Heiße Quellen"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 16+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14470,
        strName = "Heiße Quellen"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_2146_Hot_Springs_01"
      }, {
        strSprite = "Icon_Housing1x1_2146_Hot_Springs_01"
      }, {
        strSprite = "Icon_Housing1x1_2146_Hot_Springs_01"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 503,
    strName = "EXPEDITION: Unheimliche Höhle",
    strTooltip = "Die unheimliche Höhle ist ein anpassbarer Dungeon für 1 bis 5 Spieler von beliebiger Stufe.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPEDITION: Unheimliche Höhle"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "EXPEDITION: Unheimliche Höhle"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_2180_Creepy_Cave_Entrance_01"
      }, {
        strSprite = "Icon_Housing1x1_2180_Creepy_Cave_Entrance_02"
      }, {
        strSprite = "Icon_Housing1x1_2180_Creepy_Cave_Entrance_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 504,
    strName = "EXPEDITION: Mayday",
    strTooltip = "Mayday ist ein anpassbarer Dungeon für 1 bis 5 Spieler von beliebiger Stufe.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPEDITION: Mayday"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 40+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 55000,
        strName = "EXPEDITION: Mayday"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1904_Shuttle_Call_Console_01"
      }, {
        strSprite = "Icon_Housing1x1_1904_Shuttle_Call_Console_02"
      }, {
        strSprite = "Icon_Housing1x1_1904_Shuttle_Call_Console_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 506,
    strName = "Biotop: Immersternwald",
    strTooltip = "Ein Landstrich, der direkt vom Immersternwald eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biotop: Immersternwald"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = {},
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2192_Everstar_Grove_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2192_Everstar_Grove_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2192_Everstar_Grove_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 507,
    strName = "Mini-Biotop: Fernseits",
    strTooltip = "Ein Landstrich, der direkt von Fernseits eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Fernseits"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 32000,
        strName = "Mini-Biotop: Fernseits"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2381_Farside_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2381_Farside_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2381_Farside_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 508,
    strName = "Mini-Biotop: Gramkammer",
    strTooltip = "Ein Landstrich, der direkt aus Gramkammer eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Gramkammer"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Mini-Biotop: Gramkammer"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_2385_Grimvault_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_2385_Grimvault_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_2385_Grimvault_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 509,
    strName = "Mini-Biotop: Wildlauf",
    strTooltip = "Ein Landstrich, der direkt aus Wildlauf eingeführt wurde.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mini-Biotop: Wildlauf"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 39000,
        strName = "Mini-Biotop: Wildlauf"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_3007_Wilderrun_Biome_01"
      }, {
        strSprite = "Icon_Housing1x2_3007_Wilderrun_Biome_02"
      }, {
        strSprite = "Icon_Housing1x2_3007_Wilderrun_Biome_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 515,
    strName = "Transmutationsschlund",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Geschüttelt, nicht transmutiert“ zu versuchen.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Transmutationsschlund"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 85000,
        strName = "Transmutationsschlund"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_3036_Sore_Luck_Pit_01"
      }, {
        strSprite = "Icon_Housing1x1_3036_Sore_Luck_Pit_02"
      }, {
        strSprite = "Icon_Housing1x1_3036_Sore_Luck_Pit_03"
      } }
  }, {
    bAreCostRequirementsMet = true,
    bAreRepairRequirementsMet = true,
    eType = 2,
    nCost = 0,
    nId = 516,
    strName = "Korrumpiertes Labor",
    strTooltip = "Platziere dieses Modul, um die Herausforderung „Hirntransmutation“ zu versuchen.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 4255000,
        strName = "Korrumpiertes Labor"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Stufe 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "Korrumpiertes Labor"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x2_3039_Corrupted_Laboratory_01"
      }, {
        strSprite = "Icon_Housing1x2_3039_Corrupted_Laboratory_02"
      }, {
        strSprite = "Icon_Housing1x2_3039_Corrupted_Laboratory_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 517,
    strName = "Elite-Mineralvorkommen",
    strTooltip = "Du brauchst schon einige Erfahrung als Bergarbeiter, um die Erze abzubauen, die hier vorkommen! Aber fördere so viel zutage wie du kannst, bevor die Pacht ausläuft! Nur in einer Wundertüte erhältlich.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Elite-Mineralvorkommen"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = true
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 85000,
        strName = "Elite-Mineralvorkommen"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_695_Mineral_Deposit_Tier4_01"
      }, {
        strSprite = "Icon_Housing1x1_695_Mineral_Deposit_Tier4_02"
      }, {
        strSprite = "Icon_Housing1x1_695_Mineral_Deposit_Tier4_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 518,
    strName = "Elite-Reliktausgrabung",
    strTooltip = "Diese Ausgrabungsstätte liefert die höchsten Stufen an Relikten und Omniplasma, die ein Reliktjäger sammeln kann. Fang an zu buddeln, bevor die Pacht ausläuft! Nur in einer Wundertüte erhältlich.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Elite-Reliktausgrabung"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = true
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 85000,
        strName = "Elite-Reliktausgrabung"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_699_Excavation_Site_Tier4_01"
      }, {
        strSprite = "Icon_Housing1x1_699_Excavation_Site_Tier4_02"
      }, {
        strSprite = "Icon_Housing1x1_699_Excavation_Site_Tier4_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 519,
    strName = "Elite-Garten",
    strTooltip = "Das hier ist der elitärste Garten, in dem je gegärtnert wurde. Was wirst du hier anpflanzen und ernten? Nur in einer Wundertüte erhältlich.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Elite-Garten"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = true,
      bIsUniqueHarvest = false
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 85000,
        strName = "Elite-Garten"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1583_Garden_Tier4_01"
      }, {
        strSprite = "Icon_Housing1x1_1583_Garden_Tier4_02"
      }, {
        strSprite = "Icon_Housing1x1_1583_Garden_Tier4_03"
      } }
  }, {
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 0,
    nId = 520,
    strName = "Elite-Dickicht",
    strTooltip = "Der Überlebenskünstler in dir findet hier Materialien des höchsten Ranges. Sammle so viel du kannst, bevor deine Pacht ausläuft. Nur in einer Wundertüte erhältlich.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Elite-Dickicht"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = true
    },
    tPrerequisites = {},
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 85000,
        strName = "Elite-Dickicht"
      } },
    tScreenshots = { {
        strSprite = "Icon_Housing1x1_1541_Survivalist_Tier4_01"
      }, {
        strSprite = "Icon_Housing1x1_1541_Survivalist_Tier4_02"
      }, {
        strSprite = "Icon_Housing1x1_1541_Survivalist_Tier4_03"
      } }
  } 
}
