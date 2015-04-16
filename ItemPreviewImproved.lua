-----------------------------------------------------------------------------------------------
-- Client Lua Script for ItemPreviewImprovedEx
-- Copyright (c) NCsoft. All rights reserved
-----------------------------------------------------------------------------------------------
 
require "Window"
require "GameLib"
require "HousingLib"
require "Item"
 
-----------------------------------------------------------------------------------------------
-- ItemPreviewImprovedEx Module Definition
-----------------------------------------------------------------------------------------------
local ItemPreviewImproved = {} 
 
-----------------------------------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------------------------------
-- e.g. local kiExampleVariableMax = 999
local L = Apollo.GetPackage("Gemini:Locale-1.0").tPackage:GetLocale("ItemPreviewImproved", true)
local kcrDoubleMarkerOff 		= ApolloColor.new("UI_BtnTextHoloNormal")
local kcrDoubleMarkerHighlight 	= ApolloColor.new("UI_BtnTextHoloFlyby")
local kcrDoubleMarkerSelected 	= ApolloColor.new("UI_BtnTextRedNormal")

local karCostumeSlotNames = -- string name, then id, then button art
{
	{"Weapon", 		GameLib.CodeEnumItemSlots.Weapon,	"CharacterWindowSprites:btn_Armor_HandsNormal", 20},
	{"Head", 		GameLib.CodeEnumItemSlots.Head, 	"CharacterWindowSprites:btnCh_Armor_Head", 		3},
	{"Shoulder", 	GameLib.CodeEnumItemSlots.Shoulder,	"CharacterWindowSprites:btnCh_Armor_Shoulder", 	4},
	{"Chest", 		GameLib.CodeEnumItemSlots.Chest, 	"CharacterWindowSprites:btnCh_Armor_Chest", 	1},
	{"Hands", 		GameLib.CodeEnumItemSlots.Hands, 	"CharacterWindowSprites:btnCh_Armor_Hands", 	6},
	{"Legs", 		GameLib.CodeEnumItemSlots.Legs, 	"CharacterWindowSprites:btnCh_Armor_Legs", 		2},
	{"Feet", 		GameLib.CodeEnumItemSlots.Feet, 	"CharacterWindowSprites:btnCh_Armor_Feet", 		5},
}


local knNumCostumes = 10

local PrevSlot = {
	"Head",
	"Shoulder",
	"Chest",
	"Hands",
	"Legs",
	"Feet"}

local currPreviewedItems =
{
	["Weapon"] = nil,
	["Head"] = nil,
	["Shoulder"] = nil,
	["Chest"] = nil,
	["Hands"] = nil,
	["Legs"] = nil,
	["Feet"] = nil

}

local ktVisibleSlots = 
{
	2,
	3,
	0,
	5,
	1,
	4,
	16
}

-- Supported AuctionHouse Addons
local suppAuctionHouse =
{
	"MarketplaceAuction",
	"EZAuction"
}


-- Supported Challenge Reward Addons
local suppChallenges =
{
	"ChallengeRewardPanel"
}

-- Supported Vendor Addons
local suppVendors =
{
	"Vendor",
	"LilVendor"
}
-- Supported Roll Addons
local suppRolls =
{
	"NeedVsGreed",
	"LootRollEnhanced",
	"NeedVsGreedLite",
	"tLoot"
}

-- Supported Dialog Addons
local suppDialogs = 
{
	"Dialog",
	"ClassicQuestDialog",
	"InstantQuestAccept",
	"QuickDialog",
	"UnitedDialogs",
	"Erns_Speedy_Quest"
}

-- Supported Tradeskills Techtree Addons
local suppTechtree =
{
	"Tradeskills",
	"CRBTradeskills"
}

-- Supported Tradeskills Schematics Addons
local suppSchematics =
{
	"TradeskillSchematics",
}

-- Supported Questlog Addons
local suppQuestlogs =
{
	"QuestLog",
	"BetterQuestLog"
}

-- Supported Chat Addons
local suppChats =
{
	[1] = 	{
			["name"] = "ChatLog",
			["xml"] = "ChatLog.xml"
			},
	[2] = 	{
			["name"] = "BetterChatLog",
			["xml"] = "BetterChatLog.xml"
			},
	[3] = 	{
			["name"] = "ChatFixed",
			["xml"] = "ChatFixed.xml"
			},
	[4] = 	{
			["name"] = "ImprovedChatLog",
			["xml"] = "ImprovedChatLog.xml"
			},
	[5] = 	{
			["name"] = "FixedChatLog",
			["xml"] = "FixedChatLog.xml"
			}	
}

local knSaveVersion
local kstrAuctionOrderDuration = MarketplaceLib.kItemAuctionListTimeDays
local kcrDefaultOptionColor = ApolloColor.new("white")
local kcrHighlightOptionColor = ApolloColor.new(110/255, 255/255, 72/255, 1.0)
 
-----------------------------------------------------------------------------------------------
-- Initialization
-----------------------------------------------------------------------------------------------
function ItemPreviewImproved:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self 

    -- initialize variables here

    return o
end

function ItemPreviewImproved:Init()
    Apollo.RegisterAddon(self, nil, nil, {"Gemini:Hook-1.0", "Lib:ApolloFixes-1.0"})
end

function ItemPreviewImproved:OnSave(eLevel)
	
	if (eLevel ~= GameLib.CodeEnumAddonSaveLevel.Account) then 
		return 
	end 

	local l,t,r,b = self.wndMain:GetAnchorOffsets()
	local l2,t2,r2,b2 = self.wndMount:GetAnchorOffsets()
	local l3,t3,r3,b3 = self.wndFABkit:GetAnchorOffsets()
	local l4,t4,r4,b4 = self.wndDecorPreview:GetAnchorOffsets() 
	
	return 
	{
		tPosition_Main = { l = l, t = t, r = r, b = b },
		tPosition_Mount = { l = l2, t = t2, r = r2, b = b2 },
		tPosition_FABkit = { l = l3, t = t3, r = r3, b = b3 },
		tPosition_Decor = { l = l4, t = t4, r = r4, b = b4 },
		tData_LightMode = lightMode,
		tData_NormalAnchor = { nl = nl, nt = nt, nr = nr, nb = nb }
	}
end
	
function ItemPreviewImproved:OnRestore(eLevel,tSavedData) 
	
	if (eLevel ~= GameLib.CodeEnumAddonSaveLevel.Account) then 
		return 
	end 
	
	local tPosMain = tSavedData.tPosition_Main
	local tPosMount = tSavedData.tPosition_Mount
	local tPosFABkit = tSavedData.tPosition_FABkit
	local tPosDecor = tSavedData.tPosition_Decor
	local tDataFABkits = tSavedData.tData_FABkits
	local tDataLightMode = tSavedData.tData_LightMode
	local tDataNormalAnchor = tSavedData.tData_NormalAnchor
	
	if tPosMain ~= nil then 
		self.wndMain:SetAnchorOffsets(tPosMain.l, tPosMain.t, tPosMain.r, tPosMain.b)
	end
	
	if tPosMount ~= nil then 
		self.wndMount:SetAnchorOffsets(tPosMount.l, tPosMount.t, tPosMount.r, tPosMount.b)
	end 
	
	if tDataFABkits ~= nil then
		ktFABkits = tDataFABkits
	end
	
	if tPosFABkit ~= nil then
		self.wndFABkit:SetAnchorOffsets(tPosFABkit.l, tPosFABkit.t, tPosFABkit.r, tPosFABkit.b)
	end
	
	if tDataLightMode ~= nil then
		lightMode = tDataLightMode
	end
	
	if tDataNormalAnchor ~= nil then
		nl = tDataNormalAnchor.nl
		nr = tDataNormalAnchor.nr
		nt = tDataNormalAnchor.nt
		nb = tDataNormalAnchor.nb
	end
	
	if tPosDecor ~= nil then
		self.wndDecorPreview:SetAnchorOffsets(tPosDecor.l, tPosDecor.t, tPosDecor.r, tPosDecor.b)
	end
end 
 

 

-----------------------------------------------------------------------------------------------
-- ItemPreviewImproved OnLoad
-----------------------------------------------------------------------------------------------
function ItemPreviewImproved:OnLoad()
    -- load our form file
	local GeminiHook = Apollo.GetPackage("Gemini:Hook-1.0").tPackage
	tAddonNames = Apollo.GetAddons()
	GeminiHook:Embed(self)
	self.xmlDoc = XmlDoc.CreateFromFile("ItemPreviewImproved.xml")
	self.xmlDoc:RegisterCallback("OnDocLoaded", self)
	self.wndMain = Apollo.LoadForm(self.xmlDoc, "ItemPreviewImprovedForm", "TooltipStratum", self)
	self.wndMount = Apollo.LoadForm(self.xmlDoc, "ItemPreviewImprovedMountForm", "TooltipStratum", self)
	self.wndFABkit = Apollo.LoadForm(self.xmlDoc, "HousingPreview", nil, self)
	self.wndDyeListContainer = self.wndMain:FindChild("DyeListContainer")
	self.wndDyeList = self.wndDyeListContainer:FindChild("DyeList")
	self.wndDyeHead = self.wndMain:FindChild("PreviewInformation:InfoHead:DyeWindow")
	self.wndDyeShoulder = self.wndMain:FindChild("PreviewInformation:InfoShoulder:DyeWindow")
	self.wndDyeChest = self.wndMain:FindChild("PreviewInformation:InfoChest:DyeWindow")
	self.wndDyeHands = self.wndMain:FindChild("PreviewInformation:InfoHands:DyeWindow")
	self.wndDyeLegs = self.wndMain:FindChild("PreviewInformation:InfoLegs:DyeWindow")
	self.wndDyeFeet = self.wndMain:FindChild("PreviewInformation:InfoFeet:DyeWindow")
	self.wndDecorPreview 	= Apollo.LoadForm(self.xmlDoc, "DecorPreviewImprovedForm", nil, self)
  self.wndModelWindow 	= self.wndDecorPreview:FindChild("ModelWindow")
  self.wndRotateRight 	= self.wndDecorPreview:FindChild("RotateRightButton")
  self.wndRotateLeft 		= self.wndDecorPreview:FindChild("RotateLeftButton")

	tSelectedItems = {}
	self.DyeButtons = {
		["Head"] = {
			[1] = self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"),
			[2] = self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"),
			[3] = self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3")
					},
		["Shoulder"] = {
			[1] = self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"),
			[2] = self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"),
			[3] = self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3")
					},
		["Chest"] = {
			[1] = self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"),
			[2] = self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"),
			[3] = self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3")
					},
		["Hands"] = {
			[1] = self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"),
			[2] = self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"),
			[3] = self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3")
					},
		["Legs"] = {
			[1] = self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"),
			[2] = self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"),
			[3] = self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3")
					},
		["Feet"] = {
			[1] = self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"),
			[2] = self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"),
			[3] = self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3")
					}						
	}
	
	self.alreadyLoadedCostume = {}
	playerunit = GameLib.GetPlayerUnit()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(playerunit)
	self.wndMain:FindChild("PreviewInformation"):Show(false)
	self.wndMount:FindChild("noMount"):Show(false)
	self.wndMount:FindChild("btnInformation"):Show(false)
	self.wndMount:FindChild("noMountInformation"):Show(false)
	self.wndMain:FindChild("btnZoomOut"):Show(false)
	self.wndDecorPreview:Show(false)
	
	for key, val in ipairs(PrevSlot) do
		self.DyeButtons[val][1]:SetCheck(false)
		self.DyeButtons[val][2]:SetCheck(false)
		self.DyeButtons[val][3]:SetCheck(false)
		self.DyeButtons[val][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		self.DyeButtons[val][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		self.DyeButtons[val][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
	end
	self.wndDyeHead:Show(false)
	self.wndDyeShoulder:Show(false)
	self.wndDyeChest:Show(false)
	self.wndDyeHands:Show(false)
	self.wndDyeLegs:Show(false)
	self.wndDyeFeet:Show(false)
	self.wndDyeListContainer:Show(false)
end

-----------------------------------------------------------------------------------------------
-- ItemPreviewImproved OnDocLoaded
-----------------------------------------------------------------------------------------------
function ItemPreviewImproved:OnDocLoaded()
  if self.xmlDoc == nil then return end
	self.wndMain:Show(false, true)
	
	-- if the xmlDoc is no longer needed, you should set it to nil
	-- self.xmlDoc = nil
		
	-- Register handlers for events, slash commands and timer, etc.
	-- e.g. Apollo.RegisterEventHandler("KeyDown", "OnKeyDown", self)
	Apollo.RegisterEventHandler("ShowItemInDressingRoom", "OnShowItemInDressingRoom", self)
  Apollo.RegisterEventHandler("ShowItemInDressingRoom", "DelayTimer", self)
	Apollo.RegisterEventHandler("AppearanceChanged", "OnAppearanceChanged", self)
	Apollo.RegisterEventHandler("GenericEvent_InitializeSchematicsTree", "OnSchematicsInitialize", self)
	Apollo.RegisterEventHandler("DecorPreviewOpen", "OnOpenPreviewDecor", self)
	Apollo.RegisterEventHandler("DecorPreviewClose", "OnCloseDecorPreviewWindow", self)
		
	Apollo.RegisterTimerHandler("EventThresholdTimer", "ItemPreviewFormOpenCallback", self)
	Apollo.RegisterTimerHandler("AppearanceChangedTimer", "UpdateCostume", self)
	Apollo.RegisterTimerHandler("SchematicsHook", "OnSchematicsHook", self)

	Apollo.CreateTimer("EventThresholdTimer", 0.01, false)
	Apollo.CreateTimer("AppearanceChangedTimer", 0.1, false)
	Apollo.CreateTimer("SchematicsHook", 0.1, false)
	
	---------------------------------------------------------------------------
	-- Data Initialization
	---------------------------------------------------------------------------
	if lightMode then
	 self.wndMain:FindChild("btnToggleLightMode"):SetCheck(lightMode)
	else
    lightMode = false
	end
	
	wndMainResized = false
				
  ---------------------------------------------------------------------------
  -- Challenge Preview Configuration
  ---------------------------------------------------------------------------
	for key,val in pairs(suppChallenges) do
    ChallengeAddon = Apollo.GetAddon(val)
		
		if ChallengeAddon ~= nil then break end
	end
		
	if ChallengeAddon == nil then
  	ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported Challenge addon! \nPlease contact the author of the addon via Curse!")
	else
		self:RawHook(ChallengeAddon, "OnIconBlockerClick")
		self:PostHook(ChallengeAddon, "OnGenerateTooltip")
	end

  ---------------------------------------------------------------------------
  -- Roll Preview Initialization
  ---------------------------------------------------------------------------
	for key,val in pairs(suppRolls) do
	 RollAddon = Apollo.GetAddon(val)
		
		if RollAddon ~= nil then
			RollName = val
			break
		end
	end
		
	if RollAddon == nil then
		ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported NeedVsGreed (Roll) addon! \nPlease contact the author of the addon via Curse!")
	else
		self:PostHook(RollAddon, "DrawLoot")
		RollAddon.OnMouseButtonUp = function (luaCaller, wndHandler, wndControl, eMouseButton)
                              		if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
                                		if wndHandler:GetData():GetHousingDecorInfoId() ~= nil and wndHandler:GetData():GetHousingDecorInfoId() ~= 0 then
                                			Event_FireGenericEvent("DecorPreviewOpen", wndHandler:GetData():GetHousingDecorInfoId())
                              				return
                              			else
                              				self:OnShowItemInDressingRoom(wndHandler:GetData())
                              				return
                              			end		
                              		end
                              	end
  end
		
		
  ---------------------------------------------------------------------------
  -- Mount/FABkit Preview Initialization
  ---------------------------------------------------------------------------
	for key,val in pairs(suppVendors) do
    VendorAddon = Apollo.GetAddon(val)
		
    if VendorAddon ~= nil then break end
	end
		
	if VendorAddon == nil then
	 ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported Vendor addon! \nPlease contact the author of the addon via Curse!")
	else
		self:Hook(VendorAddon, "OnVendorListItemMouseDown")
	end
		
  ---------------------------------------------------------------------------
  -- AuctionHouse Initialization
  ---------------------------------------------------------------------------
	for key,val in pairs(suppAuctionHouse) do
    AuctionHouseAddon = Apollo.GetAddon(val)
			
		if val == "EZAuction" then
			-- Do not nothing in case of EZAuction
		else
		  ktTimeRemaining =
				{
					[ItemAuction.CodeEnumAuctionRemaining.Expiring]		= Apollo.GetString("MarketplaceAuction_Expiring"),
					[ItemAuction.CodeEnumAuctionRemaining.LessThanHour]	= Apollo.GetString("MarketplaceAuction_LessThanHour"),
					[ItemAuction.CodeEnumAuctionRemaining.Short]		= Apollo.GetString("MarketplaceAuction_Short"),
					[ItemAuction.CodeEnumAuctionRemaining.Long]			= Apollo.GetString("MarketplaceAuction_Long"),
					--[ItemAuction.CodeEnumAuctionRemaining.Very_Long]	= Apollo.GetString("MarketplaceAuction_VeryLong") -- Uses string weasel to stick a number in
				}
		end
		
	  if AuctionHouseAddon ~= nil then break end
	end
		
	if AuctionHouseAddon == nil then
	 ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported Auctionhouse addon! \nPlease contact the author of the addon via Curse!")
	else
		self:RawHook(AuctionHouseAddon, "BuildListItem")
			
		AuctionHouseAddon.OnMouseButtonUp = function (luaCaller, wndHandler, wndControl, eMouseButton)
                                      			local aucCurr = wndHandler:GetData()
                                      			local itemCurr = aucCurr:GetItem()
                                      			if not itemCurr then
                                      				return
                                      			end
                                      			if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
                                      				if itemCurr:GetHousingDecorInfoId() ~= nil and itemCurr:GetHousingDecorInfoId() ~= 0 then
                                      						Event_FireGenericEvent("DecorPreviewOpen", itemCurr:GetHousingDecorInfoId())
                                      					else
                                      						self:OnShowItemInDressingRoom(itemCurr)				
                                      				end
                                      			end
                                      		end
		
  end

  ---------------------------------------------------------------------------
  -- Tradeskills Initialization
  ---------------------------------------------------------------------------
	for key,val in pairs(suppTechtree) do
    TechtreeAddon = Apollo.GetAddon(val)
		
    if TechtreeAddon ~= nil then break end
	end
		
	if TechtreeAddon == nil then
	 ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported Tradeskills addon! \nPlease contact the author of the addon via Curse!")
	else
	 self:PostHook(TechtreeAddon, "HelperBuildItemTooltip")
	 TechtreeAddon.OnMouseButtonUp = function (luaCaller, wndHandler, wndControl, eMouseButton)
				                            if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
                                      if wndHandler:GetData():GetHousingDecorInfoId() ~= nil and wndHandler:GetData():GetHousingDecorInfoId() ~= 0 then
						                            Event_FireGenericEvent("DecorPreviewOpen", wndHandler:GetData():GetHousingDecorInfoId())
						                            return
					                            else
						                            self:OnShowItemInDressingRoom(wndHandler:GetData())
						                            return
					                            end		
        		                        end
		                              end
				
	end
  ---------------------------------------------------------------------------
  -- Quest Rewards Initialization
  ---------------------------------------------------------------------------
	for key,val in pairs(suppDialogs) do
		DialogAddon = Apollo.GetAddon(val)
		if DialogAddon ~= nil then break end
	end

	if(DialogAddon == nil) then
	 ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported Dialog addon! \nPlease contact the author of the addon via Curse!")
	elseif (DialogAddon.HelperBuildItemTooltip == nil) then
    self:PostHook(DialogAddon, "OnGenerateTooltip")
		DialogAddon.OnLootItemMouseUp = function (luaCaller, wndHandler, wndControl, eMouseButton)			
                                  		if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
                                  		 self:OnShowItemInDressingRoom(wndHandler:GetData())
                                  		end
	  end
	else
  	self:PostHook(DialogAddon, "HelperBuildItemTooltip")	
  	DialogAddon.OnMouseButtonUp = function (luaCaller, wndHandler, wndControl, eMouseButton)
  			if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
  				self:OnShowItemInDressingRoom(wndHandler:GetData())
    		end
  	end
	end
		
  ---------------------------------------------------------------------------
  -- QuestLog Initialization
  ---------------------------------------------------------------------------
  for key,val in pairs(suppQuestlogs) do
  	QuestLogAddon = Apollo.GetAddon(val)
  	
  	if QuestLogAddon ~= nil then break end
  end
		
	if QuestLogAddon == nil then
	 ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported QuestLog addon! \nPlease contact the author of the addon via Curse!")	
	else	
		self:PostHook(QuestLogAddon, "HelperBuildRewardsRec")	
		QuestLogAddon.OnMouseButtonUp = function (luaCaller, wndHandler, wndControl, eMouseButton)
                                			if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
                                					self:OnShowItemInDressingRoom(wndHandler:GetData())
                                  		end
                                		end
	end

  ---------------------------------------------------------------------------
  -- ChatLinks Initialization
  ---------------------------------------------------------------------------
  for key,val in pairs(suppChats) do
  	ChatAddon = Apollo.GetAddon(val["name"])
  	
  	if ChatAddon ~= nil then
  		ChatAddonXML = val["xml"]
  		ChatAddonName = val["name"]
  		break
  	end
  end
		
	if ChatAddon == nil then
		ChatSystemLib.PostOnChannel(2,"ItemPreviewImproved: Could not load any supported ChatLog addon! \nPlease contact the author of the addon via Curse!")
	else
		self:PostHook(ChatAddon, "OnNodeClick")
	end
end

-----------------------------------------------------------------------------------------------
-- ItemPreviewImproved Functions
-----------------------------------------------------------------------------------------------
-- Define general functions here
function ItemPreviewImproved:DelayTimer()
       Apollo.StartTimer("EventThresholdTimer")
end

function ItemPreviewImproved:ItemPreviewFormOpenCallback()
        local wndImpSalv = Apollo.FindWindowByName("ItemPreviewForm")
		local wndDecSalv = Apollo.FindWindowByName("DecorPreviewWindow")
        if wndImpSalv and wndImpSalv:IsShown() then
        	wndImpSalv:Show(false)
			wndImpSalv:Destroy()
		elseif wndDecSalv and wndDecSalv:IsShown() then
			wndDecSalv:Show(false)
			wndDecSalv:Destroy()
        end
end

function ItemPreviewImproved:DrawLoot(luaCaller, tCurrentElement, nItemsInQueue)
	if RollName == "NeedVsGreedLite" then
		RollAddon.wndMain[tCurrentElement.nLootId]:FindChild("ItemIcon"):AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
		RollAddon.wndMain[tCurrentElement.nLootId]:FindChild("ItemIcon"):SetData(tCurrentElement.itemDrop)
		RollAddon.wndMain[tCurrentElement.nLootId]:FindChild("ItemIcon"):SetStyle("IgnoreMouse", false)
	elseif RollName == "tLoot" then
		-- Do nothing because tLoot provides its own preview functionality
	else
		RollAddon.wndMain:FindChild("GiantItemIcon"):AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
		RollAddon.wndMain:FindChild("GiantItemIcon"):SetData(tCurrentElement.itemDrop)
		RollAddon.wndMain:FindChild("GiantItemIcon"):SetStyle("IgnoreMouse", false)
	end
end

function ItemPreviewImproved:BuildListItem(luaCaller, aucCurr, wndParent, bBuyTab)
	local itemCurr = aucCurr:GetItem()
			local bIsOwnAuction = aucCurr:IsOwned()
			local nBuyoutPrice = aucCurr:GetBuyoutPrice():GetAmount()
			local nDefaultBid = math.max(aucCurr:GetMinBid():GetAmount(), aucCurr:GetCurrentBid():GetAmount())

			local strFormToLoad = "BuyNowItem"
			if nBuyoutPrice == 0 then
				strFormToLoad = "BidOnlyItem"
			elseif nDefaultBid >= nBuyoutPrice then
				strFormToLoad = "BuyOnlyItem"
			end

			local wnd = Apollo.LoadForm(AuctionHouseAddon.xmlDoc, strFormToLoad, wndParent, AuctionHouseAddon)
			wnd:SetData(aucCurr)
			wnd:FindChild("RowSelectBtn"):SetData(aucCurr)
			wnd:FindChild("RowSelectBtn"):AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
			wnd:FindChild("RowSelectBtn"):Show(bBuyTab)
			wnd:FindChild("ListName"):SetText(itemCurr:GetName())
			wnd:FindChild("ListIcon"):SetSprite(itemCurr:GetIcon())
			wnd:FindChild("ListIcon"):SetText(aucCurr:GetCount() <= 1 and "" or aucCurr:GetCount())

			local eTimeRemaining = aucCurr:GetTimeRemainingEnum()
			if bIsOwnAuction then
				wnd:FindChild("ListExpires"):SetText(AuctionHouseAddon.HelperFormatTimeString(luaCaller, aucCurr:GetExpirationTime()))
				wnd:FindChild("ListExpiresIcon"):SetSprite("Market:UI_Auction_Icon_TimeGreen")
				wnd:FindChild("ListExpires"):SetTextColor(ApolloColor.new("UI_TextHoloTitle"))

			elseif eTimeRemaining == ItemAuction.CodeEnumAuctionRemaining.Very_Long then
				wnd:FindChild("ListExpires"):SetTextRaw(String_GetWeaselString(Apollo.GetString("MarketplaceAuction_VeryLong"), kstrAuctionOrderDuration))
				wnd:FindChild("ListExpires"):SetTextColor(ApolloColor.new("UI_TextHoloTitle"))
				wnd:FindChild("ListExpiresIcon"):Show("Market:UI_Auction_Icon_TimeGreen")

			else
				wnd:FindChild("ListExpires"):SetTextRaw(ktTimeRemaining[eTimeRemaining])
				wnd:FindChild("ListExpires"):SetTextColor(ApolloColor.new("xkcdDullRed"))
				wnd:FindChild("ListExpiresIcon"):Show("Market:UI_Auction_Icon_TimeRed")
			end
			wnd:FindChild("OwnAuctionLabel"):Show(bIsOwnAuction)
			wnd:FindChild("TopBidAuctionLabel"):Show(aucCurr:IsTopBidder())

			if wnd:FindChild("BidPrice") then
				wnd:FindChild("BidPrice"):SetAmount(nDefaultBid)
			end

			if wnd:FindChild("BuyNowPrice") then
				local bCanAffordBuyNow = AuctionHouseAddon.wndPlayerCashWindow:GetAmount() >= nBuyoutPrice
				wnd:FindChild("BuyNowPrice"):SetAmount(nBuyoutPrice)
				wnd:FindChild("BuyNowPrice"):SetTextColor(bCanAffordBuyNow and "UI_TextHoloTitle" or "UI_BtnTextRedNormal")
			end

end

function ItemPreviewImproved:OnCloseFABkit( wndHandler, wndControl, eMouseButton )
	self.wndFABkit:Close()
end

function ItemPreviewImproved:ScreenshotLeft( wndHandler, wndControl, eMouseButton )
	local nNewSS = #self.tScreenshots
	if self.tScreenshots[self.nCurrSS-1] then
		nNewSS = self.nCurrSS-1
	end
	
	self.nCurrSS = nNewSS
	self.wndFABkit:FindChild("Picture"):SetSprite(self.tScreenshots[nNewSS].strSprite)
	self.wndFABkit:ToFront()
end

function ItemPreviewImproved:ScreenshotRight( wndHandler, wndControl, eMouseButton )
	local nNewSS = 1
	if self.tScreenshots[self.nCurrSS+1] then
		nNewSS = self.nCurrSS+1
	end
	
	self.nCurrSS = nNewSS
	self.wndFABkit:FindChild("Picture"):SetSprite(self.tScreenshots[nNewSS].strSprite)
	self.wndFABkit:ToFront()
end

function ItemPreviewImproved:OnSchematicsHook()
	for key,val in pairs(suppSchematics) do
		SchematicsAddon = Apollo.GetAddon(val)
		
		if SchematicsAddon ~= nil then
			break
		end
	end
	
	if SchematicsAddon ~= nil then
		if self:IsHooked(SchematicsAddon, "HelperBuildItemTooltip") == false then
			self:PostHook(SchematicsAddon, "HelperBuildItemTooltip")
				if SchematicsAddon.OnMouseButtonUp == nil then
					SchematicsAddon.OnMouseButtonUp = function (luaCaller, wndHandler, wndControl, eMouseButton)
						if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
							if wndHandler:GetData():GetHousingDecorInfoId() ~= nil and wndHandler:GetData():GetHousingDecorInfoId() ~= 0 then
								Event_FireGenericEvent("DecorPreviewOpen", wndHandler:GetData():GetHousingDecorInfoId())
								return
							else
								self:OnShowItemInDressingRoom(wndHandler:GetData())
								return
							end		
        				end
				end
		end
	end
	end
end 

function ItemPreviewImproved:OnIconBlockerClick(luaCaller, wndHandler, wndControl, eMouseButton)
	if wndHandler ~= wndControl then return end
	
	local bCanSelect = wndControl:GetData()
	local wndBtn = wndControl:GetParent():FindChild("ChallengeItemBtn")
	
	if Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Right then
		local item = wndControl:GetData()
		if item:GetHousingDecorInfoId() ~= nil and item:GetHousingDecorInfoId() ~= 0 then
			Event_FireGenericEvent("DecorPreviewOpen", item:GetHousingDecorInfoId())
			return
		else
			self:OnShowItemInDressingRoom(item)
			return
		end
	elseif not Apollo.IsControlKeyDown() and eMouseButton == GameLib.CodeEnumInputMouse.Left then
		ChallengeAddon:OnChallengeItemBtn(wndBtn, wndBtn)
	end
end

function ItemPreviewImproved:OnSchematicsInitialize()
	Apollo.StartTimer("SchematicsHook")
end

function ItemPreviewImproved:UpdateCostume()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		self.wndMain:FindChild("PreviewWindow"):SetItem(val)
	end
	for idx, tItemDyes in pairs(tSelectedItems) do
		self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
	end
end

function ItemPreviewImproved:OnAppearanceChanged()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(nil)
	Apollo.StartTimer("AppearanceChangedTimer")
end

function ItemPreviewImproved:OnGenerateTooltip(luaCaller, wndControl, wndHandler, eType, Arg1, Arg2)
	if eType == Tooltip.TooltipGenerateType_ItemData then
		local itemReward = Arg1
		wndControl:GetParent():FindChild("LootIconBlocker"):SetData(itemReward)
	end
end

function ItemPreviewImproved:HelperBuildItemTooltip(luaCaller, wndArg, itemCurr, itemModData, tGlyphData)
	wndArg:AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
	wndArg:SetData(itemCurr)
end

function ItemPreviewImproved:OnNodeClick(luaCaller, wndHandler, wndControl, strNode, tAttributes, eMouseButton)
	local nIndex = tonumber(tAttributes.strIndex)
	if strNode == "Link" then
		if ChatAddon.tLinks[nIndex].uItem then
			if Apollo.IsControlKeyDown() == true and eMouseButton == GameLib.CodeEnumInputMouse.Right then		
				if ChatAddon.tLinks[nIndex].uItem:GetHousingDecorInfoId() ~= nil and ChatAddon.tLinks[nIndex].uItem:GetHousingDecorInfoId() ~= 0 then
					Event_FireGenericEvent("DecorPreviewOpen", ChatAddon.tLinks[nIndex].uItem:GetHousingDecorInfoId())
					return
				else
					Event_FireGenericEvent("ShowItemInDressingRoom", ChatAddon.tLinks[nIndex].uItem)
					return
				end						
			end
		end
	end
end

function ItemPreviewImproved:OnVendorListItemMouseDown(luaCaller, wndHandler, wndControl, eMouseButton, nPosX, nPosY, bDoubleClick)
	if eMouseButton == GameLib.CodeEnumInputMouse.Right and Apollo.IsControlKeyDown() then
			if not wndHandler or not wndHandler:GetData() then return end
		    local tItemPreview = wndHandler:GetData()
		    if tItemPreview and tItemPreview.itemData then
		        local itemCurr = tItemPreview.itemData
		        local itemID = itemCurr:GetItemId()
				local itemName = itemCurr:GetName()
				
				vendorItem = Item.GetDataFromId(itemID)
				
				self:OnShowItemInDressingRoom(vendorItem)
				
				local previewWindow = Apollo.FindWindowByName("ItemPreviewImprovedMountForm")

				for idx, val in pairs(tMounts) do
					if itemID == val["Item_ID"] then
						if val["Mount_ID"] ~= nil then
							if previewWindow:FindChild("noMount"):IsShown() then
								previewWindow:FindChild("noMount"):Show(false)
							end
							previewWindow:FindChild("MountPortrait"):SetCamera("Paperdoll")
							previewWindow:FindChild("MountPortrait"):SetCostumeToCreatureId(val["Mount_ID"])
							if val["Hoverboard_ID"] ~= 0 then
								previewWindow:FindChild("MountPortrait"):SetAttachment(PetCustomizationLib.HoverboardAttachmentPoint, val["Hoverboard_ID"])
							end
							
							if previewWindow:FindChild("btnInformation"):IsShown() then
								previewWindow:FindChild("btnInformation"):Show(false)
							end
						else
							previewWindow:FindChild("MountPortrait"):SetCostume(nil)
							previewWindow:FindChild("noMount"):Show(true)
							previewWindow:FindChild("btnInformation"):Show(true)
						end
						previewWindow:Show(true)
					end
				end
			end		
		end	
end

function ItemPreviewImproved:HelperBuildItemTooltip(luaCaller, wndArg, item)
	wndArg:AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
	wndArg:SetData(item)
end

function ItemPreviewImproved:HelperBuildRewardsRec(luaCaller, wndReward, tRewardData, bReceived)
	wndReward:AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
	wndReward:SetData(tRewardData.itemReward)
end

function ItemPreviewImproved:HelperBuildItemTooltip(luaCaller, wndArg, item)
	wndArg:AddEventHandler("MouseButtonUp", "OnMouseButtonUp")
	wndArg:SetData(item)
end

function ItemPreviewImproved:OnShowItemInDressingRoom(item)
	
	previewAddon = Apollo.GetAddon("ItemPreview")
		if previewAddon ~= nil then
			if previewAddon.wndMain and previewAddon.wndMain:IsShown() then
				previewAddon.wndMain:Show(false)
				previewAddon.wndMain:Destroy()
			end
		else
			self:DelayTimer()
		end
	
	if item == nil or not self:HelperValidateSlot(item) then
		return
	end

	self:FillDyes()
	
	if playerunit == nil then
		self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
		playerunit = GameLib.GetPlayerUnit()
	end
	
	self:SwitchMode(lightMode)
	
	self:SetSizingMinimum(lightMode)
	
	self.wndMain:FindChild("PreviewWindow"):SetItem(item)
	
	if self.locSavedWindowLoc then
		self.wndMain:MoveToLocation(self.locSavedWindowLoc)
	end

	local strItem = item:GetName()
	
	if ktVisibleSlots[1] == item:GetSlot() then
		if item:isInstance() then
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):GetText() ~= nil then
				if currPreviewedItems["Head"] ~= nil then
					tSelectedItems[currPreviewedItems["Head"]:GetItemId()] = nil
				end
				currPreviewedItems["Head"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):SetText("")
				self.DyeButtons["Head"][1]:SetCheck(false)
				self.DyeButtons["Head"][2]:SetCheck(false)
				self.DyeButtons["Head"][3]:SetCheck(false)
				self.DyeButtons["Head"][1]:SetData(nil)
				self.DyeButtons["Head"][2]:SetData(nil)
				self.DyeButtons["Head"][3]:SetData(nil)
				self.DyeButtons["Head"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Head"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Head"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			currPreviewedItems["Head"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):SetText(strItem)
			local dyeChannels = item:GetAvailableDyeChannel()
			if not dyeChannels["bDyeChannel1"] and not dyeChannels["bDyeChannel2"] and not dyeChannels["bDyeChannel3"] then
				self.wndDyeHead:Show(false)
			else
				self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"):Show(dyeChannels["bDyeChannel1"])
				self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"):Show(dyeChannels["bDyeChannel2"])
				self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3"):Show(dyeChannels["bDyeChannel3"])
				self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeHead:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeHead:Show(true)
			end
		else
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):GetText() ~= nil then
				if currPreviewedItems["Head"] ~= nil then
					tSelectedItems[currPreviewedItems["Head"]:GetItemId()] = nil
				end
				currPreviewedItems["Head"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):SetText("")
				self.DyeButtons["Head"][1]:SetCheck(false)
				self.DyeButtons["Head"][2]:SetCheck(false)
				self.DyeButtons["Head"][3]:SetCheck(false)
				self.DyeButtons["Head"][1]:SetData(nil)
				self.DyeButtons["Head"][2]:SetData(nil)
				self.DyeButtons["Head"][3]:SetData(nil)
				self.DyeButtons["Head"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Head"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Head"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				end
			if self.wndDyeHead:IsShown() then
				self.wndDyeHead:Show(false)
			end
			currPreviewedItems["Head"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):SetText(strItem)
		end
	elseif ktVisibleSlots[2] == item:GetSlot() then
		if item:isInstance() then
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):GetText() ~= nil then
				if currPreviewedItems["Shoulder"] ~= nil then
					tSelectedItems[currPreviewedItems["Shoulder"]:GetItemId()] = nil
				end
				currPreviewedItems["Shoulder"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):SetText("")
				self.DyeButtons["Shoulder"][1]:SetCheck(false)
				self.DyeButtons["Shoulder"][2]:SetCheck(false)
				self.DyeButtons["Shoulder"][3]:SetCheck(false)
				self.DyeButtons["Shoulder"][1]:SetData(nil)
				self.DyeButtons["Shoulder"][2]:SetData(nil)
				self.DyeButtons["Shoulder"][3]:SetData(nil)
				self.DyeButtons["Shoulder"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Shoulder"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Shoulder"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			currPreviewedItems["Shoulder"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):SetText(strItem)
			local dyeChannels = item:GetAvailableDyeChannel()
			if not dyeChannels["bDyeChannel1"] and not dyeChannels["bDyeChannel2"] and not dyeChannels["bDyeChannel3"] then
				self.wndDyeShoulder:Show(false)
			else
				self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"):Show(dyeChannels["bDyeChannel1"])
				self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"):Show(dyeChannels["bDyeChannel2"])
				self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3"):Show(dyeChannels["bDyeChannel3"])
				self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeShoulder:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeShoulder:Show(true)
			end
		else
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):GetText() ~= nil then
				if currPreviewedItems["Shoulder"] ~= nil then
					tSelectedItems[currPreviewedItems["Shoulder"]:GetItemId()] = nil
				end
				currPreviewedItems["Shoulder"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):SetText("")
				self.DyeButtons["Shoulder"][1]:SetCheck(false)
				self.DyeButtons["Shoulder"][2]:SetCheck(false)
				self.DyeButtons["Shoulder"][3]:SetCheck(false)
				self.DyeButtons["Shoulder"][1]:SetData(nil)
				self.DyeButtons["Shoulder"][2]:SetData(nil)
				self.DyeButtons["Shoulder"][3]:SetData(nil)
				self.DyeButtons["Shoulder"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Shoulder"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Shoulder"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			if self.wndDyeShoulder:IsShown() then
				self.wndDyeShoulder:Show(false)
			end
			currPreviewedItems["Shoulder"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):SetText(strItem)
		end
	elseif ktVisibleSlots[3] == item:GetSlot() then
		if item:isInstance() then
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):GetText() ~= nil then
				if currPreviewedItems["Chest"] ~= nil then
					tSelectedItems[currPreviewedItems["Chest"]:GetItemId()] = nil
				end
				currPreviewedItems["Chest"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):SetText("")
				self.DyeButtons["Chest"][1]:SetCheck(false)
				self.DyeButtons["Chest"][2]:SetCheck(false)
				self.DyeButtons["Chest"][3]:SetCheck(false)
				self.DyeButtons["Chest"][1]:SetData(nil)
				self.DyeButtons["Chest"][2]:SetData(nil)
				self.DyeButtons["Chest"][3]:SetData(nil)
				self.DyeButtons["Chest"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Chest"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Chest"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			currPreviewedItems["Chest"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):SetText(strItem)
			local dyeChannels = item:GetAvailableDyeChannel()
			if not dyeChannels["bDyeChannel1"] and not dyeChannels["bDyeChannel2"] and not dyeChannels["bDyeChannel3"] then
				self.wndDyeChest:Show(false)
			else
				self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"):Show(dyeChannels["bDyeChannel1"])
				self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"):Show(dyeChannels["bDyeChannel2"])
				self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3"):Show(dyeChannels["bDyeChannel3"])
				self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeChest:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeChest:Show(true)
			end
		else
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):GetText() ~= nil then
				if currPreviewedItems["Chest"] ~= nil then
					tSelectedItems[currPreviewedItems["Chest"]:GetItemId()] = nil
				end
				currPreviewedItems["Chest"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):SetText("")
				self.DyeButtons["Chest"][1]:SetCheck(false)
				self.DyeButtons["Chest"][2]:SetCheck(false)
				self.DyeButtons["Chest"][3]:SetCheck(false)
				self.DyeButtons["Chest"][1]:SetData(nil)
				self.DyeButtons["Chest"][2]:SetData(nil)
				self.DyeButtons["Chest"][3]:SetData(nil)
				self.DyeButtons["Chest"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Chest"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Chest"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			if self.wndDyeChest:IsShown() then
				self.wndDyeChest:Show(false)
			end
			currPreviewedItems["Chest"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):SetText(strItem)
		end
	elseif ktVisibleSlots[4] == item:GetSlot() then
		if item:isInstance() then
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):GetText() ~= nil then
				if currPreviewedItems["Hands"] ~= nil then
					tSelectedItems[currPreviewedItems["Hands"]:GetItemId()] = nil
				end
				currPreviewedItems["Hands"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):SetText("")
				self.DyeButtons["Hands"][1]:SetCheck(false)
				self.DyeButtons["Hands"][2]:SetCheck(false)
				self.DyeButtons["Hands"][3]:SetCheck(false)
				self.DyeButtons["Hands"][1]:SetData(nil)
				self.DyeButtons["Hands"][2]:SetData(nil)
				self.DyeButtons["Hands"][3]:SetData(nil)
				self.DyeButtons["Hands"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Hands"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Hands"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			currPreviewedItems["Hands"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):SetText(strItem)
			local dyeChannels = item:GetAvailableDyeChannel()
			if not dyeChannels["bDyeChannel1"] and not dyeChannels["bDyeChannel2"] and not dyeChannels["bDyeChannel3"] then
				self.wndDyeHands:Show(false)
			else
				self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"):Show(dyeChannels["bDyeChannel1"])
				self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"):Show(dyeChannels["bDyeChannel2"])
				self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3"):Show(dyeChannels["bDyeChannel3"])
				self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeHands:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeHands:Show(true)
			end
		else
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):GetText() ~= nil then
				if currPreviewedItems["Hands"] ~= nil then
					tSelectedItems[currPreviewedItems["Hands"]:GetItemId()] = nil
				end
				currPreviewedItems["Hands"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):SetText("")
				self.DyeButtons["Hands"][1]:SetCheck(false)
				self.DyeButtons["Hands"][2]:SetCheck(false)
				self.DyeButtons["Hands"][3]:SetCheck(false)
				self.DyeButtons["Hands"][1]:SetData(nil)
				self.DyeButtons["Hands"][2]:SetData(nil)
				self.DyeButtons["Hands"][3]:SetData(nil)
				self.DyeButtons["Hands"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Hands"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Hands"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			if self.wndDyeHands:IsShown() then
				self.wndDyeHands:Show(false)
			end
			currPreviewedItems["Hands"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):SetText(strItem)
		end
	elseif ktVisibleSlots[5] == item:GetSlot() then
		if item:isInstance() then
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):GetText() ~= nil then
				if currPreviewedItems["Legs"] ~= nil then
					tSelectedItems[currPreviewedItems["Legs"]:GetItemId()] = nil
				end
				currPreviewedItems["Legs"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):SetText("")
				self.DyeButtons["Legs"][1]:SetCheck(false)
				self.DyeButtons["Legs"][2]:SetCheck(false)
				self.DyeButtons["Legs"][3]:SetCheck(false)
				self.DyeButtons["Legs"][1]:SetData(nil)
				self.DyeButtons["Legs"][2]:SetData(nil)
				self.DyeButtons["Legs"][3]:SetData(nil)
				self.DyeButtons["Legs"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Legs"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Legs"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			currPreviewedItems["Legs"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):SetText(strItem)
			local dyeChannels = item:GetAvailableDyeChannel()
			if not dyeChannels["bDyeChannel1"] and not dyeChannels["bDyeChannel2"] and not dyeChannels["bDyeChannel3"] then
				self.wndDyeLegs:Show(false)
			else
				self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"):Show(dyeChannels["bDyeChannel1"])
				self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"):Show(dyeChannels["bDyeChannel2"])
				self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3"):Show(dyeChannels["bDyeChannel3"])
				self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeLegs:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeLegs:Show(true)
			end
		else
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):GetText() ~= nil then
				if currPreviewedItems["Legs"] ~= nil then
					tSelectedItems[currPreviewedItems["Legs"]:GetItemId()] = nil
				end
				currPreviewedItems["Legs"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):SetText("")
				self.DyeButtons["Legs"][1]:SetCheck(false)
				self.DyeButtons["Legs"][2]:SetCheck(false)
				self.DyeButtons["Legs"][3]:SetCheck(false)
				self.DyeButtons["Legs"][1]:SetData(nil)
				self.DyeButtons["Legs"][2]:SetData(nil)
				self.DyeButtons["Legs"][3]:SetData(nil)
				self.DyeButtons["Legs"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Legs"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Legs"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			if self.wndDyeLegs:IsShown() then
				self.wndDyeLegs:Show(false)
			end
			currPreviewedItems["Legs"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):SetText(strItem)
		end
	elseif ktVisibleSlots[6] == item:GetSlot() then
		if item:isInstance() then
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):GetText() ~= nil then
				if currPreviewedItems["Feet"] ~= nil then
					tSelectedItems[currPreviewedItems["Feet"]:GetItemId()] = nil
				end
				currPreviewedItems["Feet"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):SetText("")
				self.DyeButtons["Feet"][1]:SetCheck(false)
				self.DyeButtons["Feet"][2]:SetCheck(false)
				self.DyeButtons["Feet"][3]:SetCheck(false)
				self.DyeButtons["Feet"][1]:SetData(nil)
				self.DyeButtons["Feet"][2]:SetData(nil)
				self.DyeButtons["Feet"][3]:SetData(nil)
				self.DyeButtons["Feet"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Feet"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Feet"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			currPreviewedItems["Feet"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):SetText(strItem)
			local dyeChannels = item:GetAvailableDyeChannel()
			if not dyeChannels["bDyeChannel1"] and not dyeChannels["bDyeChannel2"] and not dyeChannels["bDyeChannel3"] then
				self.wndDyeFeet:Show(false)
			else
				self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1"):Show(dyeChannels["bDyeChannel1"])
				self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2"):Show(dyeChannels["bDyeChannel2"])
				self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3"):Show(dyeChannels["bDyeChannel3"])
				self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor1Container:DyeColor1:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor2Container:DyeColor2:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeFeet:FindChild("CostumeEntryForm:DyeColor3Container:DyeColor3:DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.wndDyeFeet:Show(true)
			end
		else
			if self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):GetText() ~= nil then
				if currPreviewedItems["Feet"] ~= nil then
					tSelectedItems[currPreviewedItems["Feet"]:GetItemId()] = nil
				end
				currPreviewedItems["Feet"] = nil
				self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):SetText("")
				self.DyeButtons["Feet"][1]:SetCheck(false)
				self.DyeButtons["Feet"][2]:SetCheck(false)
				self.DyeButtons["Feet"][3]:SetCheck(false)
				self.DyeButtons["Feet"][1]:SetData(nil)
				self.DyeButtons["Feet"][2]:SetData(nil)
				self.DyeButtons["Feet"][3]:SetData(nil)
				self.DyeButtons["Feet"][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Feet"][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
				self.DyeButtons["Feet"][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			end
			if self.wndDyeFeet:IsShown() then
				self.wndDyeFeet:Show(false)
			end
			currPreviewedItems["Feet"] = item
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):SetText(strItem)
		end
	elseif ktVisibleSlots[7] == item:GetSlot() then
		self.wndMain:FindChild("PreviewInformation"):FindChild("InfoWeapon"):FindChild("ItemLabelWeapon"):SetText(strItem)
		currPreviewedItems["Weapon"] = item
	end

	-- set sheathed or not
	local eItemType = item:GetItemType()
	self.bSheathed = not self:HelperCheckForWeapon(eItemType)

	self.wndMain:FindChild("PreviewWindow"):SetSheathed(self.bSheathed)
	self:HelperFormatSheathButton(self.bSheathed)
	
	self.wndCostumeSelectionList = self.wndMain:FindChild("Middle:CostumeBtnHolder")
	self.wndCostumeSelectionList:Show(false)
	
	self.tCostumeBtns = {}
	self.nCostumeCount = GameLib.GetCostumeCount()

	for idx = 1, knNumCostumes do
		self.tCostumeBtns[idx] = self.wndCostumeSelectionList:FindChild("CostumeBtn"..idx)
		self.tCostumeBtns[idx]:SetData(idx)		
		self.tCostumeBtns[idx]:Show( idx <= self.nCostumeCount)
		
		if idx <= self.nCostumeCount then
			self.wndMain:FindChild("CostumeBtn" .. idx):SetCheck(false)
			self.wndMain:FindChild("CostumeBtn" .. idx):SetText(String_GetWeaselString(Apollo.GetString("Character_CostumeNum"), idx)) -- TODO: this will be a real name at some point
		end
	end
	self.nCurrentCostume = GameLib.GetCostumeIndex()
	local wndCurrentCostume = self.wndMain:FindChild("CostumeBtnHolder"):FindChild("CostumeBtn" .. self.nCurrentCostume)

	if self.nCurrentCostume > 0 and self.nCurrentCostume ~= nil then
		self.wndMain:FindChild("CostumeBtn" .. self.nCurrentCostume):SetCheck(true)
		local strName = wndCurrentCostume:GetText()
		self.wndMain:FindChild("SelectCostumeWindowToggle"):SetText(strName)
	else
		self.wndMain:FindChild("ClearCostumeBtn"):SetCheck(true)
		self.wndMain:FindChild("SelectCostumeWindowToggle"):SetText(Apollo.GetString("Character_CostumeSelectDefault"))
	end
	
	local nLeft, nTop, nRight, nBottom = self.wndMain:FindChild("CostumeBtnHolder"):GetAnchorOffsets()
	self.wndMain:FindChild("CostumeBtnHolder"):SetAnchorOffsets(nLeft, nBottom - (75 + 28 * self.nCostumeCount), nRight, nBottom)
	self:DelayTimer()
	self.wndMain:Show(true)
end

function ItemPreviewImproved:HelperCheckForWeapon(eItemType)
	local bIsWeapon = false

	if eItemType >= Item.CodeEnumItemType.WeaponMHPistols and eItemType <= Item.CodeEnumItemType.WeaponMHSword then
		bIsWeapon = true
	end

	return bIsWeapon
end

function ItemPreviewImproved:HelperFormatSheathButton(bSheathed)
	if bSheathed == true then
		self.wndMain:FindChild("SheathButton"):SetText(Apollo.GetString("Inventory_DrawWeapons"))
	else
		self.wndMain:FindChild("SheathButton"):SetText(Apollo.GetString("Inventory_Sheathe"))
	end
end

function ItemPreviewImproved:HelperValidateSlot(item)
	local bVisibleSlot = false
	local bRightClassOrProf = false
	self:CheckFABkit(item)
	for idx, nSlot in pairs(ktVisibleSlots) do
		if item:GetSlot() and item:GetSlot() == nSlot then --item:GetSlot() and
			bRightClassOrProf = true
			bVisibleSlot = bRightClassOrProf
			break
		end

	end

	return bVisibleSlot
end


-----------------------------------------------------------------------------------------------
-- ItemPreviewImproved Form Functions
-----------------------------------------------------------------------------------------------

function ItemPreviewImproved:OnWindowClosed( wndHandler, wndControl )
	if self.wndMain ~= nil then
		self.wndMain:Close()
	end
end

function ItemPreviewImproved:OnToggleSheathButton( wndHandler, wndControl, eMouseButton )
	local bWeapon = wndControl:IsChecked()
	self.wndMain:FindChild("PreviewWindow"):SetSheathed(bWeapon)
end

function ItemPreviewImproved:OnCloseBtn( wndHandler, wndControl, eMouseButton )
	self.wndMain:Show(false)
end

function ItemPreviewImproved:OnInfo()
	if self.wndMain:FindChild("PreviewInformation"):IsShown() == true then
		self.wndMain:FindChild("PreviewInformation"):Show(false)
		self.wndDyeListContainer:Show(false)
	else
		self.wndMain:FindChild("PreviewInformation"):Show(true)
		self.wndDyeListContainer:Show(true)
	end
end

function ItemPreviewImproved:OnToggleSheathed( wndHandler, wndControl, eMouseButton )
	local bSheathed = not self.bSheathed
	self.wndMain:FindChild("PreviewWindow"):SetSheathed(bSheathed)
	self:HelperFormatSheathButton(bSheathed)

	self.bSheathed = bSheathed
end

function ItemPreviewImproved:OnRotateRight()
	if self.wndMain:IsShown() then
		self.wndMain:FindChild("PreviewWindow"):ToggleLeftSpin(true)
	else
		self.wndMount:FindChild("MountPortrait"):ToggleLeftSpin(true)
	end	
end

function ItemPreviewImproved:OnRotateRightCancel()
	if self.wndMain:IsShown() then
		self.wndMain:FindChild("PreviewWindow"):ToggleLeftSpin(false)
	else
		self.wndMount:FindChild("MountPortrait"):ToggleLeftSpin(false)
	end	
end

function ItemPreviewImproved:OnRotateLeft()
	if self.wndMain:IsShown() then
		self.wndMain:FindChild("PreviewWindow"):ToggleRightSpin(true)
	else
		self.wndMount:FindChild("MountPortrait"):ToggleRightSpin(true)
	end
end

function ItemPreviewImproved:OnRotateLeftCancel()
	if self.wndMain:IsShown() then
		self.wndMain:FindChild("PreviewWindow"):ToggleRightSpin(false)
	else
		self.wndMount:FindChild("MountPortrait"):ToggleRightSpin(false)
	end
end

function ItemPreviewImproved:OnReset()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):SetText("")
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):SetText("")
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):SetText("")
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):SetText("")
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):SetText("")
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):SetText("")
	self.wndMain:FindChild("PreviewInformation"):FindChild("InfoWeapon"):FindChild("ItemLabelWeapon"):SetText("")
	for key,val in pairs(currPreviewedItems) do
		tSelectedItems[currPreviewedItems[key]:GetItemId()] = nil
		currPreviewedItems[key] = nil
		if key == "Weapon" then
		
		else
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		end
	end
		
	self.wndDyeChest:Show(false)
	self.wndDyeShoulder:Show(false)
	self.wndDyeFeet:Show(false)
	self.wndDyeHands:Show(false)
	self.wndDyeHead:Show(false)
	self.wndDyeLegs:Show(false)
end

function ItemPreviewImproved:OnPreviewLeft()
	local l, t, r, b = -322, -21, 25, 603
	self.wndMain:FindChild("PreviewInformation"):SetAnchorOffsets(l, t, r, b)
	local l2,t2,r2,b2 = 320, -20, 353, -171
	self.wndDyeListContainer:SetAnchorOffsets(l2, t2, r2, b2)
	local l3,t3,r3,b3 = -260, -8, -12, 77
	self.wndMain:FindChild("PreviewInformation:InfoHead:DyeWindow"):SetAnchorOffsets(l3,t3,r3,b3)
	self.wndMain:FindChild("PreviewInformation:InfoHead:DyeWindow"):SetSprite("PlayerPathContent_TEMP:spr_TEMP_HoloBlue_PopoutSmall_Reverse")
	local l4,t4,r4,b4 = -260, -8, -12, 77
	self.wndMain:FindChild("PreviewInformation:InfoShoulder:DyeWindow"):SetAnchorOffsets(l4,t4,r4,b4)
	self.wndMain:FindChild("PreviewInformation:InfoShoulder:DyeWindow"):SetSprite("PlayerPathContent_TEMP:spr_TEMP_HoloBlue_PopoutSmall_Reverse")
	local l5,t5,r5,b5 = -260, -8, -12, 77
	self.wndMain:FindChild("PreviewInformation:InfoChest:DyeWindow"):SetAnchorOffsets(l5,t5,r5,b5)
	self.wndMain:FindChild("PreviewInformation:InfoChest:DyeWindow"):SetSprite("PlayerPathContent_TEMP:spr_TEMP_HoloBlue_PopoutSmall_Reverse")
	local l6,t6,r6,b6 = -260, -8, -12, 77
	self.wndMain:FindChild("PreviewInformation:InfoHands:DyeWindow"):SetAnchorOffsets(l6,t6,r6,b6)
	self.wndMain:FindChild("PreviewInformation:InfoHands:DyeWindow"):SetSprite("PlayerPathContent_TEMP:spr_TEMP_HoloBlue_PopoutSmall_Reverse")
	local l7,t7,r7,b7 = -260, -8, -12, 77
	self.wndMain:FindChild("PreviewInformation:InfoLegs:DyeWindow"):SetAnchorOffsets(l7,t7,r7,b7)
	self.wndMain:FindChild("PreviewInformation:InfoLegs:DyeWindow"):SetSprite("PlayerPathContent_TEMP:spr_TEMP_HoloBlue_PopoutSmall_Reverse")
	local l8,t8,r8,b8 = -260, -8, -12, 77
	self.wndMain:FindChild("PreviewInformation:InfoFeet:DyeWindow"):SetAnchorOffsets(l7,t7,r7,b7)
	self.wndMain:FindChild("PreviewInformation:InfoFeet:DyeWindow"):SetSprite("PlayerPathContent_TEMP:spr_TEMP_HoloBlue_PopoutSmall_Reverse")
end

function ItemPreviewImproved:OnPreviewRight()
	local l, t, r, b = 324, -20, 671, 604
	self.wndMain:FindChild("PreviewInformation"):SetAnchorOffsets(l, t, r, b)
	local l2,t2,r2,b2 = -354, -21, -321, -172
	self.wndDyeListContainer:SetAnchorOffsets(l2, t2, r2, b2)
	local l3,t3,r3,b3 = 274, -10, 522, 80
	self.wndMain:FindChild("PreviewInformation:InfoHead:DyeWindow"):SetAnchorOffsets(l3,t3,r3,b3)
	self.wndMain:FindChild("PreviewInformation:InfoHead:DyeWindow"):SetSprite("CRB_Basekit:kitBase_HoloBlue_PopoutSmall")
	local l4,t4,r4,b4 = 276, -11, 524, 79
	self.wndMain:FindChild("PreviewInformation:InfoShoulder:DyeWindow"):SetAnchorOffsets(l4,t4,r4,b4)
	self.wndMain:FindChild("PreviewInformation:InfoShoulder:DyeWindow"):SetSprite("CRB_Basekit:kitBase_HoloBlue_PopoutSmall")
	local l5,t5,r5,b5 = 275, -11, 523, 79
	self.wndMain:FindChild("PreviewInformation:InfoChest:DyeWindow"):SetAnchorOffsets(l5,t5,r5,b5)
	self.wndMain:FindChild("PreviewInformation:InfoChest:DyeWindow"):SetSprite("CRB_Basekit:kitBase_HoloBlue_PopoutSmall")
	local l6,t6,r6,b6 = 274, -11, 522, 79
	self.wndMain:FindChild("PreviewInformation:InfoHands:DyeWindow"):SetAnchorOffsets(l6,t6,r6,b6)
	self.wndMain:FindChild("PreviewInformation:InfoHands:DyeWindow"):SetSprite("CRB_Basekit:kitBase_HoloBlue_PopoutSmall")
	local l7,t7,r7,b7 = 276, -13, 524, 77
	self.wndMain:FindChild("PreviewInformation:InfoLegs:DyeWindow"):SetAnchorOffsets(l7,t7,r7,b7)
	self.wndMain:FindChild("PreviewInformation:InfoLegs:DyeWindow"):SetSprite("CRB_Basekit:kitBase_HoloBlue_PopoutSmall")
	local l8,t8,r8,b8 = 276, -11, 524, 79
	self.wndMain:FindChild("PreviewInformation:InfoFeet:DyeWindow"):SetAnchorOffsets(l7,t7,r7,b7)
	self.wndMain:FindChild("PreviewInformation:InfoFeet:DyeWindow"):SetSprite("CRB_Basekit:kitBase_HoloBlue_PopoutSmall")
end

function ItemPreviewImproved:OnRemoveHead()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Head" then
			tSelectedItems[currPreviewedItems["Head"]:GetItemId()] = nil
			currPreviewedItems["Head"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHead"):FindChild("ItemLabelHead"):SetText("")
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
			for idx, tItemDyes in pairs(tSelectedItems) do
				self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
			end
		end
	end
	self.wndDyeHead:Show(false)
end

function ItemPreviewImproved:OnRemoveShoulder()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Shoulder" then
			tSelectedItems[currPreviewedItems["Shoulder"]:GetItemId()] = nil
			currPreviewedItems["Shoulder"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoShoulder"):FindChild("ItemLabelShoulder"):SetText("")
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
			for idx, tItemDyes in pairs(tSelectedItems) do
				self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
			end
		end
	end
	self.wndDyeShoulder:Show(false)
end

function ItemPreviewImproved:OnRemoveChest()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Chest" then
			tSelectedItems[currPreviewedItems["Chest"]:GetItemId()] = nil
			currPreviewedItems["Chest"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoChest"):FindChild("ItemLabelChest"):SetText("")
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
			for idx, tItemDyes in pairs(tSelectedItems) do
				self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
			end
		end
	end
	self.wndDyeChest:Show(false)
end

function ItemPreviewImproved:OnRemoveHands()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Hands" then
			tSelectedItems[currPreviewedItems["Hands"]:GetItemId()] = nil
			currPreviewedItems["Hands"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoHands"):FindChild("ItemLabelHands"):SetText("")
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
			for idx, tItemDyes in pairs(tSelectedItems) do
				self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
			end
		end
	end
	self.wndDyeHands:Show(false)
end

function ItemPreviewImproved:OnRemoveLegs()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Legs" then
			tSelectedItems[currPreviewedItems["Legs"]:GetItemId()] = nil
			currPreviewedItems["Legs"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoLegs"):FindChild("ItemLabelLegs"):SetText("")
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
		end
	end
	self.wndDyeLegs:Show(false)
end

function ItemPreviewImproved:OnRemoveFeet()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Feet" then
			tSelectedItems[currPreviewedItems["Feet"]:GetItemId()] = nil
			currPreviewedItems["Feet"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoFeet"):FindChild("ItemLabelFeet"):SetText("")
			self.DyeButtons[key][1]:SetCheck(false)
			self.DyeButtons[key][2]:SetCheck(false)
			self.DyeButtons[key][3]:SetCheck(false)
			self.DyeButtons[key][1]:SetData(nil)
			self.DyeButtons[key][2]:SetData(nil)
			self.DyeButtons[key][3]:SetData(nil)
			self.DyeButtons[key][1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
			self.DyeButtons[key][3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(false)
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
		end
	end
	self.wndDyeFeet:Show(false)
end

function ItemPreviewImproved:OnRemoveWeapon()
	self.wndMain:FindChild("PreviewWindow"):SetCostume(GameLib.GetPlayerUnit())
	for key,val in pairs(currPreviewedItems) do
		if key == "Weapon" then
			currPreviewedItems["Weapon"] = nil
			self.wndMain:FindChild("PreviewInformation"):FindChild("InfoWeapon"):FindChild("ItemLabelWeapon"):SetText("")
		else
			self.wndMain:FindChild("PreviewWindow"):SetItem(val)
		end
	end
end

function ItemPreviewImproved:CostumeSelectionWindowShow()
	self.wndCostumeSelectionList:Show(true)
	self.wndMain:FindChild("btnLock"):FindChild("bgArt"):Show(false)
	if lightMode == true then
		self.wndMain:FindChild("btnLightSheath"):FindChild("bgArt"):Show(false)
		self.wndMain:FindChild("btnLightReset"):FindChild("bgArt"):Show(false)
	end
end

function ItemPreviewImproved:CostumeSelectionWindowHide()
	self.wndCostumeSelectionList:Show(false)
	self.wndMain:FindChild("btnLock"):FindChild("bgArt"):Show(true)
	if lightMode == true then
		self.wndMain:FindChild("btnLightSheath"):FindChild("bgArt"):Show(true)
		self.wndMain:FindChild("btnLightReset"):FindChild("bgArt"):Show(true)
	end
end

function ItemPreviewImproved:OnCostumeBtnToggle(wndHandler, wndCtrl)
	if wndHandler ~= wndCtrl then
		return false
	end

	self.nCurrentCostume = nil

	local wndCostumeHolder = self.wndMain:FindChild("Middle:CostumeBtnHolder")
	for idx = 1, knNumCostumes do
		if wndCostumeHolder:FindChild("CostumeBtn"..idx):IsChecked() then
			self.nCurrentCostume = idx
		elseif wndCostumeHolder:FindChild("ClearCostumeBtn"):IsChecked() then
			self.nCurrentCostume = 0
		end
	end
	if self.wndMain:FindChild("SelectCostumeWindowToggle"):IsShown() then
		self.wndMain:FindChild("Middle:BGArt_HeaderFrame:SelectCostumeWindowToggle"):SetCheck(false)
	else
		self.wndMain:FindChild("btnLightCostumeToggle"):SetCheck(false)
	end
	self.wndCostumeSelectionList:Show(false)
	
	if self.nCurrentCostume > 0 and self.nCurrentCostume ~= nil then

		local wndCurrentCostume = wndCostumeHolder:FindChild("CostumeBtn" .. self.nCurrentCostume)
		local strName = wndCurrentCostume:GetText()
		self.wndMain:FindChild("SelectCostumeWindowToggle"):SetText(strName)
		GameLib.SetCostumeIndex(self.nCurrentCostume)
	else
		GameLib.SetCostumeIndex(self.nCurrentCostume)
		self.wndMain:FindChild("SelectCostumeWindowToggle"):SetText(Apollo.GetString("Character_CostumeSelectDefault"))
	end
	
	self.wndMain:FindChild("btnLock"):FindChild("bgArt"):Show(true)
	if lightMode == true then
		self.wndMain:FindChild("btnLightSheath"):FindChild("bgArt"):Show(true)
		self.wndMain:FindChild("btnLightReset"):FindChild("bgArt"):Show(true)
	end
end

function ItemPreviewImproved:OnCloseMountPreview()
	self.wndMount:Show(false)
end

function ItemPreviewImproved:OnLockOn()
	self.wndMain:SetStyle("Moveable", false)
	self.wndMain:SetStyle("Sizable", false)
end

function ItemPreviewImproved:OnLockOff()
	self.wndMain:SetStyle("Moveable", true)
	self.wndMain:SetStyle("Sizable", true)
end

function ItemPreviewImproved:LightModeOn()
	lightMode = true
	self:SwitchMode(lightMode)
	self:SetSizingMinimum(lightMode)
	nl, nt, nr, nb = self.wndMain:GetAnchorOffsets()
end

function ItemPreviewImproved:LightModeOff()
	lightMode = false
	self:SwitchMode(lightMode)
	self:SetSizingMinimum(lightMode)
	self.wndMain:SetAnchorOffsets(nl, nt, nr, nb)
end

function ItemPreviewImproved:SwitchMode(state)
	self.wndMain:FindChild("btnLightSheath"):Show(state)
	self.wndMain:FindChild("btnLightReset"):Show(state)
	self.wndMain:FindChild("btnLightCostumeToggle"):Show(state)
	self.wndMain:FindChild("SheathButton"):Show(not state)
	self.wndMain:FindChild("ResetButton"):Show(not state)
	self.wndMain:FindChild("SelectCostumeWindowToggle"):Show(not state)
end

function ItemPreviewImproved:SetSizingMinimum(state)
	if not state then
		local nWndLeft, nWndTop, nWndRight, nWndBottom = 462, 191, 811, 764
		local nWndWidth = nWndRight - nWndLeft
		local nWndHeight = nWndBottom - nWndTop
		self.wndMain:SetSizingMinimum(nWndWidth, nWndHeight)
	else
		self.wndMain:SetSizingMinimum(0, 0)
	end
end

function ItemPreviewImproved:ShowNoMountInfo()
	local output = "The mount you want to preview is currently \n not part of the mount table in ItemPreviewImproved!\n"
	output = output .. "To help the addon to get more mounts for preview install\n ItemPreviewImproved: MountTracker and follow the instructions!"
	self.wndMount:FindChild("noMountInformation"):FindChild("lblNoMountInformation"):SetText(output)
	if self.wndMount:FindChild("noMountInformation"):IsShown() then
		self.wndMount:FindChild("noMountInformation"):Show(false)
	else
		self.wndMount:FindChild("noMountInformation"):Show(true)
	end
end

-- DYE

function ItemPreviewImproved:FillDyes()
	self.wndDyeList:DestroyChildren()

	local tDyeSort = GameLib.GetKnownDyes()
	
	table.sort(tDyeSort, function (a,b) return a.nId < b.nId end)

	for idx, tDyeInfo in ipairs(tDyeSort) do
		local wndNewDye = Apollo.LoadForm(self.xmlDoc, "DyeColor", self.wndDyeList, self)
		local strName = ""

		if tDyeInfo.strName and tDyeInfo.strName:len() > 0 then
			strName = tDyeInfo.strName
		else
			strName = String_GetWeaselString(Apollo.GetString("CRB_CurlyBrackets"), "", tDyeInfo.nRampIndex)
		end

		local strSprite = "CRB_DyeRampSprites:sprDyeRamp_" .. tDyeInfo.nRampIndex
		wndNewDye:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(strSprite)
		wndNewDye:SetTooltip(strName)

		local tNewDyeInfo = {}
		tNewDyeInfo.id = tDyeInfo.nId
		tNewDyeInfo.strName = strName
		tNewDyeInfo.strSprite = strSprite
		
		wndNewDye:SetData(tNewDyeInfo)
	end
	
	self.wndDyeList:ArrangeChildrenTiles()
end

function ItemPreviewImproved:OnDyeSelect(wndHandler, wndControl, eMouseButton)
	if wndHandler ~= wndControl then return end

	self:HelperPreviewItems(wndControl:GetData())
end

function ItemPreviewImproved:GetSelectedItems(tDye)
	local nDyeId = tDye ~= nil and tDye.id or 0
	
	for slot, button in pairs(self.DyeButtons) do
		if currPreviewedItems[slot] == nil then
			
		else
			if button[1]:IsChecked() and button[2]:IsChecked() and button[3]:IsChecked() and nDyeId > 0 then
				button[1]:SetData(nDyeId)
				button[2]:SetData(nDyeId)
				button[3]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {nDyeId, nDyeId, nDyeId, currPreviewedItems[slot]}
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
			elseif button[1]:IsChecked() and button[2]:IsChecked() and nDyeId > 0 then
				button[1]:SetData(nDyeId)
				button[2]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {nDyeId, nDyeId, button[3]:GetData() or 0, currPreviewedItems[slot]}
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
			elseif button[1]:IsChecked() and button[3]:IsChecked() and nDyeId > 0 then
				button[1]:SetData(nDyeId)
				button[3]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {nDyeId, button[2]:GetData() or 0, nDyeId, currPreviewedItems[slot]}
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
			elseif button[2]:IsChecked() and button[3]:IsChecked() and nDyeId > 0 then
				button[2]:SetData(nDyeId)
				button[3]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {button[1]:GetData() or 0, nDyeId, nDyeId, currPreviewedItems[slot]}
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
			elseif button[1]:IsChecked() and nDyeId > 0 then
				button[1]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {nDyeId, button[2]:GetData() or 0, button[3]:GetData() or 0, currPreviewedItems[slot]}
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[1]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
			elseif button[2]:IsChecked() and nDyeId > 0 then
				button[2]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {button[1]:GetData() or 0, nDyeId, button[3]:GetData() or 0, currPreviewedItems[slot]}
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[2]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)
			elseif button[3]:IsChecked() and nDyeId > 0 then
				button[3]:SetData(nDyeId)
				tSelectedItems[currPreviewedItems[slot]:GetItemId()] = {button[1]:GetData() or 0, button[2]:GetData() or 0, nDyeId, currPreviewedItems[slot]}
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):SetSprite(tDye.strSprite)
				button[3]:FindChild("DyeSwatchArtHack:DyeSwatch"):Show(true)	
			end
		end
	end
end

function ItemPreviewImproved:HelperPreviewItems(tDye)
	self:GetSelectedItems(tDye)
	for idx, tItemDyes in pairs(tSelectedItems) do
		self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
	end
	for key, val in ipairs(PrevSlot) do
		self.DyeButtons[val][1]:SetCheck(false)
		self.DyeButtons[val][2]:SetCheck(false)
		self.DyeButtons[val][3]:SetCheck(false)
	end

end

function ItemPreviewImproved:OnBtnPortrait()
	self.wndMain:FindChild("PreviewWindow"):SetCamera("Datachron")
	self.wndMain:FindChild("btnZoom"):Show(false)
	self.wndMain:FindChild("btnZoomOut"):Show(true)
end

function ItemPreviewImproved:OnBtnPortraitOut()
	self.wndMain:FindChild("PreviewWindow"):SetCamera("Paperdoll")
	self.wndMain:FindChild("btnZoom"):Show(true)
	self.wndMain:FindChild("btnZoomOut"):Show(false)
end

function ItemPreviewImproved:CheckFABkit(item)
		for ID,key in pairs (ktFABkits) do
			if ID == item:GetItemId() then
				if #L["FABkits"][key].tScreenshots >= 1 then
					local tItemData = L["FABkits"][key]
					self.tScreenshots = tItemData.tScreenshots
					self.nCurrSS = 1
					self.wndFABkit:FindChild("Picture"):SetSprite(tItemData.tScreenshots[1].strSprite)
					self.wndFABkit:Show(true)
					if #tItemData.tRepairRequirements > 0 then
						if tItemData.tRepairRequirements[1].eType == 1 then
							self.wndFABkit:FindChild("Cost"):Show(true)
							self.wndFABkit:FindChild("Cost"):SetAmount(tItemData.tRepairRequirements[1].nRequiredCost)
						else
							self.wndFABkit:FindChild("Cost"):SetAmount(0)
						end
					else
						self.wndFABkit:FindChild("Cost"):SetAmount(0)
					end
					self.wndFABkit:FindChild("Description"):SetText(tItemData.strTooltip)
					self.wndFABkit:ToFront()
				end
			end
		end
end

function ItemPreviewImproved:OnOpenPreviewDecor(idDecorInfo)
	decorPreviewAddon = Apollo.GetAddon("DecorPreview")
	if decorPreviewAddon ~= nil then
		if decorPreviewAddon.wndMain and previewAddon.wndMain:IsShown() then
			decorPreviewAddon.wndMain:Show(false)
			decorPreviewAddon.wndMain:Destroy()
		end
	end
	self:DelayTimer()
    self.wndDecorPreview:Show(true)
    self.idDecorInfo = idDecorInfo
    self:ShowDecorPreviewWindow()
    self.wndDecorPreview:ToFront()
end

function ItemPreviewImproved:ShowDecorPreviewWindow()
    -- don't do any of this if the Housing List isn't visible
	if not self.wndDecorPreview:IsVisible() then
		return
	end
	
	self.wndModelWindow:SetAnimated(true)
	self.wndModelWindow:SetDecorInfo(self.idDecorInfo)
	self.wndModelWindow:SetCamera("Portrait")
end

function ItemPreviewImproved:OnWindowClosed()
	-- called after the window is closed by:
	--	self.winMasterCustomizeFrame:Close() or 
	--  hitting ESC or
	--  C++ calling Event_CloseDecorPreviewWindow()
	
	Sound.Play(Sound.PlayUIWindowClose)
end

function ItemPreviewImproved:OnCloseDecorPreviewWindow()
	-- close the window which will trigger OnWindowClosed
	self.tModelAssetPath = nil
	self.wndDecorPreview:Close()
end


function ItemPreviewImproved:OnRotateRightBegin()
	self.wndModelWindow:ToggleLeftSpin(true)
end


function ItemPreviewImproved:OnRotateRightEnd()
	self.wndModelWindow:ToggleLeftSpin(false)
end


function ItemPreviewImproved:OnRotateLeftBegin()
	self.wndModelWindow:ToggleRightSpin(true)
end


function ItemPreviewImproved:OnRotateLeftEnd()
	self.wndModelWindow:ToggleRightSpin(false)
end


function ItemPreviewImproved:OnResetViewBtn()
    self.wndModelWindow:ResetSpin()
end

function ItemPreviewImproved:OnResetDye()
	for idx, tItemDyes in pairs(tSelectedItems) do
		tItemDyes[1] = 0 
		tItemDyes[2] = 0
		tItemDyes[3] = 0
	end
	for idx, tItemDyes in pairs(tSelectedItems) do
		self.wndMain:FindChild("PreviewWindow"):SetItemDye(tItemDyes[4], tItemDyes[1], tItemDyes[2], tItemDyes[3])
	end
end

function ItemPreviewImproved:HelperBuildItemTooltipFix(wndArg, item)
	wndArg:SetTooltipDoc(nil)
	wndArg:SetTooltipDocSecondary(nil)
	local itemEquipped = item:GetEquippedItemForItemType()
	Tooltip.GetItemTooltipForm(self, wndArg, item, {bPrimary = true, bSelling = false, itemCompare = itemEquipped})
end

-----------------------------------------------------------------------------------------------
-- ItemPreviewImproved Instance
-----------------------------------------------------------------------------------------------
local ItemPreviewImprovedInst = ItemPreviewImproved:new()
ItemPreviewImprovedInst:Init()
