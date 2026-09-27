RockTunnelPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

RockTunnelPokecenter_TextPointers:
	def_text_pointers
	dw_const RockTunnelPokecenterNurseText,            TEXT_ROCKTUNNELPOKECENTER_NURSE
	dw_const RockTunnelPokecenterGentlemanText,        TEXT_ROCKTUNNELPOKECENTER_GENTLEMAN
	dw_const RockTunnelPokecenterFisherText,           TEXT_ROCKTUNNELPOKECENTER_FISHER
	dw_const RockTunnelPokecenterLinkReceptionistText, TEXT_ROCKTUNNELPOKECENTER_LINK_RECEPTIONIST

RockTunnelPokecenterNurseText:
	script_pokecenter_nurse

RockTunnelPokecenterGentlemanText:
	text_asm
	CheckEvent EVENT_GOT_HM05_ROCK_TUNNEL
	jr nz, .alreadyGotFlash

	ld hl, .OfferFlashText
	call PrintText

	lb bc, HM_FLASH, 1
	call GiveItem
	jr nc, .bagFull

	SetEvent EVENT_GOT_HM05_ROCK_TUNNEL
	ld hl, .GotFlashText
	call PrintText
	jp TextScriptEnd

.bagFull
	ld hl, .BagFullText
	call PrintText
	jp TextScriptEnd

.alreadyGotFlash
	ld hl, .AlreadyGotFlashText
	call PrintText
	jp TextScriptEnd

.OfferFlashText:
	text_far _RockTunnelPokecenterGentlemanOfferFlashText
	text_end

.GotFlashText:
	text_far _RockTunnelPokecenterGentlemanGotFlashText
	sound_get_item_1
	text_end

.BagFullText:
	text_far _RockTunnelPokecenterGentlemanBagFullText
	text_end

.AlreadyGotFlashText:
	text_far _RockTunnelPokecenterGentlemanAlreadyGotFlashText
	text_end

RockTunnelPokecenterFisherText:
	text_far _RockTunnelPokecenterFisherText
	text_end

RockTunnelPokecenterLinkReceptionistText:
	script_cable_club_receptionist
