// Test role for the zombie project's first playtest.
// Courtier category. Gear copies the Dungeoneer loadout, minus the religious
// items (psicross, necra/patron headgear) and the torture/faith-test verbs.
// Every non-magic skill is set to Expert. Magic (holy, blood, arcane,
// druidic) and arcyne skills are left out.


/datum/job/roguetown/testrole
	title = "Test Role"
	flag = TEST_ROLE
	department_flag = COURTIERS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = ACCEPTED_RACES
	allowed_sexes = list(MALE, FEMALE)

	display_order = JDO_TEST_ROLE
	tutorial = "Test role for the zombie project's first playtest. Gear and skills are placeholders."
	outfit = /datum/outfit/job/roguetown/testrole

	announce_latejoin = FALSE
	give_bank_account = 25
	min_pq = null
	max_pq = null
	round_contrib_points = 2
	social_rank = SOCIAL_RANK_YEOMAN

/datum/job/roguetown/testrole/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		var/list/skill_list = list(
		/datum/skill/labor/farming,
		/datum/skill/labor/mining,
		/datum/skill/labor/fishing,
		/datum/skill/labor/butchering,
		/datum/skill/labor/lumberjacking,
		/datum/skill/combat/knives,
		/datum/skill/combat/swords,
		/datum/skill/combat/polearms,
		/datum/skill/combat/maces,
		/datum/skill/combat/axes,
		/datum/skill/combat/whipsflails,
		/datum/skill/combat/bows,
		/datum/skill/combat/crossbows,
		/datum/skill/combat/wrestling,
		/datum/skill/combat/unarmed,
		/datum/skill/combat/shields,
		/datum/skill/combat/slings,
		/datum/skill/combat/firearms,
		/datum/skill/combat/staves,
		/datum/skill/misc/athletics,
		/datum/skill/misc/climbing,
		/datum/skill/misc/reading,
		/datum/skill/misc/swimming,
		/datum/skill/misc/stealing,
		/datum/skill/misc/sneaking,
		/datum/skill/misc/lockpicking,
		/datum/skill/misc/riding,
		/datum/skill/misc/music,
		/datum/skill/misc/medicine,
		/datum/skill/misc/tracking,
		/datum/skill/misc/hunting,
		/datum/skill/craft/crafting,
		/datum/skill/craft/weaponsmithing,
		/datum/skill/craft/armorsmithing,
		/datum/skill/craft/blacksmithing,
		/datum/skill/craft/smelting,
		/datum/skill/craft/carpentry,
		/datum/skill/craft/masonry,
		/datum/skill/craft/engineering,
		/datum/skill/craft/cooking,
		/datum/skill/craft/sewing,
		/datum/skill/craft/tanning,
		/datum/skill/craft/ceramics,
		/datum/skill/craft/alchemy,
		)
		for(var/skill in skill_list)
			H.adjust_skillrank_up_to(skill, SKILL_LEVEL_EXPERT, TRUE)

/datum/outfit/job/roguetown/testrole
	job_bitflag = BITFLAG_ROYALTY

/datum/outfit/job/roguetown/testrole/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_blindness(-3)
	pants = /obj/item/clothing/under/roguetown/trou/leather/mourning
	shoes = /obj/item/clothing/shoes/roguetown/boots
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/councillor
	armor = /obj/item/clothing/suit/roguetown/armor/leather
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather/black
	belt = /obj/item/storage/belt/rogue/leather/black
	beltr = /obj/item/rogueweapon/whip/antique
	beltl = /obj/item/storage/keyring/dungeoneer
	backr = /obj/item/storage/backpack/rogue/satchel/black
	id = /obj/item/scomstone/bad/garrison
	backpack_contents = list(
		/obj/item/reagent_containers/glass/bottle/rogue/healthpot = 2,
		/obj/item/flashlight/flare/torch/lantern = 1,
		/obj/item/rogueweapon/surgery/cautery/branding = 1,
		)
	head = /obj/item/clothing/head/roguetown/menacing
	cloak = /obj/item/clothing/cloak/stabard/dungeon
	H.dna.species.soundpack_m = new /datum/voicepack/male/warrior()

