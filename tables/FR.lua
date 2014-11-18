local L = Apollo.GetPackage("Gemini:Locale-1.0").tPackage:NewLocale("ItemPreviewImproved", "frFR")
if not L then return end

L["FABkits"] = { 
{
    bAreCostRequirementsMet = false,
    bAreRepairRequirementsMet = true,
    eType = 1,
    nCost = 5000,
    nId = 4,
    strName = "Puits",
    strTooltip = "Un puits décoratif de belle facture.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Puits"
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
    strTooltip = "Immense silo utilisé pour stocker le grain et le fourrage.",
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
    strName = "Jardin de niveau 1",
    strTooltip = "Vous avez des graines à planter, pas vrai ? Ce jardin basique vous donnera quelques parcelles de terrain qui vous permettront de jouer les fermiers.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Jardin de niveau 1"
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
        strName = "Jardin de niveau 1"
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
    strName = "Moulin à vent",
    strTooltip = "Voilà un pittoresque moulin à vent. Mais bon, c'est plus pour la frime qu'autre chose, pas vrai ?",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Moulin à vent"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 19+"
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
    strName = "Gisement de minéraux de niveau 1",
    strTooltip = "Si vous faites dans l'extraction minière, vous pouvez extraire ici des minerais de bas niveau sans craindre la concurrence. Cette parcelle ne fonctionnera plus lorsque le bail de votre terrain aura expiré.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Gisement de minéraux de niveau 1"
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
        strName = "Gisement de minéraux de niveau 1"
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
    strName = "Site de fouilles de reliques de niveau 1",
    strTooltip = "Ce site de fouilles dispose de reliques et d'omniplasmes de bas niveau. Un conseil : évitez de bailler aux corneilles pendant la durée du bail.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Site de fouilles de reliques de niveau 1"
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
        strName = "Site de fouilles de reliques de niveau 1"
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
    strName = "Maison granok douillette",
    strTooltip = "Maison confortable solidement construite par les entêtés Granoks.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Maison granok douillette"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Exilés uniquement"
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
    strName = "Maison aurin douillette",
    strTooltip = "Maison pittoresque construite par les Aurins.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Maison aurin douillette"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Exilés uniquement"
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
    strName = "Maison spacieuse des Exilés",
    strTooltip = "Maison spacieuse construite dans le style des Exilés humains.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Maison spacieuse des Exilés"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Exilés uniquement"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36 nécessaire"
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
    strName = "Statue eldan",
    strTooltip = "Les Eldans maîtrisaient un certain nombre de forces de l'univers. Cette relique vous permet de bénéficier de bonus spéciaux.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Statue eldan"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 4370,
        strName = "Statue eldan"
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
    strName = "Terrain d'entraînement",
    strTooltip = "Entraînez-vous au combat et peaufinez votre style sur un pauvre mannequin sans défense.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Terrain d'entraînement"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 15+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Terrain d'entraînement"
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
    strName = "Pavillon d'artisanat",
    strTooltip = "Enfin ! Avec cette table d'artisanat dans votre propriété, vous pouvez travailler dans le calme.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Pavillon d'artisanat"
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
        strName = "Pavillon d'artisanat"
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
    strName = "Barbecue",
    strTooltip = "Détendez-vous et profitez du barbecue.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 14470,
        strName = "Barbecue"
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
        strName = "Barbecue"
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
    strName = "Vaisseau spatial",
    strTooltip = "Votre vaisseau spatial à vous, garé sur votre propriété à vous.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Vaisseau spatial"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 35+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 32000,
        strName = "Vaisseau spatial"
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
    strName = "Labyrinthe végétal",
    strTooltip = "Cette disposition de haies servait autrefois d'amusement, avant que les Jabbits ne dévorent pratiquement toutes les haies.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Labyrinthe végétal"
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
    strName = "Grand labyrinthe végétal",
    strTooltip = "Jouez à cache-cache ou flânez simplement dans la verdure de ces haies disposées avec goût.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Grand labyrinthe végétal"
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
    strName = "Bosquet de niveau 1",
    strTooltip = "Le rêve de tout adepte de la survie devenu réalité. Vous disposerez ici d'une source inépuisable de matériaux tant que dure le bail de votre terrain.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Bosquet de niveau 1"
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
        strName = "Bosquet de niveau 1"
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
    strName = "Rampe de faible gravité",
    strTooltip = "Simulez une faible gravité et partez à la conquête du ciel sur votre rampe personnelle. En avaaaaaaant !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Rampe de faible gravité"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 35+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 40000,
        strName = "Rampe de faible gravité"
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
    strName = "Portail de raid vers l'Infosphère",
    strTooltip = "Ce portail vous téléportera vous et vos copains directement vers l'Infosphère !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Portail de raid vers l'Infosphère"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 125000,
        strName = "Portail de raid vers l'Infosphère"
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
    strName = "Ossuaire",
    strTooltip = 'Placez ce module pour tenter le défi "Les grands esprits se rencontrent".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Ossuaire"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 37+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 45000,
        strName = "Ossuaire"
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
    strName = "Mangeoire à Cubochons",
    strTooltip = 'Placez ce module pour tenter le défi "Les Cubochons volants".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Mangeoire à Cubochons"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 17+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Mangeoire à Cubochons"
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
    strName = "Festival de niveau 1",
    strTooltip = "Mangez et buvez à votre propre festival personnel !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 1,
        nRequiredCost = 1,
        strName = "Festival de niveau 1"
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
        strName = "Festival de niveau 1"
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
    strName = "Lanceur de feux d'artifice",
    strTooltip = "Assortiment de lanceurs de feux d'artifice pour votre propriété.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Lanceur de feux d'artifice"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 30+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 12500,
        strName = "Lanceur de feux d'artifice"
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
    strName = "Jardin de fleurs",
    strTooltip = "Jardin de fleurs au charme suranné.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Jardin de fleurs"
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
    strName = "Roulotte granok",
    strTooltip = "Vous avez toujours voulu votre squatteur granok rien qu'à vous ? Le voilà... et avec sa roulotte bien cradingue.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Roulotte granok"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 26+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 53860,
        strName = "Roulotte granok"
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
    strName = "Borne de soin",
    strTooltip = 'Placez ce module pour tenter le défi "Toubib !".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Borne de soin"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 18+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 50000,
        strName = "Borne de soin"
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
    strName = "Toilettes de jardin",
    strTooltip = "Fini de faire la queue au magasin Protostar du coin ! Maintenant, allez faire vos besoins dans votre propriété à vous !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Toilettes de jardin"
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
        strName = "Toilettes de jardin"
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
    strName = "Générateur de puissance",
    strTooltip = "Ce générateur de puissance est capable d'alimenter un grand nombre de canons de défense !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Générateur de puissance"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 34+"
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
    strName = "Labo scientifique",
    strTooltip = "Labo très élaboré... pour la science.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Labo scientifique"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 41+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 67860,
        strName = "Labo scientifique"
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
    strName = "Tour de défense antiaérienne",
    strTooltip = 'Placez ce module pour tenter le défi "Rafale de Rascaplanes".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Tour de défense antiaérienne"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 45+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 65000,
        strName = "Tour de défense antiaérienne"
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
    strName = "Distributeur automatique",
    strTooltip = "Distributeur automatique proposant divers médicaments et casse-croûtes.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Distributeur automatique"
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
        strName = "Distributeur automatique"
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
    strName = "Cor de guerre",
    strTooltip = "Cor de guerre décoratif démesuré.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Cor de guerre"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 23+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 20000,
        strName = "Cor de guerre"
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
    strName = "Château d'eau",
    strTooltip = "Château d'eau colossal décoratif",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Château d'eau"
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
    strName = "Tourbillon",
    strTooltip = 'Placez ce module pour tenter le défi "Sous le vent...".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Tourbillon"
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
        strName = "Tourbillon"
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
    strName = "Puits à souhaits",
    strTooltip = "Ce puits à souhaits exaucera vos vœux à coup sûr !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Puits à souhaits"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 30+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 30000,
        strName = "Puits à souhaits"
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
    strName = "Fonderie osun",
    strTooltip = 'Placez ce module pour tenter le défi "La tour infernale".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Fonderie osun"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 125000,
        strName = "Fonderie osun"
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
    strName = "Cabane de contrebande d'alcool",
    strTooltip = "Placez ce module pour tenter le défi \"C'est pas du jus de chaussette !\".",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 9950,
        strName = "Cabane de contrebande d'alcool"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 10+"
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
    strName = "Cromlech d'effraigles",
    strTooltip = "Collection de statues effraigles. Quant à savoir qui les a mises là, c'est un mystère.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Cromlech d'effraigles"
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
        strName = "Cromlech d'effraigles"
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
    strName = "Atelier de robots",
    strTooltip = "Atelier de robots parfaitement fonctionnel... Juste un peu en désordre.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Atelier de robots"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 34+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 39000,
        strName = "Atelier de robots"
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
    strName = "Jardin de rocailles élaboré",
    strTooltip = "Jardin décoratif paisible au plus haut point.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Jardin de rocailles élaboré"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
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
    strName = "Le Bois entoilé",
    strTooltip = 'Placez ce module pour tenter le défi "Batteur à œufs".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Le Bois entoilé"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 41+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 45000,
        strName = "Le Bois entoilé"
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
    strName = "Grand terrain d'entraînement",
    strTooltip = "Entités holographiques de combat générées par une IA ékose.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Grand terrain d'entraînement"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 45+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Grand terrain d'entraînement"
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
    strName = "Parcelle de prospecteur",
    strTooltip = "Placez ce module pour tenter le défi \"Ruée vers l'or\".",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Parcelle de prospecteur"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 21+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 17500,
        strName = "Parcelle de prospecteur"
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
    strName = "Lieu de méditation",
    strTooltip = "Emplacement décoratif tranquille, idéal pour réfléchir.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Lieu de méditation"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
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
    strName = "Étang zen",
    strTooltip = "Profitez du calme de votre étang personnel !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Étang zen"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36+"
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
    strName = "Maison spacieuse granok",
    strTooltip = "Maison spacieuse solidement construite par les entêtés Granoks.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Maison spacieuse granok"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Exilés uniquement"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36 nécessaire"
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
    strName = "Maison douillette des Exilés",
    strTooltip = "Maison douillette construite dans le style des Exilés humains.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Maison douillette des Exilés"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Exilés uniquement"
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
    strName = "Maison cassienne douillette",
    strTooltip = "Maison élégante construite dans le style cassien.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Maison cassienne douillette"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Dominion uniquement"
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
    strName = "Maison draken douillette",
    strTooltip = "Maison solide construite par les sauvages Drakens.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Maison draken douillette"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Dominion uniquement"
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
    strName = "Maison chua douillette",
    strTooltip = "Maison douillette conçue par les excentriques Chuas.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 10000,
        strName = "Maison chua douillette"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Dominion uniquement"
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
    strName = "Maison spacieuse chua",
    strTooltip = "Maison spacieuse conçue par les excentriques Chuas.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Maison spacieuse chua"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Dominion uniquement"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36 nécessaire"
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
    strName = "Maison spacieuse aurin",
    strTooltip = "Maison spacieuse et pittoresque construite par les Aurins.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Maison spacieuse aurin"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Exilés uniquement"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36 nécessaire"
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
    strName = "Maison spacieuse cassienne",
    strTooltip = "Maison spacieuse et élégante construite dans le style cassien.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Maison spacieuse cassienne"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Dominion uniquement"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36 nécessaire"
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
    strName = "Maison spacieuse draken",
    strTooltip = "Maison spacieuse et solide construite par les sauvages Drakens.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 3000000,
        strName = "Maison spacieuse draken"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Dominion uniquement"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 36 nécessaire"
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
    strName = "Train des vagabonds",
    strTooltip = "Ce train porte bien son nom.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Train des vagabonds"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 17+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14500,
        strName = "Train des vagabonds"
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
    strName = "Site de fouilles eldan",
    strTooltip = 'Placez ce module pour tenter le défi "Décodeur pirate".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Site de fouilles eldan"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 48+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 70000,
        strName = "Site de fouilles eldan"
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
    strName = "EXPÉDITION : Forge souterraine de Kel Voreth",
    strTooltip = "La Forge souterraine de Kel Voreth est un petit donjon évolutif pour 1 à 5 joueurs de n'importe quel niveau.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPÉDITION : Forge souterraine de Kel Voreth"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 20+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 30000,
        strName = "EXPÉDITION : Forge souterraine de Kel Voreth"
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
    strName = "EXPÉDITION : Labo d'essais eldan abandonné",
    strTooltip = "Le labo d'essais eldan abandonné est un donjon évolutif pour 1 à 5 joueurs de n'importe quel niveau.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPÉDITION : Labo d'essais eldan abandonné"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 30+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 44000,
        strName = "EXPÉDITION : Labo d'essais eldan abandonné"
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
    strName = "Grande roue",
    strTooltip = "Faites la fête avec vos copains dans votre grande roue personnelle !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Grande roue"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 125000,
        strName = "Grande roue"
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
    strName = "Terrain désolé",
    strTooltip = "Placez ce module pour tenter l'événement public \"Paysage désolé\".",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Terrain désolé"
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
        strName = "Terrain désolé"
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
    strName = "Hologramme du Dominion",
    strTooltip = "Utilisez l'hologramme pour auréoler de lumière votre grandeur.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Hologramme du Dominion"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Requiert faction du Dominion"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 20+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 15000,
        strName = "Hologramme du Dominion"
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
    strName = "Fête des Lopps",
    strTooltip = 'Placez ce module pour tenter le défi "Chasse à la Niflette bling-bling".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Fête des Lopps"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 29+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 36000,
        strName = "Fête des Lopps"
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
    strName = "Décharge",
    strTooltip = 'Placez ce module pour tenter le défi "Plongée dans les ordures".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Décharge"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 31+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 32000,
        strName = "Décharge"
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
    strName = "Cimetière sinistre",
    strTooltip = 'Placez ce module pour tenter le défi "Cœurs et âmes".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Cimetière sinistre"
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
        strName = "Cimetière sinistre"
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
    strName = "Station de contrôle météorologique",
    strTooltip = 'Placez ce module pour tenter le défi "Retenir la tempête".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Station de contrôle météorologique"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 42+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 65000,
        strName = "Station de contrôle météorologique"
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
    strName = "Unité de stockage",
    strTooltip = "Grâce à Protostar, vous pouvez avoir votre propre site de stockage privé sur votre propriété !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Unité de stockage"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "Unité de stockage"
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
    strName = "Piano de sol de l'Éperon noir",
    strTooltip = "Faites votre musique vous-même avec ce piano de l'Éperon noir.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Piano de sol de l'Éperon noir"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 75000,
        strName = "Piano de sol de l'Éperon noir"
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
    strName = "Canyon de Tranchescarpe",
    strTooltip = 'Placez ce module pour tenter le défi "Le toit du monde".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Canyon de Tranchescarpe"
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
        strName = "Canyon de Tranchescarpe"
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
    strName = "Biome : Ellevar",
    strTooltip = "Étendue de terrain importée directement d'Ellevar.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Ellevar"
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
        strName = "Biome : Ellevar"
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
    strName = "Arène de duel",
    strTooltip = "Provoquez un ami en duel dans votre arène personnelle !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Arène de duel"
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
        strName = "Arène de duel"
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
    strName = "Soucoupe volante",
    strTooltip = 'Placez ce module pour tenter le défi "Intercepter les Ikthiens".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Soucoupe volante"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 31+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 30000,
        strName = "Soucoupe volante"
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
    strName = "Biome : Déradune",
    strTooltip = "Étendue de terrain importée directement de Déradune.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Déradune"
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
        strName = "Biome : Déradune"
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
    strName = "Biome : Khamsin",
    strTooltip = "Étendue de terrain importée directement de Khamsin.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Khamsin"
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
        strName = "Biome : Khamsin"
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
    strName = "Biome : Célestion",
    strTooltip = "Étendue de terrain importée directement de Célestion.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Célestion"
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
        strName = "Biome : Célestion"
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
    strName = "Biome : Valblanc",
    strTooltip = "Étendue de terrain importée directement de Valblanc.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Valblanc"
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
        strName = "Biome : Valblanc"
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
    strName = "Biome : Auroria",
    strTooltip = "Étendue de terrain importée directement d'Auroria.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Auroria"
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
        strName = "Biome : Auroria"
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
    strName = "Biome : Île Écarlate",
    strTooltip = "Étendue de terrain importée directement de l'Île Écarlate.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Île Écarlate"
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
        strName = "Biome : Île Écarlate"
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
    strName = "Étang gelé",
    strTooltip = 'Placez ce module pour tenter le défi "Anomalies de glace".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Étang gelé"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 23+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 26000,
        strName = "Étang gelé"
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
    strName = "Vaisseau spatial",
    strTooltip = "Salutations ! Votre propre vaisseau spatial sur Nexus.",
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 2500,
        strName = "Vaisseau spatial"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Succès : bonus de précommande"
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
    strName = "Cratère de météorite",
    strTooltip = "Un cratère provoqué par la chute d'une grosse météorite.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Cratère de météorite"
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
    strName = "Épave de grand vaisseau",
    strTooltip = "Les restes fumants d'un grand vaisseau qui s'est écrasé.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Épave de grand vaisseau"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 32+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14470,
        strName = "Épave de grand vaisseau"
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
    strName = "Zone de test de superarme",
    strTooltip = "Avertissement : présence de radioactivité dans la zone !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Zone de test de superarme"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 25+"
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
    strName = "Terrain d'entraînement Protostar",
    strTooltip = 'Placez ce module pour tenter le défi "Manœuvres évasives".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Terrain d'entraînement Protostar"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 39+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 58000,
        strName = "Terrain d'entraînement Protostar"
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
    strName = "Piscine gonflable",
    strTooltip = "Pour rester cool sur Nexus, rien de tel qu'une piscine gonflable à soi.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Piscine gonflable"
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
    strName = "Bar exotique",
    strTooltip = "Votre île (flottante) à vous, pour vous évader un peu !",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Bar exotique"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "Bar exotique"
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
    strName = "Coulée de lave",
    strTooltip = 'Placez ce module pour tenter le défi "Taper du pied".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Coulée de lave"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 44+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 82000,
        strName = "Coulée de lave"
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
    strName = "Biome : Algoroc",
    strTooltip = "Étendue de terrain importée directement d'Algoroc.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Algoroc"
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
        strName = "Biome : Algoroc"
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
    strName = "Biome : Baie de Lévian",
    strTooltip = "Étendue de terrain importée directement de la Baie de Lévian.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Baie de Lévian"
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
    strName = "Biome : Maltombe",
    strTooltip = "Étendue de terrain importée directement de Maltombe.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Maltombe"
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
        strName = "Biome : Maltombe"
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
    strName = "Biome : Septentrion Sauvage",
    strTooltip = "Étendue de terrain importée directement du Septentrion Sauvage.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Septentrion Sauvage"
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
        strName = "Biome : Septentrion Sauvage"
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
    strName = "Bel endroit pour draguer",
    strTooltip = "Un endroit très spécial où amener votre rencard.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Bel endroit pour draguer"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 24+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 7500,
        strName = "Bel endroit pour draguer"
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
    strName = "Hologramme des Exilés",
    strTooltip = "Utilisez l'hologramme pour auréoler de lumière votre grandeur.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Hologramme des Exilés"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = false,
        strTooltip = "Requiert faction des Exilés"
      }, {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 20+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 15000,
        strName = "Hologramme des Exilés"
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
    strName = "Sources d'eau chaude",
    strTooltip = "Profitez d'un bain relaxant dans les sources d'eau chaude.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Sources d'eau chaude"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = false,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 16+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 14470,
        strName = "Sources d'eau chaude"
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
    strName = "EXPÉDITION : Grotte inquiétante",
    strTooltip = "La Grotte inquiétante est un donjon évolutif pour 1 à 5 joueurs de n'importe quel niveau.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPÉDITION : Grotte inquiétante"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "EXPÉDITION : Grotte inquiétante"
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
    strName = "EXPÉDITION : Mayday",
    strTooltip = "Mayday est un donjon évolutif pour 1 à 5 joueurs de n'importe quel niveau.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "EXPÉDITION : Mayday"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 40+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 55000,
        strName = "EXPÉDITION : Mayday"
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
    strName = "Biome : Bosquet d'Astreclair",
    strTooltip = "Étendue de terrain importée directement du Bosquet d'Astreclair.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Bosquet d'Astreclair"
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
    strName = "Biome : Outre-horizon",
    strTooltip = "Étendue de terrain importée directement d'Outre-horizon.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Outre-horizon"
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
        strName = "Biome : Outre-horizon"
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
    strName = "Biome : Mornegeôle",
    strTooltip = "Étendue de terrain importée directement de Mornegeôle.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Mornegeôle"
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
        strName = "Biome : Mornegeôle"
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
    strName = "Biome : Sombreflore",
    strTooltip = "Étendue de terrain importée directement de Sombreflore.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Biome : Sombreflore"
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
        strName = "Biome : Sombreflore"
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
    strName = "Gueule de Souillure",
    strTooltip = 'Placez ce module pour tenter le défi "Fine Souillure".',
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Gueule de Souillure"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 85000,
        strName = "Gueule de Souillure"
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
    strName = "Laboratoire corrompu",
    strTooltip = 'Placez ce module pour tenter le défi "Attrape-Souillon".',
    tCostRequirements = { {
        eType = 1,
        nRequiredCost = 4255000,
        strName = "Laboratoire corrompu"
      } },
    tFlags = {
      bIsRotatable = false,
      bIsUnique = true,
      bIsUniqueGarden = false,
      bIsUniqueHarvest = false
    },
    tPrerequisites = { {
        bPrerequisiteMet = true,
        strTooltip = "Niveau 50+"
      } },
    tRepairRequirements = { {
        eType = 1,
        nRequiredCost = 100000,
        strName = "Laboratoire corrompu"
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
    strName = "Gîte minéral (élite)",
    strTooltip = "Il faut être un sacré mineur pour extraire ce minerai, mais pas le temps d'avoir la grosse tête. Vous ne pourrez en profiter que pendant la durée du bail, alors creusez, creusez et creusez ! Ne s'obtient que via les Boîtes mystère.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Gîte minéral (élite)"
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
        strName = "Gîte minéral (élite)"
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
    strName = "Site archéo (élite)",
    strTooltip = "Ce site archéologique fournit aux chasseurs de reliques de l'omniplasme et des reliques de niveau maximum. Retroussez-vous les manches et commencez à creuser ! Ne s'obtient que via les Boîtes mystère.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Site archéo (élite)"
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
        strName = "Site archéo (élite)"
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
    strName = "Jardin (élite)",
    strTooltip = "Il y a des jardins, et il y a LE jardin. Si vous avez la main verte, vous allez prendre votre pied, alors laissez libre court à vos plus folles envies horticoles ! Ne s'obtient que via les Boîtes mystère.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Jardin (élite)"
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
        strName = "Jardin (élite)"
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
    strName = "Bosquet (élite)",
    strTooltip = "L'adepte de la survie qui sommeille en vous trouvera ici des matériaux de niveau maximum. Récupérez ce que vous pouvez avant que n'expire le bail de votre terrain. Ne s'obtient que via les Boîtes mystère.",
    tCostRequirements = { {
        eType = 2,
        itemCostReq = "",
        nAvailableCount = 0,
        nRequiredCost = 1,
        strName = "Bosquet (élite)"
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
        strName = "Bosquet (élite)"
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

