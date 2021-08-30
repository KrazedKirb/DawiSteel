local mod = get_mod("DawiSteel")
--------------------------------HIT MASS COUNTS------------------------------
--[[AXE_HIT_MASS_COUNT = {
	chaos_raider = 0.1,
	skaven_plague_monk = 0.1,
	beastmen_gor = 0.1,
	beastmen_ungor = 0.1,
	chaos_berzerker = 0.1,
	skaven_clan_rat_with_shield = 0.1,
	chaos_marauder_with_shield = 0.1,
	chaos_fanatic = 0.1,
	skaven_slave = 0.1,
	skaven_clan_rat = 0.1,
	chaos_marauder = 0.1
}]]
RANGED_PIERCE_HIT_MASS_COUNT = {
	chaos_raider = 1.5,
	skaven_plague_monk = 1.25,
	chaos_berzerker = 1.25
}
--------------------------------THROWING AXES------------------------------
-----------------------------RECALL SPEED INCREASE---------------------------
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.minimum_hold_time = 0
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "catch",
					start_time = 0.75,
					action = "weapon_reload",
					auto_chain = true
				}
			}
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.minimum_hold_time = 0
Weapons.one_handed_throwing_axes_template.actions.weapon_reload.catch.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "catch",
					start_time = 0.55,
					action = "weapon_reload",
					input = "weapon_reload_hold"
				}
			}
------------------------HEAVY THROW SLIGHTLY FASTER--------------------------
Weapons.one_handed_throwing_axes_template.actions.action_two.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.3,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield",
					end_time = math.huge
				},
				{
					sub_action = "throw_charged",
					start_time = 0.5,
					action = "action_one",
					input = "action_one",
					end_time = math.huge
				},
				{
					softbutton_threshold = 0.5,
					start_time = 0.4,
					action = "action_one",
					sub_action = "throw_charged",
					input = "action_one_softbutton_gamepad",
					end_time = math.huge
				}
			}
------------------------LIGHT THROW SLIGHTLY FASTER--------------------------
Weapons.one_handed_throwing_axes_template.actions.action_one.default.allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.35,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold",
					end_time = math.huge
				}
			}
--------------------------------MOONFIRE BOW------------------------------
-----EXPERIMENTAL MOONBOW
Weapons.we_deus_01_template_1.actions.action_one.default.impact_data.damage_profile = "we_deus_01_small"
Weapons.we_deus_01_template_1.actions.action_one.default.drain_amount = 4.1
Weapons.we_deus_01_template_1.actions.action_one.shoot_special_charged.impact_data.damage_profile = "we_deus_01_med"
DamageProfileTemplates.we_deus_01_small_explosion.default_target.dot_template_name = "we_deus_01_small" --"we_deus_01_dot_med"
DamageProfileTemplates.we_deus_01_large_explosion.default_target.dot_template_name = "we_deus_01_dot_med"
DamageProfileTemplates.we_deus_01_small_explosion_glance.default_target.dot_template_name = "we_deus_01_small" --"we_deus_01_dot_med"
DamageProfileTemplates.we_deus_01_large_explosion_glance.default_target.dot_template_name = "we_deus_01_dot_med"
--NetworkLookup.dot_type_lookup.we_deus_01_dot_small = "burning_dot"
--NetworkLookup.dot_type_lookup.we_deus_01_dot_med = "burning_dot"
DotTypeLookup.we_deus_01_dot_small = "burning_dot"
DotTypeLookup.we_deus_01_dot_med = "burning_dot"
-----------------------------------1H AXE---------------------------------
--saltz
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "oneH_axe_bopp"
--Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.hit_mass_count = AXE_HIT_MASS_COUNT
--Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right" --"attack_swing_up_left" --"attack_swing_right"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.33 --0.15 0.33
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.use_precision_sweep = false
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.width_mod = 25
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.47 --0.3 0.47
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.total_time = 1.5
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.dedicated_target_range = 2
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.range_mod = 1.25
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.buff_data.external_multiplier = 0.9
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.buff_data.end_time = 0.5
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.55 --0.45
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.9 * 1.15 --0.95
--bardin
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_profile = "oneH_axe_bopp"
--Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.hit_mass_count = AXE_HIT_MASS_COUNT
--Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right" --"attack_swing_up_left"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_window_start = 0.33
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.use_precision_sweep = false
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.width_mod = 25
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.total_time = 1.5
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.dedicated_target_range = 2
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.range_mod = 1.25
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.buff_data.external_multiplier = 0.9
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.buff_data.end_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.55 --0.45
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 0.9 * 1.15 --0.95

----EXPERIMENTAL LIGHT CHANGES
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.damage_profile = "oneH_axe_flat"

Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "oneH_axe_flat"

Weapons.one_hand_axe_template_2.actions.action_one.light_attack_left.damage_profile = "oneH_axe_diag"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_right.damage_profile = "oneH_axe_diag"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.damage_profile = "oneH_axe_diag"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.damage_profile = "oneH_axe_diag"
-------------------------------AXE AND SHIELD-----------------------------------
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_last.buff_data[1].external_multiplier = 1.2
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_last.buff_data[2].external_multiplier = 0.7
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_right.buff_data[1].external_multiplier = 1
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_left.buff_data[1].external_multiplier = 0.8
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.buff_data[1].external_multiplier = 0.9
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.buff_data[2].external_multiplier = 0.75
Weapons.one_hand_axe_shield_template_1.actions.action_one.heavy_attack.allowed_chain_actions[2].start_time = 0.3
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 1 * 1.2
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.range_mod = 1.25
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.damage_profile = "medium_slashing_axe_linesman"
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.6
Weapons.one_hand_axe_shield_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.6

--HAMMER AND SHIELD
Weapons.one_handed_hammer_shield_template_2.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.6,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_shield_template_2.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_shield_template_2.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_shield_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.6,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_shield_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_hammer_shield_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
--kruber
Weapons.one_handed_hammer_shield_template_1.actions.action_one.light_attack_left.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_shield_template_1.actions.action_one.light_attack_right.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_shield_template_1.actions.action_one.default.allowed_chain_actions[2].start_time = 0.4
--bardin
Weapons.one_handed_hammer_shield_template_2.actions.action_one.light_attack_left.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_shield_template_2.actions.action_one.light_attack_right.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_shield_template_2.actions.action_one.default.allowed_chain_actions[2].start_time = 0.4

--SWORD AND SHIELD
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.6,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.6,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.one_handed_sword_shield_template_1.actions.action_one.heavy_attack_right.damage_profile = "medium_slashing_tank_1h_finesse" --"heavy_slashing_linesman_executioner"
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_last.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_right.damage_profile = "light_slashing_linesman_finesse"
Weapons.one_handed_sword_shield_template_1.actions.action_one.light_attack_last.damage_profile = "sword_shield_light_last"

-------------------------------CROWBILL -----------------------------------------
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_right_up.additional_critical_strike_chance = 0.15
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_window_start = 0.32
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.hit_armor_anim = "attack_hit_shield"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.range_mod = 1.25
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.sweep_z_offset = 0.15
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.width_mod = 30
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.no_damage_impact_sound_event = "fire_hit_armour"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.hit_effect = "melee_hit_sword_1h"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_profile = "crowbill_push_attack_new"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.damage_window_end = 0.47
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.impact_sound_event = "fire_hit"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.dedicated_target_range = 3
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.anim_event = "attack_swing_up"
Weapons.one_handed_crowbill.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.allowed_chain_actions[1].start_time = 0.6
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.additional_critical_strike_chance = 0.1
Weapons.one_handed_crowbill.dodge_count = 4
Weapons.one_handed_crowbill.actions.action_one.heavy_attack.damage_profile = "crowbill_heavy_upper"
Weapons.one_handed_crowbill.actions.action_one.heavy_attack_left.damage_profile = "crowbill_heavy_flat"
--dmg profile CHANGES
Weapons.one_handed_crowbill.actions.action_one.light_attack_left.damage_profile = "crowbill_light_stab_burn"
Weapons.one_handed_crowbill.actions.action_one.light_attack_right.damage_profile = "crowbill_light_diag"
Weapons.one_handed_crowbill.actions.action_one.light_attack_last.damage_profile = "crowbill_light_smiter"
Weapons.one_handed_crowbill.actions.action_one.light_attack_upper.damage_profile = "crowbill_light_flat"

-------------------------------FLAMESTORM-----------------------------------------
Weapons.staff_flamethrower_template.actions.action_one.default.spray_range = 16
Weapons.staff_flamethrower_template.actions.action_two.default.charge_time = 2
---------------------------MASTERWORK PISTOL-----------------------------------------
--Weapons.heavy_steam_pistol_template_1.actions.action_one.shoot.headshot_multiplier = 10
DamageProfileTemplates.shot_sniper_pistol.default_target.boost_curve_coefficient_headshot = 2
DamageProfileTemplates.shot_sniper_pistol.critical_strike.attack_armor_power_modifer = {
				1,
				1.4,
				1.2,
				1,
				0.75,
				0.5
			}
Weapons.heavy_steam_pistol_template_1.actions.action_one.shoot.speed = 32000
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.impact_data.damage_profile = "fan_the_hammer"
SpreadTemplates.pistol_special.continuous.still.max_yaw = 0.5
SpreadTemplates.pistol_special.continuous.still.max_pitch = 0.5
SpreadTemplates.pistol_special.continuous.crouch_still.max_yaw = 0.5
SpreadTemplates.pistol_special.continuous.crouch_still.max_pitch = 0.5
SpreadTemplates.heavy_steam_pistol_special.continuous.still.max_yaw = 7
SpreadTemplates.heavy_steam_pistol_special.continuous.still.max_pitch = 5
SpreadTemplates.heavy_steam_pistol_special.continuous.moving.max_yaw = 9
SpreadTemplates.heavy_steam_pistol_special.continuous.moving.max_pitch = 7
SpreadTemplates.heavy_steam_pistol_special.continuous.crouch_still.max_yaw = 3
SpreadTemplates.heavy_steam_pistol_special.continuous.crouch_still.max_pitch = 3
SpreadTemplates.heavy_steam_pistol_special.continuous.crouch_moving.max_yaw = 6
SpreadTemplates.heavy_steam_pistol_special.continuous.crouch_moving.max_pitch = 6

Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.allowed_chain_actions[1].start_time = 0.3
Weapons.heavy_steam_pistol_template_1.actions.action_one.fast_shot.allowed_chain_actions[2].start_time = 0.2
Weapons.heavy_steam_pistol_template_1.actions.action_two.default.allowed_chain_actions[3].start_time = 0.5 
Weapons.heavy_steam_pistol_template_1.actions.action_one.default.charge_time = 0.55
Weapons.heavy_steam_pistol_template_1.actions.action_one.default.allowed_chain_actions[3].start_time = 0.55 
--masterwork semi-auto polish
Weapons.heavy_steam_pistol_template_1.actions.action_two.default.allowed_chain_actions[2].start_time = 0
-----------------------------Pickaxe-----------------------------------------
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right_charged.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_bopp.ignore_armour_hit = true
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[4].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[4].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_left.anim_time_scale = 0.9 * 1.1
Weapons.two_handed_picks_template_1.actions.action_one.heavy_attack_right.anim_time_scale = 0.9 * 1.1
-------------------------------ELGI AXE-----------------------------------------
--Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.damage_profile = "heavy_slashing_linesman_executioner"
--Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.additional_critical_strike_chance = 0
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
--Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.15,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.15
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.15,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.additional_critical_strike_chance = 0
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.1,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.1,
					external_multiplier = 1.35,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				}
			}
			--COMBO CHANGES


--[[Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.allowed_chain_actions[1].sub_action = "default_last"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions[1].sub_action = "default_left"
Weapons.we_one_hand_axe_template.actions.action_one.default_left.allowed_chain_actions[1].sub_action = "light_attack_last" --
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.allowed_chain_actions[1].sub_action = "default_right"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions[1].sub_action = "default"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.675
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 0.675]]
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_left"
--[[Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.6]]
--DMG PROFILE CHANGES
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.damage_profile = "elf_oneH_axe_diag" --"onehanded_axe_light_last_new"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.damage_profile = "elf_oneH_axe_diag" --"onehanded_axe_light_last_new"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.damage_profile = "elf_oneH_axe_light_down"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.damage_profile = "elf_oneH_axe_flat"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.damage_profile = "elf_oneH_axe_push_attack_shieldbreak"
--ANIMATION CHANGES
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.anim_event = "attack_swing_down_right"
--Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.anim_event = "attack_swing_right_diagonal"
----------------------------ELGI GREATSWORD-----------------------------------------
--DamageProfileTemplates.heavy_slashing_smiter_stab.shield_break = true
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_linesman"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.slide_armour_hit = true
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.buff_data[2].external_multiplier = 1.25
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.ignore_armour_hit = true
-----------------------------SALTZ FLAIL-----------------------------------------
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.damage_profile = "saltz_flail_bopp"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_mass_count = nil
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.ignore_armour_hit = true
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.damage_profile = "saltz_flail_downward_swing"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.damage_profile = "saltz_flail_downward_swing"
-----------------------------FIRE SWORD-----------------------------------------

Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.damage_profile = "firesword_heavy2_new"
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
--Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.damage_profile_target = "dagger_burning_slam_target_fencer"
--Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.damage_profile_aoe = "dagger_burning_slam_fencer_aoe"
--Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_spell.damage_profile = "dagger_burning_slam_fencer"
--[[Weapons.flaming_sword_template_1.attack_meta_data.tap_attack = {
	penetrating = false,
	arc = 1
}
Weapons.flaming_sword_template_1.attack_meta_data.hold_attack = {
	penetrating = true,
	arc = 1
}]]
--Weapons.flaming_sword_template_1.actions.action_one.light_attack_left.damage_profile = "firesword_slashlights"
--Weapons.flaming_sword_template_1.actions.action_one.light_attack_right.damage_profile = "firesword_slashlights"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_slashing_linesman" --"firesword_slashlights"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.damage_profile = "firesword_stablight"
Weapons.flaming_sword_template_1.actions.action_one.light_attack_stab.ignore_armour_hit = true
---------------------------EMPIRE LONGBOW-----------------------------------------
--Weapons.longbow_empire_template.actions.action_two.default.heavy_aim_flow_event = nil
Weapons.longbow_empire_template.actions.action_two.default.aim_zoom_delay = nil
Weapons.longbow_empire_template.actions.action_two.default.default_zoom = "first_person_node"
Weapons.longbow_empire_template.actions.action_two.default.buffed_zoom_thresholds = {
				"first_person_node",
				"zoom_in",
				"increased_zoom_in"
			}
--------------------------REPEATER HANDGUN-----------------------------------------
Weapons.repeating_handgun_template_1.actions.action_two.default.default_zoom = "first_person_node"
Weapons.repeating_handgun_template_1.actions.action_two.default.zoom_condition_function = function ()
				return true
			end
Weapons.repeating_handgun_template_1.actions.action_two.default.unzoom_condition_function = function (end_reason)
				return end_reason ~= "new_interupting_action"
			end
Weapons.repeating_handgun_template_1.actions.action_two.default.buffed_zoom_thresholds = {
				"first_person_node",
				"zoom_in"
			}
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.default_zoom = "first_person_node"
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.zoom_condition_function = function ()
				return true
			end
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.unzoom_condition_function = function (end_reason)
				return end_reason ~= "new_interupting_action"
			end
Weapons.repeating_handgun_template_1.actions.action_two.spray_loop.buffed_zoom_thresholds = {
				"first_person_node",
				"zoom_in"
			}
SpreadTemplates.repeating_handgun = {
		continuous = {
			still = {
				max_yaw = 0.6,
				max_pitch = 0.6
			},
			moving = {
				max_yaw = 1.5,
				max_pitch = 1.5
			},
			crouch_still = {
				max_yaw = 0.5,
				max_pitch = 0.5
			},
			crouch_moving = {
				max_yaw = 0.75,
				max_pitch = 0.75
			},
			zoomed_still = {
				max_yaw = 0.6,
				max_pitch = 0.6
			},
			zoomed_moving = {
				max_yaw = 1.5,
				max_pitch = 1.5
			},
			zoomed_crouch_still = {
				max_yaw = 0.5,
				max_pitch = 0.5
			},
			zoomed_crouch_moving = {
				max_yaw = 0.75,
				max_pitch = 0.75
			}
		},
		immediate = {
			being_hit = {
				immediate_pitch = 1.4,
				immediate_yaw = 1.4
			},
			shooting = {
				immediate_pitch = 1,
				immediate_yaw = 1
			}
		}
}
-----------------------------JAVELIN -----------------------------------------

SpreadTemplates.javelin = {
		continuous = {
			still = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			moving = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			crouch_still = {
				max_yaw = 1.25,
				max_pitch = 1.25
			},
			crouch_moving = {
				max_yaw = 2,
				max_pitch = 2
			},
			zoomed_still = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			zoomed_moving = {
				max_yaw = 0.25,
				max_pitch = 0.25
			},
			zoomed_crouch_still = {
				max_yaw = 1.5,
				max_pitch = 1.5
			},
			zoomed_crouch_moving = {
				max_yaw = 2,
				max_pitch = 2
			}
		},
		immediate = {
			being_hit = {
				immediate_pitch = 12.4,
				immediate_yaw = 12.4
			},
			shooting = {
				immediate_pitch = 0.5,
				immediate_yaw = 0.5
			}
		}
	}
Weapons.javelin_template.default_spread_template = "javelin"
DamageProfileTemplates.thrown_javelin.default_target.power_distribution_near.impact = 0.225
DamageProfileTemplates.thrown_javelin.default_target.power_distribution_far.impact = 0.225
Weapons.javelin_template.actions.action_one.throw_charged.impact_data.damage_profile = "javelin_throw"
--additional penetration on javelin
Weapons.javelin_template.actions.action_one.throw_charged.is_thrown_javelin = true
PlayerProjectileHuskExtension.init = function (self, extension_init_context, unit, extension_init_data)
	local owner_unit = extension_init_data.owner_unit
	local item_name = extension_init_data.item_name
	self._world = extension_init_context.world
	self._wwise_world = Managers.world:wwise_world(self._world)
	self._projectile_unit = unit
	self._owner_unit = owner_unit
	self._owner_player = Managers.player:owner(owner_unit)
	self.item_name = item_name
	local owner_inventory_extension = ScriptUnit.has_extension(owner_unit, "inventory_system")

	if owner_inventory_extension then
		local equipment = owner_inventory_extension:equipment()

		if equipment then
			local wielded_item_data = equipment.wielded

			if wielded_item_data then
				local item_units = BackendUtils.get_item_units(wielded_item_data)
				local is_ammo_weapon = item_units and item_units.is_ammo_weapon

				if is_ammo_weapon then
					local wielded_item_template = BackendUtils.get_item_template(wielded_item_data)
					local material_settings = item_units.material_settings or wielded_item_template.material_settings

					if material_settings then
						GearUtils.apply_material_settings(unit, material_settings)
					end
				end
			end
		end
	end

	local item_data = ItemMasterList[item_name]
	local item_template = BackendUtils.get_item_template(item_data)
	local item_template_name = extension_init_data.item_template_name
	local action_name = extension_init_data.action_name
	local sub_action_name = extension_init_data.sub_action_name
	local owner_buff_extension = ScriptUnit.has_extension(self._owner_unit, "buff_system")
	self.action_lookup_data = {
		item_template_name = item_template_name,
		action_name = action_name,
		sub_action_name = sub_action_name
	}
	local current_action = item_template.actions[action_name][sub_action_name]
	self._current_action = current_action
	local projectile_info = current_action.projectile_info
	local impact_data = current_action.impact_data
	local timed_data = current_action.timed_data

	if impact_data.grenade and owner_buff_extension and owner_buff_extension:has_buff_perk("frag_fire_grenades") then
		impact_data = table.shallow_copy(impact_data)
		impact_data.aoe = ExplosionTemplates.frag_fire_grenade
	end

	self.power_level = extension_init_data.power_level
	self.projectile_info = projectile_info
	self._impact_data = impact_data
	self._timed_data = timed_data
	self._time_initialized = extension_init_data.time_initialized
	self.scale = extension_init_data.scale
	self._num_targets_hit = 0
	self._hit_units = {}
	local entity_manager = Managers.state.entity
	self.projectile_linker_system = entity_manager:system("projectile_linker_system")
	self._is_server = Managers.player.is_server
	self._active = true
	self._was_active = true
	self._did_damage = false
	self._num_bounces = 0
	self._num_additional_penetrations = owner_buff_extension:apply_buffs_to_value(0, "ranged_additional_penetrations")
	self._is_critical_strike = not not extension_init_data.is_critical_strike

	if current_action.is_thrown_javelin then
		self._num_additional_penetrations = self._num_additional_penetrations + 1
	end

	self:initialize_projectile(projectile_info, impact_data)
end
PlayerProjectileUnitExtension.init = function (self, extension_init_context, unit, extension_init_data)
	local item_name = extension_init_data.item_name
	local owner_unit = extension_init_data.owner_unit
	self._world = extension_init_context.world
	self._wwise_world = Managers.world:wwise_world(self._world)
	self._projectile_unit = unit
	self._owner_unit = owner_unit
	self._owner_player = Managers.player:owner(owner_unit)
	local owner_buff_extension = ScriptUnit.has_extension(owner_unit, "buff_system")
	self.item_name = item_name
	local owner_inventory_extension = ScriptUnit.has_extension(owner_unit, "inventory_system")

	if owner_inventory_extension then
		local equipment = owner_inventory_extension:equipment()

		if equipment then
			local wielded_item_data = equipment.wielded

			if wielded_item_data then
				local item_units = BackendUtils.get_item_units(wielded_item_data)
				local is_ammo_weapon = item_units and item_units.is_ammo_weapon

				if is_ammo_weapon then
					local wielded_item_template = BackendUtils.get_item_template(wielded_item_data)
					local material_settings = item_units.material_settings or wielded_item_template.material_settings

					if material_settings then
						GearUtils.apply_material_settings(unit, material_settings)
					end
				end
			end
		end
	end

	local item_data = ItemMasterList[item_name]
	local item_template = BackendUtils.get_item_template(item_data)
	local item_template_name = extension_init_data.item_template_name
	local action_name = extension_init_data.action_name
	local sub_action_name = extension_init_data.sub_action_name
	self.action_lookup_data = {
		item_template_name = item_template_name,
		action_name = action_name,
		sub_action_name = sub_action_name
	}
	local current_action = item_template.actions[action_name][sub_action_name]
	self._current_action = current_action
	local projectile_info = current_action.projectile_info
	local impact_data = current_action.impact_data
	local timed_data = current_action.timed_data
	self.power_level = extension_init_data.power_level
	self.projectile_info = projectile_info

	if impact_data.grenade and owner_buff_extension and owner_buff_extension:has_buff_perk("frag_fire_grenades") then
		impact_data = table.shallow_copy(impact_data)
		impact_data.aoe = ExplosionTemplates.frag_fire_grenade
	end

	if impact_data then
		self._impact_data = impact_data
		local impact_damage_profile_name = impact_data.damage_profile or "default"
		self._impact_damage_profile_id = NetworkLookup.damage_profiles[impact_damage_profile_name]
	end

	if timed_data then
		self._timed_data = timed_data
		local timed_damage_profile_name = timed_data.damage_profile or "default"
		self._timed_damage_profile_id = NetworkLookup.damage_profiles[timed_damage_profile_name]
	end

	self._time_initialized = extension_init_data.time_initialized
	self.scale = extension_init_data.scale
	self._num_targets_hit = 0
	self._hit_units = {}
	self._hit_afro_units = {}
	local entity_manager = Managers.state.entity
	self._weapon_system = entity_manager:system("weapon_system")
	self._projectile_linker_system = entity_manager:system("projectile_linker_system")
	self._is_server = Managers.player.is_server
	self._marked_for_deletion = false
	self._did_damage = false
	self._num_bounces = 0
	self._num_additional_penetrations = owner_buff_extension:apply_buffs_to_value(0, "ranged_additional_penetrations")
	self._is_critical_strike = not not extension_init_data.is_critical_strike

	if current_action.is_thrown_javelin then
		self._num_additional_penetrations = self._num_additional_penetrations + 1
	end

	self:initialize_projectile(projectile_info, impact_data)
end
--prevent penetrating super armor, monsters, and shields
PlayerProjectileHuskExtension.hit_enemy_damage = function (self, damage_profile, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, breed, ranged_boost_curve_multiplier, hit_units)
	local owner = self._owner_player
	local owner_unit = self._owner_unit
	local action = self._current_action
	local node = Actor.node(hit_actor)
	local hit_zone = breed.hit_zones_lookup[node]
	local hit_zone_name = action.projectile_info.forced_hitzone or hit_zone.name
	local was_alive = AiUtils.unit_alive(hit_unit)

	if was_alive then
		self._num_targets_hit = self._num_targets_hit + 1
		hit_units[hit_unit] = true
	end

	local target_settings = damage_profile.default_target
	local is_critical_strike = self._is_critical_strike
	local attack_template = AttackTemplates[target_settings.attack_template]
	local shield_blocked = false
	local forced_penetration = false
	local trueflight_blocking = target_settings.trueflight_blocking

	if not action.ignore_shield_hit then
		shield_blocked = AiUtils.attack_is_shield_blocked(hit_unit, owner_unit, trueflight_blocking, hit_direction)
	end

	if was_alive then
		local action_mass_override = action.hit_mass_count
		local difficulty_rank = Managers.state.difficulty:get_difficulty_rank()
		local hit_mass_total = (shield_blocked and ((breed.hit_mass_counts_block and breed.hit_mass_counts_block[difficulty_rank]) or breed.hit_mass_count_block)) or (breed.hit_mass_counts and breed.hit_mass_counts[difficulty_rank]) or breed.hit_mass_count or 1

		if self.ignore_mass_and_armour then
			hit_mass_total = 1
		elseif action_mass_override and action_mass_override[breed.name] then
			local mass_cost_multiplier = action_mass_override[breed.name]
			hit_mass_total = hit_mass_total * (mass_cost_multiplier or 1)
		end

		self._amount_of_mass_hit = self._amount_of_mass_hit + hit_mass_total
	end

	local actual_target_index = math.ceil(self._amount_of_mass_hit)
	local hit_effect = action.hit_effect
	local is_husk = not owner.local_player
	local damage_sound = attack_template.sound_type
	local enemy_type = breed.name
	local hit_rotation = Quaternion.look(hit_normal)
	local power_level = self.power_level
	local damage_source = self.item_name
	local predicted_damage = DamageUtils.calculate_damage(DamageOutput, hit_unit, owner_unit, hit_zone_name, power_level, BoostCurves[target_settings.boost_curve_type], ranged_boost_curve_multiplier, is_critical_strike, damage_profile, actual_target_index, nil, damage_source)
	local no_damage = predicted_damage <= 0

	if was_alive and no_damage then
		self._did_damage = predicted_damage

		if self._num_additional_penetrations > 0 then
			forced_penetration = true
		else
			self._amount_of_mass_hit = self._max_mass

			self:stop()
		end
	elseif was_alive and not action.ignore_armor and (breed.armor_category == 2 or breed.armor_category == 3 or shield_blocked) and not action.is_thrown_javelin then
		self._did_damage = predicted_damage

		if self._num_additional_penetrations > 0 then
			forced_penetration = true
		else
			self._amount_of_mass_hit = self._max_mass

			self:stop()
		end
		--new------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif was_alive and not action.ignore_armor and (breed.armor_category == 2 or breed.armor_category == 3 or shield_blocked) and action.is_thrown_javelin then
		self._did_damage = predicted_damage

		if self._num_additional_penetrations > 0 and not (enemy_type == "chaos_warrior" or enemy_type == "beastmen_standard_bearer" or breed.armor_category == 3 or shield_blocked) then
			forced_penetration = true
		else
			self._amount_of_mass_hit = self._max_mass

			self:stop()
		end
		--end new--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	else
		self._did_damage = predicted_damage

		if hit_zone_name == "head" or hit_zone_name == "neck" then
			self._did_damage = predicted_damage - 1
		end

		EffectHelper.player_critical_hit(self._world, is_critical_strike, owner_unit, hit_unit, hit_position)
	end

	if hit_effect then
		EffectHelper.play_skinned_surface_material_effects(hit_effect, self._world, hit_unit, hit_position, hit_rotation, hit_normal, is_husk, enemy_type, damage_sound, no_damage, hit_zone_name)
	end

	return hit_zone_name ~= "ward", forced_penetration
end
PlayerProjectileUnitExtension.hit_enemy_damage = function (self, damage_profile, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, breed, has_ranged_boost, ranged_boost_curve_multiplier)
	local network_manager = Managers.state.network
	local owner = self._owner_player
	local owner_unit = self._owner_unit
	local action = self._current_action
	local is_server = self._is_server
	local node = Actor.node(hit_actor)
	local hit_zone = breed.hit_zones_lookup[node]
	local hit_zone_name = action.projectile_info.forced_hitzone or hit_zone.name
	local attack_direction = hit_direction
	local forced_penetration = false
	local was_alive = (is_server and AiUtils.unit_alive(hit_unit)) or AiUtils.client_predicted_unit_alive(hit_unit)

	if was_alive then
		self._num_targets_hit = self._num_targets_hit + 1
	end

	if hit_zone_name ~= "head" and AiUtils.unit_alive(hit_unit) and breed and breed.hit_zones and breed.hit_zones.head then
		local owner_buff_extension = ScriptUnit.has_extension(owner_unit, "buff_system")
		local auto_headshot = owner_buff_extension and owner_buff_extension:has_buff_perk("auto_headshot")

		if auto_headshot and hit_zone_name ~= "afro" then
			hit_zone_name = "head"

			owner_buff_extension:trigger_procs("on_auto_headshot")
		end
	end

	local hit_zone_id = NetworkLookup.hit_zones[hit_zone_name]
	local power_level = self.power_level
	local is_critical_strike = self._is_critical_strike
	local target_settings = damage_profile.default_target
	local attack_template = AttackTemplates[target_settings.attack_template]
	local attacker_unit_id = network_manager:unit_game_object_id(owner_unit)
	local hit_unit_id = network_manager:unit_game_object_id(hit_unit)
	local shield_blocked = false
	local trueflight_blocking = target_settings.trueflight_blocking

	if not action.ignore_shield_hit then
		shield_blocked = AiUtils.attack_is_shield_blocked(hit_unit, owner_unit, trueflight_blocking, hit_direction)
	end

	breed = AiUtils.unit_breed(hit_unit)
	local is_dummy = Unit.get_data(hit_unit, "is_dummy")
	local multiplier_type = DamageUtils.get_breed_damage_multiplier_type(breed, hit_zone_name, is_dummy)

	if (multiplier_type == "headshot" or (multiplier_type == "weakspot" and not shield_blocked)) and not action.no_headshot_sound and AiUtils.unit_alive(hit_unit) then
		local first_person_extension = ScriptUnit.extension(owner_unit, "first_person_system")

		first_person_extension:play_hud_sound_event("Play_hud_headshot", nil, false)
	end

	if was_alive then
		local action_mass_override = action.hit_mass_count
		local difficulty_rank = Managers.state.difficulty:get_difficulty_rank()
		local hit_mass_total = (shield_blocked and ((breed.hit_mass_counts_block and breed.hit_mass_counts_block[difficulty_rank]) or breed.hit_mass_count_block)) or (breed.hit_mass_counts and breed.hit_mass_counts[difficulty_rank]) or breed.hit_mass_count or 1

		if action_mass_override and action_mass_override[breed.name] then
			local mass_cost_multiplier = action_mass_override[breed.name]
			hit_mass_total = hit_mass_total * (mass_cost_multiplier or 1)
		end

		self._amount_of_mass_hit = self._amount_of_mass_hit + hit_mass_total
	end

	local actual_target_index = math.ceil(self._amount_of_mass_hit)
	local hit_effect = action.hit_effect
	local is_husk = not owner.local_player
	local damage_sound = attack_template.sound_type
	local enemy_type = breed.name
	local hit_rotation = Quaternion.look(attack_direction, Vector3.up())
	local damage_source = self.item_name
	local damage_source_id = NetworkLookup.damage_sources[damage_source]
	local damage_profile_id = self._impact_damage_profile_id
	local weapon_system = self._weapon_system
	local predicted_damage = DamageUtils.calculate_damage(DamageOutput, hit_unit, owner_unit, hit_zone_name, power_level, BoostCurves[target_settings.boost_curve_type], ranged_boost_curve_multiplier, is_critical_strike, damage_profile, actual_target_index, nil, damage_source)

	if not is_server then
		local target_health_extension = Unit.alive(hit_unit) and ScriptUnit.has_extension(hit_unit, "health_system")

		if target_health_extension then
			local networked_damage = DamageUtils.networkify_damage(predicted_damage)

			target_health_extension:apply_client_predicted_damage(networked_damage)
		end
	end

	weapon_system:send_rpc_attack_hit(damage_source_id, attacker_unit_id, hit_unit_id, hit_zone_id, hit_position, attack_direction, damage_profile_id, "power_level", power_level, "hit_target_index", actual_target_index, "blocking", shield_blocked, "shield_break_procced", false, "boost_curve_multiplier", ranged_boost_curve_multiplier, "is_critical_strike", is_critical_strike, "first_hit", self._num_targets_hit == 1)

	local no_damage = predicted_damage <= 0

	if was_alive and no_damage then
		self._did_damage = predicted_damage

		if self._num_additional_penetrations > 0 then
			forced_penetration = true
		else
			self._amount_of_mass_hit = self._max_mass

			self:stop()
		end
	elseif was_alive and not action.ignore_armor and (breed.armor_category == 2 or breed.armor_category == 3 or shield_blocked) and not action.is_thrown_javelin then
		self._did_damage = predicted_damage

		if self._num_additional_penetrations > 0 then
			forced_penetration = true
		else
			self._amount_of_mass_hit = self._max_mass

			self:stop()
		end
		--new--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif was_alive and not action.ignore_armor and (breed.armor_category == 2 or breed.armor_category == 3 or shield_blocked) and action.is_thrown_javelin then
		self._did_damage = predicted_damage

		if self._num_additional_penetrations > 0 and not (enemy_type == "chaos_warrior" or enemy_type == "beastmen_standard_bearer" or breed.armor_category == 3 or shield_blocked) then
			forced_penetration = true
		else
			self._amount_of_mass_hit = self._max_mass

			self:stop()
		end
		--end new--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	else
		self._did_damage = predicted_damage

		if hit_zone_name == "head" or hit_zone_name == "neck" then
			self._did_damage = predicted_damage - 1
		end

		EffectHelper.player_critical_hit(self._world, is_critical_strike, owner_unit, hit_unit, hit_position)
	end

	if hit_effect then
		EffectHelper.play_skinned_surface_material_effects(hit_effect, self._world, hit_unit, hit_position, hit_rotation, hit_normal, is_husk, enemy_type, damage_sound, no_damage, hit_zone_name, shield_blocked)
	end

	if hit_zone_name == "head" and not shield_blocked then
		local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")
		local first_person_extension = ScriptUnit.extension(owner_unit, "first_person_system")
		local _, procced = buff_extension:apply_buffs_to_value(0, "coop_stamina")

		if (procced or script_data.debug_legendary_traits) and AiUtils.unit_alive(hit_unit) then
			local headshot_coop_stamina_fatigue_type = breed.headshot_coop_stamina_fatigue_type or "headshot_clan_rat"
			local fatigue_type_id = NetworkLookup.fatigue_types[headshot_coop_stamina_fatigue_type]

			if is_server then
				network_manager.network_transmit:send_rpc_clients("rpc_replenish_fatigue_other_players", fatigue_type_id)
			else
				network_manager.network_transmit:send_rpc_server("rpc_replenish_fatigue_other_players", fatigue_type_id)
			end

			StatusUtils.replenish_stamina_local_players(owner_unit, headshot_coop_stamina_fatigue_type)
			first_person_extension:play_hud_sound_event("hud_player_buff_headshot", nil, false)
		end
	end

	return shield_blocked, forced_penetration
end
--prevent additional penetrations from applying to infantry or berserkers
PlayerProjectileHuskExtension.hit_enemy = function (self, impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, breed, hit_units, ranged_boost_curve_multiplier)
	if hit_actor == nil then
		return
	end

	local hit_afro, hit_zone_name = self:hit_afro(breed, hit_actor)

	if hit_afro then
		return
	end

	local damage_profile_name = impact_data.damage_profile or "default"
	local damage_profile = DamageProfileTemplates[damage_profile_name]
	local allow_link = true
	local aoe_data = impact_data.aoe
	local forced_penetration = false

	if damage_profile then
		allow_link, forced_penetration = self:hit_enemy_damage(damage_profile, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, breed, ranged_boost_curve_multiplier, hit_units)
	end

	local grenade = impact_data.grenade

	if grenade or (aoe_data and self._max_mass <= self._amount_of_mass_hit) then
		self:do_aoe(aoe_data, hit_position)
		self:stop()
	end

	local current_action = self._current_action

	if current_action.use_max_targets then
		if current_action.max_targets <= self._num_targets_hit then
			if self._num_additional_penetrations > 0 then
				forced_penetration = true
			else
				if allow_link then
					self:_handle_linking(impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, self._did_damage, true)
				end

				self:stop()
			end
		end
	elseif self._max_mass <= self._amount_of_mass_hit and not current_action.is_thrown_javelin then
		if self._num_additional_penetrations > 0 then
			forced_penetration = true
		else
			if allow_link then
				self:_handle_linking(impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, self._did_damage, true)
			end

			self:stop()
		end
		--new--------------------------------------------------------------------------------------------------------------------------------------------
	elseif self._max_mass <= self._amount_of_mass_hit and current_action.is_thrown_javelin then
		if self._num_additional_penetrations > 0 and not (breed.armor_category == 1 or breed.armor_category == 5) then
			forced_penetration = true
		--[[elseif self._num_additional_penetrations > 0 and (breed.armor_category == 1 or breed.armor_category == 5) then
			forced_penetration = false]]
		else
			if allow_link then
				self:_handle_linking(impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, self._did_damage, true)
			end

			self:stop()
		end
		--end new--------------------------------------------------------------------------------------------------------------------------------------------
	end

	if forced_penetration then
		self._num_additional_penetrations = self._num_additional_penetrations - 1
	end
end
PlayerProjectileUnitExtension.hit_enemy = function (self, impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, breed, has_ranged_boost, ranged_boost_curve_multiplier)
	local shield_blocked = false
	local damage_profile_name = impact_data.damage_profile or "default"
	local damage_profile = DamageProfileTemplates[damage_profile_name]
	local allow_link = true
	local forced_penetration = false
	local aoe_data = impact_data.aoe
	breed = AiUtils.unit_breed(hit_unit)

	if not breed then
		return
	end

	if damage_profile then
		local node = Actor.node(hit_actor)
		local hit_zone = breed.hit_zones_lookup[node]
		local hit_zone_name = hit_zone.name
		local send_to_server = true
		local charge_value = damage_profile.charge_value or "projectile"
		local is_critical_strike = self._is_critical_strike
		local owner_unit = self._owner_unit
		local num_targets_hit = self._num_targets_hit + 1
		local unmodified = true

		if hit_zone_name ~= "head" and AiUtils.unit_alive(hit_unit) and breed and breed.hit_zones and breed.hit_zones.head then
			local owner_buff_extension = ScriptUnit.has_extension(owner_unit, "buff_system")
			local auto_headshot = owner_buff_extension and owner_buff_extension:has_buff_perk("auto_headshot")

			if auto_headshot and hit_zone_name ~= "afro" then
				hit_zone_name = "head"
				unmodified = false

				owner_buff_extension:trigger_procs("on_auto_headshot")
			end
		end

		local buff_type = DamageUtils.get_item_buff_type(self.item_name)

		DamageUtils.buff_on_attack(owner_unit, hit_unit, charge_value, is_critical_strike, hit_zone_name, num_targets_hit, send_to_server, buff_type, unmodified)

		shield_blocked, forced_penetration = self:hit_enemy_damage(damage_profile, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, breed, has_ranged_boost, ranged_boost_curve_multiplier)
		allow_link = hit_zone_name ~= "ward"

		if allow_link and breed and not shield_blocked then
			local impact_pickup_settings = impact_data.pickup_settings

			if impact_pickup_settings then
				allow_link = not not impact_pickup_settings.link_hit_zones[hit_zone_name]
			end
		end
	end

	local grenade = impact_data.grenade

	if grenade or (aoe_data and self._max_mass <= self._amount_of_mass_hit) then
		self:do_aoe(aoe_data, hit_position)
		self:stop()
	end

	local current_action = self._current_action

	if current_action.use_max_targets then
		if current_action.max_targets <= self._num_targets_hit then
			if self._num_additional_penetrations > 0 then
				forced_penetration = true
			else
				local hit_enemy_or_player = true

				self:_handle_linking(impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, self._did_damage, allow_link, shield_blocked, hit_enemy_or_player)
				self:stop()
			end
		end
	elseif self._max_mass <= self._amount_of_mass_hit and not current_action.is_thrown_javelin then
		if self._num_additional_penetrations > 0 then
			forced_penetration = true
		else
			local hit_enemy_or_player = true

			self:_handle_linking(impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, self._did_damage, allow_link, shield_blocked, hit_enemy_or_player)
			self:stop()
		end
		--new------------------------------------------------------------------------------------------------------------------------------------------------
	elseif self._max_mass <= self._amount_of_mass_hit and current_action.is_thrown_javelin then
		if self._num_additional_penetrations > 0 and not (breed.armor_category == 1 or breed.armor_category == 5) then
			forced_penetration = true
		--[[elseif self._num_additional_penetrations > 0 and (breed.armor_category == 1 or breed.armor_category == 5) then
			forced_penetration = false]]
		else
			if allow_link then
				self:_handle_linking(impact_data, hit_unit, hit_position, hit_direction, hit_normal, hit_actor, self._did_damage, true)
			end

			self:stop()
		end
		--end new------------------------------------------------------------------------------------------------------------------------------------------------
	end

	if self._locomotion_extension.notify_hit_enemy then
		self._locomotion_extension:notify_hit_enemy(hit_unit)
	end

	if forced_penetration then
		self._num_additional_penetrations = self._num_additional_penetrations - 1
	end
end
----------------------------SIENNA MACE-----------------------------------------

--[[Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.allowed_chain_actions[1].sub_action = "light_attack_left"

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].sub_action = "default_left"

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default_last.allowed_chain_actions[1].sub_action = "light_attack_last"

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.allowed_chain_actions[1].sub_action = "default_left"

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_last"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.45
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_heavy_left_diagonal"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.9 * 0.85
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.15
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.3

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_smiter"

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[1].start_time = 0.65
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.65]]
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].sub_action = "default_left"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[1].start_time = 0.7
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.allowed_chain_actions[2].sub_action = "default_left"

--[[Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.buff_data[1].external_multiplier = 1.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.buff_data[2].external_multiplier = 1]]

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.additional_critical_strike_chance = 0.1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.buff_data[1].external_multiplier = 1
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.buff_data[1].end_time = 0.25
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.buff_data[2] = {
					start_time = 0.25,
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.buff_data[1].external_multiplier = 1.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack.buff_data[1].end_time = 0.3

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.buff_data[1].external_multiplier = 1.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.buff_data[1].end_time = 0.3
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.buff_data[1].external_multiplier = 1.9
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_right_up.buff_data[1].end_time = 0.3

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.buff_data[1].external_multiplier = 1.2
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.buff_data[1].end_time = 0.3

--dmg profile changes
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_right.damage_profile = "sienna_mace_light_diag"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_left.damage_profile = "sienna_mace_light_diag"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_bopp.damage_profile = "sienna_mace_push_attack"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_upper.damage_profile = "sienna_mace_light_smiter"
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.light_attack_last.damage_profile = "sienna_mace_light_smiter"
--------------------------SIENNA DAGGER-----------------------------------------
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_profile = "sienna_dagger_poke"
Weapons.one_handed_daggers_template_1.actions.action_one.push_stab.damage_profile = "sienna_dagger_poke_burn"
--Weapons.one_handed_daggers_template_1.block_angle = 90
--Weapons.one_handed_daggers_template_1.dodge_count = 4
Weapons.one_handed_daggers_template_1.actions.action_one.default_right_heavy.allowed_chain_actions[2].start_time = 0.3
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.3
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.3
Weapons.one_handed_daggers_template_1.actions.action_one.heavy_attack_right.damage_profile = "sienna_dagger_heavy_stab"
Weapons.one_handed_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.one_handed_daggers_template_1.block_fatigue_point_multiplier = 0.25

--------------------------1H HAMMER AND MACE-----------------------------------------
--kruber
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_profile = "oneH_hammer_push_attack_new"
--bardin
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_left.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_right.damage_profile = "oneH_hammer_light_new"
Weapons.one_handed_hammer_template_2.actions.action_one.light_attack_bopp.damage_profile = "oneH_hammer_push_attack_new"
--------------------------1H SWORD-----------------------------------------
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.damage_profile = "oneH_sword_light_last_new"
--------------------------HALBERD-----------------------------------------
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_halberds_template_1.block_angle = 180
Weapons.two_handed_halberds_template_1.actions.action_one.heavy_attack_left.damage_profile = "halberd_heavy_left"
--------------------------BRETON SNS-----------------------------------------
Weapons.one_handed_sword_shield_template_2.actions.action_one.light_attack_right.damage_profile = "breton_SnS_right"
--------------------------Glaive-----------------------------------------
--Weapons.two_handed_axes_template_2.actions.action_one.light_attack_left_upward.hit_mass_count = nil
Weapons.two_handed_axes_template_2.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--------------------------ELF 1H SWORD-----------------------------------------
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_sword_template_1.actions.action_one.light_attack_last.ignore_armour_hit = true
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.damage_profile = "elf_oneH_sword_heavy_up"
Weapons.we_one_hand_sword_template_1.actions.action_one.heavy_attack_up.hit_mass_count = LINESMAN_HIT_MASS_COUNT
--------------------------BILLHOOK-----------------------------------------
Weapons.two_handed_billhooks_template.block_angle = 180
Weapons.two_handed_billhooks_template.buffs.change_dodge_distance.external_optional_multiplier = 1.1
Weapons.two_handed_billhooks_template.buffs.change_dodge_speed.external_optional_multiplier = 1.1
--------------------------AXE AND FALCHION-----------------------------------------
Weapons.dual_wield_axe_falchion_template.actions.action_one.light_attack_right.damage_profile = "oneH_axe_flat"
Weapons.dual_wield_axe_falchion_template.dodge_count = 3
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_axe_falchion_template.buffs.change_dodge_speed.external_optional_multiplier = 1.15
--------------------------CROSSBOW-----------------------------------------
DamageProfileTemplates.crossbow_bolt.critical_strike.attack_armor_power_modifer = {
			1,
			0.8,
			1.5,
			1,
			0.85,
			0.25
		}
DamageProfileTemplates.crossbow_bolt.armor_modifier_near.attack = {
			1,
			0.8,
			1.5,
			1,
			0.85,
			0
		}
DamageProfileTemplates.crossbow_bolt.armor_modifier_far.attack = {
			1,
			0.8,
			1.5,
			1,
			0.85,
			0
		}
--------------------------DRAKEFIRE PISTOL-----------------------------------------
DamageProfileTemplates.shot_drakefire.critical_strike.attack_armor_power_modifer = {
			1,
			0.25,
			1.5,
			1,
			1,
			0.25
		}
DamageProfileTemplates.shot_drakefire.armor_modifier_near.attack = {
			1,
			0.25,
			1.5,
			1,
			1,
			0
		}
DamageProfileTemplates.shot_drakefire.armor_modifier_far.attack = {
			1,
			0.25,
			1.5,
			1,
			1,
			0
		}
--------------------------SWIFT BOW-----------------------------------------
DamageProfileTemplates.arrow_machinegun.critical_strike.attack_armor_power_modifer = {
			1,
			0.25,
			1.3,
			1,
			1,
			0.25
		}
DamageProfileTemplates.arrow_machinegun.armor_modifier_near.attack = {
			1,
			0,
			1.3,
			1,
			1,
			0
		}
DamageProfileTemplates.arrow_machinegun.armor_modifier_far.attack = {
			1,
			0,
			1.3,
			1,
			1,
			0
		}
-------------------------- SALTZ VOLLEY CROSSBOW-----------------------------------------
Weapons.repeating_crossbow_template_1.ammo_data.reload_time = 3
-------------------------- ELF VOLLEY CROSSBOW-----------------------------------------
Weapons.repeating_crossbow_elf_template.default_spread_template = "repeating_crossbow_elf"
Weapons.repeating_crossbow_elf_template.actions.action_one.default.cooldown = 0.4
Weapons.repeating_crossbow_elf_template.actions.action_one.default.allowed_chain_actions[2].start_time = 0.4
Weapons.repeating_crossbow_elf_template.actions.action_one.default.allowed_chain_actions[3].start_time = 0.4
Weapons.repeating_crossbow_elf_template.actions.action_one.default.allowed_chain_actions[4].start_time = 0.4
--Weapons.repeating_crossbow_elf_template.actions.action_one.zoomed_shot.spread_template_override = "repeating_crossbow_elf"
--Weapons.repeating_crossbow_elf_template.actions.action_two.default.spread_template_override = "repeating_crossbow_elf"
SpreadTemplates.repeating_crossbow_elf = {
		continuous = {
			still = {
				max_yaw = 0.4,
				max_pitch = 0.4
			},
			moving = {
				max_yaw = 0.8,
				max_pitch = 0.8
			},
			crouch_still = {
				max_yaw = 0.2,
				max_pitch = 0.2
			},
			crouch_moving = {
				max_yaw = 0.4,
				max_pitch = 0.4
			},
			zoomed_still = {
				max_yaw = 0.6,
				max_pitch = 0.6
			},
			zoomed_moving = {
				max_yaw = 1.5,
				max_pitch = 1.5
			},
			zoomed_crouch_still = {
				max_yaw = 0.5,
				max_pitch = 0.5
			},
			zoomed_crouch_moving = {
				max_yaw = 0.75,
				max_pitch = 0.75
			}
		},
		immediate = {
			being_hit = {
				immediate_pitch = 1.4,
				immediate_yaw = 1.4
			},
			shooting = {
				immediate_pitch = 0.7,
				immediate_yaw = 0.7
			}
		}
	}
--------------------------REPEATER PISTOL-----------------------------------------
local repeating_pistol_dropoff_ranges = {
	dropoff_start = 12.5,
	dropoff_end = 30
}
Weapons.repeating_pistol_template_1.ammo_data.max_ammo = 54 --56
DamageProfileTemplates.shot_machinegun.critical_strike.attack_armor_power_modifer = {
			1.05,
			0.8,
			1.35,
			1.05,
			1.05,
			0.3
		}
DamageProfileTemplates.shot_machinegun.armor_modifier_near.attack = {
			1.05,
			0.55,
			1.35,
			1.05,
			1.05,
			0
		}
DamageProfileTemplates.shot_machinegun.armor_modifier_far.attack = {
			1.05,
			0,
			1.35,
			1.05,
			1.05,
			0
		}
DamageProfileTemplates.shot_machinegun_shotgun.shield_break = true
DamageProfileTemplates.shot_machinegun.default_target.range_dropoff_settings = repeating_pistol_dropoff_ranges
SpreadTemplates.repeating_handgun_special = {
		continuous = {
			still = {
				max_yaw = 4.5,
				max_pitch = 3
			},
			moving = {
				max_yaw = 4.5,
				max_pitch = 3
			},
			crouch_still = {
				max_yaw = 4.5,
				max_pitch = 3
			},
			crouch_moving = {
				max_yaw = 4.5,
				max_pitch = 3
			},
			zoomed_still = {
				max_yaw = 0,
				max_pitch = 0
			},
			zoomed_moving = {
				max_yaw = 3,
				max_pitch = 1.8
			},
			zoomed_crouch_still = {
				max_yaw = 0,
				max_pitch = 0
			},
			zoomed_crouch_moving = {
				max_yaw = 3,
				max_pitch = 1.8
			}
		},
		immediate = {
			being_hit = {
				immediate_pitch = 1.4,
				immediate_yaw = 1.4
			},
			shooting = {
				immediate_pitch = 2,
				immediate_yaw = 2
			}
		}
	}
--[[SpreadTemplates.repeating_pistol.continuous.still = {
	max_yaw = 0.4,
	max_pitch = 0.4
}
SpreadTemplates.repeating_pistol.continuous.crouch_still = {
	max_yaw = 0.4,
	max_pitch = 0.4
}]]
--------------------------SWORD AND MACE-----------------------------------------
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.damage_profile = "oneH_hammer_light_new"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.damage_profile = "oneH_hammer_light_new"
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_left_diagonal.hit_mass_count = TANK_HIT_MASS_COUNT
Weapons.dual_wield_hammer_sword_template.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT

Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.hit_mass_count = nil
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.hit_mass_count = nil
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.damage_profile_left = "dual_sword_mace_heavy"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.damage_profile_left = "dual_sword_mace_heavy"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack.damage_profile_right = "dual_sword_mace_heavy"
Weapons.dual_wield_hammer_sword_template.actions.action_one.heavy_attack_2.damage_profile_right = "dual_sword_mace_heavy"
--------------------------DUAL AXE-----------------------------------------
Weapons.dual_wield_axes_template_1.block_fatigue_point_multiplier = 0.25
Weapons.dual_wield_axes_template_1.actions.action_one.push.fatigue_cost = "action_stun_push"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_left = "dual_axe_bopp"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_right = "dual_axe_bopp"
Weapons.dual_wield_axes_template_1.block_angle = 40
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.damage_profile_left = "dual_axe_heavy"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.damage_profile_right = "dual_axe_heavy"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.damage_profile_left = "dual_axe_heavy"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.damage_profile_right = "dual_axe_heavy"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.damage_profile_left = "dual_axe_heavy_shield_break"
Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.damage_profile_right = "dual_axe_heavy_shield_break"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.damage_profile = "dual_axe_light"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.damage_profile = "dual_axe_light"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.damage_profile = "dual_axe_light"
Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.damage_profile = "dual_axe_light"
--------------------------SWORD AND DAGGER-----------------------------------------
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.push.fatigue_cost = nil
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.15
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.heavy_attack_2.additional_critical_strike_chance = nil
Weapons.dual_wield_sword_dagger_template_1.block_fatigue_point_multiplier = 0.5
Weapons.dual_wield_sword_dagger_template_1.dodge_count = 3
--combo timing changes
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_second.allowed_chain_actions[1].start_time = 0.4515
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_right_first.allowed_chain_actions[1].start_time = 0.3465
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_stab_left.allowed_chain_actions[1].start_time = 0.4515
Weapons.dual_wield_sword_dagger_template_1.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.7875
--------------------------DUAL DAGGERS-----------------------------------------
--Weapons.dual_wield_daggers_template_1.block_angle = 90
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_distance.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.buffs.change_dodge_speed.external_optional_multiplier = 1.25
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.ignore_armour_hit = true
Weapons.dual_wield_daggers_template_1.block_fatigue_point_multiplier = 0.25
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.range_mod = 1.25
Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.allowed_chain_actions[3].start_time = 0.4
--Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.anim_time_scale = 1 * 2
--Weapons.dual_wield_daggers_template_1.actions.action_one.push_stab.damage_profile = "dual_dagger_push_stab"
--------------------------RAPIER-----------------------------------------

Weapons.fencing_sword_template_1.block_angle = 40
Weapons.fencing_sword_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[6] = {
	sub_action = "default",
	start_time = 0.55,
	action = "action_wield",
	input = "action_wield"
}
--PlayerUnitStatusSettings.fatigue_point_costs.weapon_special_ranged_cost = 0.5
--Weapons.fencing_sword_template_1.actions.action_three.block_shot.fatigue_cost = "weapon_special_ranged_cost"
--Weapons.fencing_sword_template_1.actions.action_three.block_shot.fatigue_cost_on_shot = true
--[[ActionHandgun.client_owner_post_update = function (self, dt, t, world, can_damage)
	local weapon_unit = self.weapon_unit
	local owner_unit = self.owner_unit
	local current_action = self.current_action
	local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")
	self._status_extension = ScriptUnit.extension(owner_unit, "status_system")

	if self.state == "waiting_to_shoot" and self.time_to_shoot <= t then
		self.state = "shooting"

		if self.ammo_extension and not self.extra_buff_shot and self.ammo_usage then
			local ammo_usage = self.ammo_usage

			self.ammo_extension:use_ammo(ammo_usage)
		end

		local overcharge_type = self.overcharge_type

		if overcharge_type then
			local overcharge_amount = PlayerUnitStatusSettings.overcharge_values[overcharge_type] * (self.charge_multiplier or 1)
			local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")

			if self._is_critical_strike and buff_extension:has_buff_perk("no_overcharge_crit") then
				overcharge_amount = 0
			end

			self.overcharge_extension:add_charge(overcharge_amount)
		end

		if self.uses_ability_cooldown then
			self.career_extension:reduce_activated_ability_cooldown(-self.ammo_usage)
		end
	end

	if self.state == "shooting" then
		local procced = self:_check_extra_shot_proc(self.owner_buff_extension)
		local add_spread = not self.extra_buff_shot

		if procced then
			self.state = "waiting_to_shoot"
			self.time_to_shoot = t + 0.1
			self.extra_buff_shot = true
		else
			self.state = "shot"
		end

		if not Managers.player:owner(self.owner_unit).bot_player then
			Managers.state.controller_features:add_effect("rumble", {
				rumble_effect = "handgun_fire"
			})
		end

		local first_person_extension = ScriptUnit.extension(owner_unit, "first_person_system")
		local position, rotation = first_person_extension:get_projectile_start_position_rotation()

		if current_action.fire_at_gaze_setting and ScriptUnit.has_extension(owner_unit, "eyetracking_system") then
			local eyetracking_extension = ScriptUnit.extension(owner_unit, "eyetracking_system")

			if eyetracking_extension:get_is_feature_enabled("tobii_fire_at_gaze") then
				rotation = eyetracking_extension:gaze_rotation()
			end
		end

		local spread_extension = self.spread_extension

		if spread_extension then
			rotation = spread_extension:get_randomised_spread(rotation)

			if add_spread then
				spread_extension:set_shooting()
			end
		end

		local physics_world = World.get_data(world, "physics_world")
		local auto_hit_chance = current_action.aim_assist_auto_hit_chance or 0
		local direction = nil

		if math.random() <= auto_hit_chance and Managers.input:is_device_active("gamepad") and ScriptUnit.has_extension(owner_unit, "smart_targeting_system") then
			local targeting_extension = ScriptUnit.extension(owner_unit, "smart_targeting_system")
			local targeting_data = targeting_extension:get_targeting_data()
			local target_position = targeting_data.target_position

			if target_position then
				direction = Vector3.normalize(target_position - position)
			end
		end

		direction = direction or Quaternion.forward(rotation)
		local result = nil

		if current_action.projectile_info then
			local angle = ActionUtils.pitch_from_rotation(rotation)
			local speed = current_action.speed
			local target_vector = Vector3.normalize(Vector3.flat(Quaternion.forward(rotation)))
			local lookup_data = current_action.lookup_data

			ActionUtils.spawn_player_projectile(owner_unit, position, rotation, 0, angle, target_vector, speed, self.item_name, lookup_data.item_template_name, lookup_data.action_name, lookup_data.sub_action_name, self._is_critical_strike, self.power_level)
		else
			if current_action.ray_against_large_hitbox then
				result = PhysicsWorld.immediate_raycast_actors(physics_world, position, direction, "static_collision_filter", "filter_player_ray_projectile_static_only", "dynamic_collision_filter", "filter_player_ray_projectile_ai_only", "dynamic_collision_filter", "filter_player_ray_projectile_hitbox_only", "dynamic_collision_filter", "filter_enemy_trigger")
			else
				result = PhysicsWorld.immediate_raycast_actors(physics_world, position, direction, "static_collision_filter", "filter_player_ray_projectile_static_only", "dynamic_collision_filter", "filter_player_ray_projectile_ai_only", "dynamic_collision_filter", "filter_player_ray_projectile_hitbox_only")
			end

			local is_server = self.is_server

			if result then
				DamageUtils.process_projectile_hit(world, self.item_name, owner_unit, is_server, result, current_action, direction, true, nil, nil, self._is_critical_strike, self.power_level)
			end
		end

		if self.current_action.reset_aim_on_attack then
			first_person_extension:reset_aim_assist_multiplier()
		end

		local fire_sound_event = self.current_action.fire_sound_event

		if fire_sound_event then
			first_person_extension:play_hud_sound_event(fire_sound_event)
		end

		if current_action.alert_sound_range_fire then
			Managers.state.entity:system("ai_system"):alert_enemies_within_range(owner_unit, POSITION_LOOKUP[owner_unit], current_action.alert_sound_range_fire)
		end

		local hit_position = (result and result[#result][1]) or position + direction * 100

		Unit.set_flow_variable(weapon_unit, "hit_position", hit_position)
		Unit.set_flow_variable(weapon_unit, "trail_life", Vector3.length(hit_position - position) * 0.1)
		Unit.flow_event(weapon_unit, "lua_bullet_trail")
		Unit.flow_event(weapon_unit, "lua_bullet_trail_set")
	end

	if current_action.fatigue_cost_on_shot then
			self:_handle_fatigue(buff_extension, self._status_extension, current_action, false)
	end

	
	if self.state == "shot" and self.active_reload_time then
		local input_extension = ScriptUnit.extension(owner_unit, "input_system")

		if self.active_reload_time < t then
			local ammo_extension = self.ammo_extension

			if (input_extension:get("weapon_reload") or input_extension:get_buffer("weapon_reload")) and ammo_extension:can_reload() then
				local status_extension = ScriptUnit.extension(owner_unit, "status_system")

				status_extension:set_zooming(false)

				local weapon_extension = ScriptUnit.extension(weapon_unit, "weapon_system")

				weapon_extension:stop_action("reload")
			end
		elseif input_extension:get("weapon_reload") then
			input_extension:add_buffer("weapon_reload", 0)
		end
	end
end]]
--------------------------BOLT STAFF-----------------------------------------
DamageProfileTemplates.fire_spark.critical_strike.attack_armor_power_modifer = {
			0.5,--0.2, --1,
			0.125, --0.05, --0.25,
			0.5, --0.2, --1,
			0.5, --0.2, --1,
			0.5, --0.2, --1,
			0.125, --0.05, --0.25
		}
DamageProfileTemplates.fire_spark.armor_modifier_near.attack = {
			0.5, --0.2, --1,
			0.125, --0.05, --0.25,
			0.5, --0.2, --1,
			0.5, --0.2, --1,
			0.5, --0.2, --1,
			0
		}
DamageProfileTemplates.fire_spark.armor_modifier_far.attack = {
			0.5, --0.2, --1,
			0.125, --0.05, --0.25,
			0.5, --0.2, --1,
			0.5, --0.2, --1,
			0.5, --0.2, --1,
			0
		}
DamageProfileTemplates.fire_spark.cleave_distribution.attack = 0.2
DamageProfileTemplates.fire_spark.cleave_distribution.impact = 0.2
DamageProfileTemplates.fire_spark.default_target.dot_template_name = "burning_spark"
DotTypeLookup.burning_spark = "burning_dot"
InfiniteBurnDotLookup.burning_spark = "burning_spark_infinite"
--------------------------TROLLHAMMER TORPEDO-----------------------------------------
--remove grenadier interaction
ActionGrenadeThrower.client_owner_post_update = function (self, dt, t, world, can_damage)
	if self.state == "waiting_to_shoot" and self.time_to_shoot <= t then
		self.state = "shooting"
	end

	if self.state == "shooting" then
		local owner_unit = self.owner_unit

		if not Managers.player:owner(self.owner_unit).bot_player then
			Managers.state.controller_features:add_effect("rumble", {
				rumble_effect = "crossbow_fire"
			})
		end

		local first_person_extension = ScriptUnit.extension(owner_unit, "first_person_system")
		local position, rotation = first_person_extension:get_projectile_start_position_rotation()
		local spread_extension = self.spread_extension
		local current_action = self.current_action

		if spread_extension then
			rotation = spread_extension:get_randomised_spread(rotation)

			spread_extension:set_shooting()
		end

		local angle = ActionUtils.pitch_from_rotation(rotation)
		local speed = current_action.speed
		local target_vector = Vector3.normalize(Vector3.flat(Quaternion.forward(rotation)))
		local lookup_data = current_action.lookup_data

		ActionUtils.spawn_player_projectile(owner_unit, position, rotation, 0, angle, target_vector, speed, self.item_name, lookup_data.item_template_name, lookup_data.action_name, lookup_data.sub_action_name, self._is_critical_strike, self.power_level)

		local fire_sound_event = self.current_action.fire_sound_event

		if fire_sound_event then
			first_person_extension:play_hud_sound_event(fire_sound_event)
		end

		if self.ammo_extension and not self.extra_buff_shot then
			local ammo_usage = current_action.ammo_usage
			--[[local _, procced = self.owner_buff_extension:apply_buffs_to_value(0, "not_consume_grenade")

			if procced then
				self.ammo_extension:add_ammo_to_reserve(ammo_usage)
			end]]

			self.ammo_extension:use_ammo(ammo_usage)
		end

		local procced = self:_check_extra_shot_proc(self.owner_buff_extension)
		local add_spread = not self.extra_buff_shot

		if procced then
			self.state = "waiting_to_shoot"
			self.time_to_shoot = t + 0.1
			self.extra_buff_shot = true
		else
			self.state = "shot"
		end

		first_person_extension:reset_aim_assist_multiplier()
	end

	if self.state == "shot" and self.active_reload_time then
		local owner_unit = self.owner_unit
		local input_extension = ScriptUnit.extension(owner_unit, "input_system")

		if self.active_reload_time < t then
			local ammo_extension = self.ammo_extension

			if (input_extension:get("weapon_reload") or input_extension:get_buffer("weapon_reload")) and ammo_extension:can_reload() then
				local status_extension = ScriptUnit.extension(self.owner_unit, "status_system")

				status_extension:set_zooming(false)

				local weapon_extension = ScriptUnit.extension(self.weapon_unit, "weapon_system")

				weapon_extension:stop_action("reload")
			end
		elseif input_extension:get("weapon_reload") then
			input_extension:add_buffer("weapon_reload", 0)
		end
	end
end
--remove shrapnel interaction
ExplosionTemplates.dr_deus_01.explosion.attack_type = nil
Weapons.dr_deus_01_template_1.actions.action_one.default.impact_data.is_torpedo = true
--Weapons.dr_deus_01_template_1.actions.action_one.default.speed = nil
--------------------------2H SWORD-----------------------------------------
------------------------------DOTS-----------------------------------------

BuffTemplates.we_deus_01_dot_small = {
		buffs = {
			{
				duration = 1.5,
				name = "we_deus_01_dot_small",
				end_flow_event = "smoke",
				start_flow_event = "burn",
				death_flow_event = "burn_death",
				remove_buff_func = "remove_dot_damage",
				apply_buff_func = "start_dot_damage",
				perk = "burning",
				time_between_dot_damages = 0.75,
				damage_type = "burninating",
				damage_profile = "we_deus_01_dot_small",
				update_func = "apply_dot_damage"
			}
		}
	}
BuffTemplates.we_deus_01_dot_med = {
		buffs = {
			{
				duration = 3,
				name = "we_deus_01_dot_med",
				end_flow_event = "smoke",
				start_flow_event = "burn",
				death_flow_event = "burn_death",
				remove_buff_func = "remove_dot_damage",
				apply_buff_func = "start_dot_damage",
				perk = "burning",
				time_between_dot_damages = 0.75,
				damage_type = "burninating",
				damage_profile = "we_deus_01_dot_med",
				update_func = "apply_dot_damage"
			}
		}
	}
BuffTemplates.burning_spark = {
	buffs = {
		{
			duration = 1,
			name = "burning dot",
			end_flow_event = "smoke",
			start_flow_event = "burn",
			death_flow_event = "burn_death",
			remove_buff_func = "remove_dot_damage",
			apply_buff_func = "start_dot_damage",
			perk = "burning",
			time_between_dot_damages = 0.75,
			damage_type = "burninating",
			damage_profile = "burning_dot",
			update_func = "apply_dot_damage"
		}
	}
}
BuffTemplates.burning_spark_infinite = {
	buffs = {
		{
			damage_profile = "burning_dot",
			name = "burning dot",
			end_flow_event = "smoke",
			start_flow_event = "burn_infinity",
			death_flow_event = "burn_death",
			remove_buff_func = "remove_dot_damage",
			apply_buff_func = "start_dot_damage",
			perk = "burning",
			time_between_dot_damages = 0.75,
			damage_type = "burninating",
			max_stacks = 1,
			update_func = "apply_dot_damage"
		}
	}
}
------------------------------WEAPON TRAITS-----------------------------------------
--TROLLHAMMER
--Multitasker

WeaponTraits.traits.ranged_reload_on_block = {
	display_name = "traits_ranged_reload_on_block",
	advanced_description = "description_traits_ranged_reload_on_block",
	icon = "deus_icon_ammo_pickup_reload_speed",
	buff_name = "ranged_reload_on_block",
	description_values = {}
}
BuffTemplates.ranged_reload_on_block = {
	buffs = {
		{
			name = "ranged_reload_on_block",
			event_buff = true,
			event = "on_block",
			max_stacks = 1,
			buff_func = "proc_traits_ranged_reload_on_block"
		}
	}
}
BuffTemplates.ranged_reload_on_block_cooldown = {
	buffs = {
		{
			name = "ranged_reload_on_block_cooldown",
			is_cooldown = true,
			duration = 5,
			max_stacks = 1
		}
	}
}
ProcFunctions.proc_traits_ranged_reload_on_block = function (player, buff, params)
	local player_unit = player.player_unit
	local buff_extension = ScriptUnit.extension(player_unit, "buff_system")

	if Unit.alive(player_unit) then
		local weapon_slot = "slot_ranged"
		local inventory_extension = ScriptUnit.extension(player_unit, "inventory_system")
		local slot_data = inventory_extension:get_slot_data(weapon_slot)
		local right_unit_1p = slot_data.right_unit_1p
		local left_unit_1p = slot_data.left_unit_1p
		local right_hand_ammo_extension = ScriptUnit.has_extension(right_unit_1p, "ammo_system")
		local left_hand_ammo_extension = ScriptUnit.has_extension(left_unit_1p, "ammo_system")
		local ammo_extension = right_hand_ammo_extension or left_hand_ammo_extension
		local current_ammo = ammo_extension:remaining_ammo()
		local clip_ammo = ammo_extension:ammo_count()
		local on_cooldown = buff_extension:get_non_stacking_buff("ranged_reload_on_block_cooldown")

		if current_ammo >= 1 and ammo_extension and not ammo_extension:clip_full() and not on_cooldown then
			ammo_extension._ammo_immediately_available = true

			ammo_extension:add_ammo(1)

			ammo_extension._ammo_immediately_available = false

			ammo_extension:remove_ammo(1)
			buff_extension:add_buff("ranged_reload_on_block_cooldown")
		end
	end
end
--Explosive Ordinance
--Damage Ranges
local sniper_dropoff_ranges = {
	dropoff_start = 30,
	dropoff_end = 50
}
--Create a table for the new templates
DSDamageProfileTemplates = {}
--new templates
DSDamageProfileTemplates.dual_axe_heavy_shield_break = {
	shield_break = true,
	armor_modifier = {
		attack = {
			1.25,
			0.65,
			2.75, --2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			3.025, --2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2, --1.6,
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.225,
			impact = 0.15
		}
	},
	ignore_stagger_reduction = false,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1.1, --1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	}
}
DSDamageProfileTemplates.dual_axe_heavy = {
	armor_modifier = {
		attack = {
			1.25,
			0.65,
			2.75, --2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			3.025, --2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2, --1.6,
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.225,
			impact = 0.15
		}
	},
	ignore_stagger_reduction = false,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1.1, --1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	}
}
DSDamageProfileTemplates.javelin_throw = {
	charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.49, --0.63, --0.623, --0.616, --1,
				1.64, --1.639, --1.628, --1.3,
				1,
				0.75,
				0.35 --0.44 --0.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				0.75
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.49, --0.63, --0.623, --0.616, --0.7,
				1.64, --1.639, --1.628, --1.1,
				1,
				0.75,
				0.175 --0.22 --0.25
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.49, --0.63, --0.623, --0.616, --0.7,
				1.64, --1.639, --1.628, --1.1,
				1,
				0.75,
				0.175 --0.22 --0.25
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.8,
			impact = 0.8
		},
		default_target = {
			boost_curve_coefficient_headshot = 3.1, --2.5, --3, --2.8, --2, --1.6,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "projectile_javelin",
			power_distribution_near = {
				attack = 0.8,
				impact = 0.225--0.85
			},
			power_distribution_far = {
				attack = 0.8,
				impact = 0.225 --0.85
			},
			range_dropoff_settings = sniper_dropoff_ranges
		},
		targets = {}
}
DSDamageProfileTemplates.dual_dagger_push_stab = {
	armor_modifier = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.1, --0.65, --2, --1.5, --0.1,
			0.5,
			1,
			0.75,
			0.1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 3,
		attack_template = "light_stab_smiter",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		{
			dot_template_name = "weapon_bleed_dot_dagger",
			boost_curve_coefficient_headshot = 3,
			boost_curve_type = "ninja_curve",
			attack_template = "light_stab_smiter",
			power_distribution = {
				attack = 0.12,
				impact = 0.08 --0.25 --0.08
			}
		}
	},
	require_damage_for_dot = true
}
DSDamageProfileTemplates.dual_axe_light = {
	default_target = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2,
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.225,
			impact = 0.125
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.4,
			2.5,
			1,
			0.6 --0.75
		},
		impact = {
			0.75,
			0.5,
			1,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			0.8 --1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	ignore_stagger_reduction = false,
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_linesman",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.6 --0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.dual_axe_bopp = {
	armor_modifier = {
		attack = {
			1,
			0.4,
			2.5,
			1,
			0.6 --0.75
		},
		impact = {
			0.75,
			0.5,
			1,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			0.8 --1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2.5,
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.225,
			impact = 0.125
		}
	},
	ignore_stagger_reduction = false,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.6 --0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	}
}
DSDamageProfileTemplates.sword_shield_light_last = {
	armor_modifier = {
		attack = {
			1,
			0,
			2,
			1,
			1
		},
		impact = {
			1,
			0.3,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.35,
		impact = 0.2
	},
	default_target = {
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman_hs",
			power_distribution = {
				attack = 0.175,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 2,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.075
			}
		}
	}
}
DSDamageProfileTemplates.elf_oneH_sword_heavy_up = {
	armor_modifier = {
		attack = {
			1,
			0.9,
			2,
			1,
			1,
			0.9
		},
		impact = {
			1,
			1,
			1,
			1,
			1,
			0.5
		}
	},
	charge_value = "heavy_attack",
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.8,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.8,
			1,
			1,
			1,
			0.5
		}
	},
	cleave_distribution = {
		attack = 0.35,
		impact = 0.35
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "blunt_tank_uppercut",
		power_distribution = {
			attack = 0.05,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank_uppercut",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				impact = {
					1,
					1,
					0.5,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.3,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 2,
			attack_template = "blunt_tank_uppercut",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank_uppercut",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	shield_break = true
}
DSDamageProfileTemplates.elf_oneH_axe_flat = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_tank",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_tank",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.elf_oneH_axe_light_down = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.oneH_axe_diag = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.sienna_mace_light_smiter = {
	armor_modifier = {
		attack = {
			1.375, --1.25,
			0.715, --0.65,
			2.75, --2.5,
			1.1, --1,
			0.825, --0.75,
			0.66, --0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "blunt_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "blunt_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.sienna_mace_push_attack = {
	stagger_duration_modifier = 1.25,
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.25,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.25,
		impact = 0.6
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.15
		}
	},
	targets = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.175,
				impact = 0.25
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.25,
			1,
			1,
			1,
			0
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
}
DSDamageProfileTemplates.sienna_mace_light_diag = {
	stagger_duration_modifier = 1.25,
	charge_value = "light_attack",
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.25,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	cleave_distribution = {
		attack = 0.25,
		impact = 0.6
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.15
		}
	},
	targets = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.175,
				impact = 0.25
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.25,
			1,
			1,
			1,
			0
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
}
DSDamageProfileTemplates.dual_sword_mace_heavy = {
	armor_modifier = {
		attack = {
			0.9,
			0,
			1.5,
			1,
			0.75
		},
		impact = {
			0.9,
			0.5,
			1,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.275,
		impact = 0.275
	},
	default_target = {
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			attack_template = "heavy_slashing_linesman",
			power_distribution = {
				attack = 0.275,
				impact = 0.2
			},
			armor_modifier = {
				attack = {
					1,
					0.5,
					1.5,
					1,
					0.75
				},
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				}
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.2,
				impact = 0.125
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	melee_boost_override = 6
}
DSDamageProfileTemplates.halberd_heavy_left = {
	armor_modifier = {
		attack = {
			1.3,
			0.39,
			2.6,
			1.3,
			1.3
		},
		impact = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.4,
		impact = 0.4
	},
	default_target = {
		boost_curve_type = "linesman_curve",
		boost_curve_coefficient_headshot = 0.25,
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "linesman_curve",
			attack_template = "heavy_slashing_linesman",
			power_distribution = {
				attack = 0.325,
				impact = 0.25
			},
			armor_modifier = {
				attack = {
					1.3, --1,
					0.65, --0.5,
					1.95, --1.5,
					1.3, --1,
					0.975 --0.75
				},
				impact = {
					0.9, --1, --0.9,
					0.75, --1, --0.5,
					1,
					1,
					0.75
				}
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 1,
			attack_template = "heavy_slashing_linesman",
			power_distribution = {
				attack = 0.25,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.15,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.we_deus_01_dot_small = {
		is_dot = true,
		charge_value = "n/a",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				2,
				1,
				3,
				2,
				1,
				0.5
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0
			}
		},
		default_target = {
			damage_type = "burninating",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.2,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.07,
				impact = 0.05
			}
		},
		targets = {}
	}
DSDamageProfileTemplates.we_deus_01_dot_med = {
		is_dot = true,
		charge_value = "n/a",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				2,
				1,
				3,
				2,
				1,
				0.5
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0
			}
		},
		default_target = {
			damage_type = "burninating",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.2,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.07,
				impact = 0.05
			}
		},
		targets = {}
	}
DSDamageProfileTemplates.sienna_dagger_heavy_stab = {
	default_target = {
		dot_template_name = "burning_3W_dot",
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "ninja_curve",
		attack_template = "flame_blast",
		power_distribution = {
			attack = 0.275,
			impact = 0.125
		}
	},
	ignore_stagger_reduction = true,
	armor_modifier = {
		attack = {
			1,
			0.8,
			1.75,
			1,
			0.75
		},
		impact = {
			1,
			0.6,
			1,
			1,
			0.75
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	targets = {
		[2] = {
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	shield_break = true
}
DSDamageProfileTemplates.crowbill_light_stab_burn = {
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 0.75,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.1,
			impact = 0.075
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2.5,
			dot_template_name = "burning_3W_dot",
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "burning_stab_fencer",
			power_distribution = {
				attack = 0.2,
				impact = 0.2
			}
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.8,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			1.25,
			1,
			1,
			0.75
		}
	},
}
DSDamageProfileTemplates.crowbill_light_diag = {
	armor_modifier = {
		attack = {
			1,
			0.8,
			2,
			1,
			1,
			0.5
		},
		impact = {
			1,
			0.5,
			1,
			1,
			1,
			0.5
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			1,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 2,
		attack_template = "blunt_linesman",
		power_distribution = {
			attack = 0.175,
			impact = 0.1
		}
	},
	targets = {
		[2] = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.crowbill_light_flat = {
	armor_modifier = {
		attack = {
			1,
			0.8,
			2,
			1,
			1,
			0.5
		},
		impact = {
			1,
			0.5,
			1,
			1,
			1,
			0.5
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			1,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 2,
		attack_template = "blunt_tank",
		power_distribution = {
			attack = 0.175,
			impact = 0.1
		}
	},
	targets = {
		[2] = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.crowbill_light_smiter = {
	armor_modifier = {
		attack = {
			1,
			0.8,
			2,
			1,
			1,
			0.5
		},
		impact = {
			1,
			0.5,
			1,
			1,
			1,
			0.5
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			1,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 2,
		attack_template = "blunt_smiter",
		power_distribution = {
			attack = 0.175,
			impact = 0.1
		}
	},
	targets = {
		[2] = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.crowbill_heavy_flat = {
	armor_modifier = {
		attack = {
			0.8,
			0.9,
			2,
			1,
			1,
			0.9
		},
		impact = {
			1,
			1,
			1,
			1,
			1,
			0.5
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			1,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.25,
		impact = 0.2
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		[1] = {
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 2,
			attack_template = "slashing_smiter",
			power_distribution = {
				attack = 0.4,
				impact = 0.25
			}
		},
		[2] = {
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	shield_break = true
}
DSDamageProfileTemplates.crowbill_heavy_upper = {
	armor_modifier = {
		attack = {
			0.8,
			0.9,
			2,
			1,
			1,
			0.9
		},
		impact = {
			1,
			1,
			1,
			1,
			1,
			0.5
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.8,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.8,
			1,
			1,
			1,
			0.5
		}
	},
	charge_value = "heavy_attack",
	cleave_distribution = {
		attack = 0.25,
		impact = 0.2
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		[1] = {
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 2,
			attack_template = "slashing_smiter",
			power_distribution = {
				attack = 0.4,
				impact = 0.25
			}
		},
		[2] = {
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	shield_break = true
}
DSDamageProfileTemplates.firesword_stablight = {
	armor_modifier = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.25,
			1,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "smiter_curve",
		dot_template_name = "burning_3W_dot",
		boost_curve_coefficient = 0.75,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.1,
			impact = 0.075
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			dot_template_name = "burning_3W_dot",
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1.5,
					1,
					0.75
				},
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.2,
				impact = 0.1
			}
		}
	},
}
DSDamageProfileTemplates.firesword_slashlights = {
	armor_modifier = {
		attack = {
			1,
			0,
			2,
			1,
			1
		},
		impact = {
			1,
			0.3,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.35,
		impact = 0.2
	},
	default_target = {
		boost_curve_type = "linesman_curve",
		dot_template_name = "burning_1W_dot",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 1.5,
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman_hs",
			power_distribution = {
				attack = 0.175,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			dot_template_name = "burning_1W_dot",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.075
			}
		}
	},
}
DSDamageProfileTemplates.oneH_axe_bopp = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
		},
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		[1] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			power_distribution = {
			attack = 0.25,
			impact = 0.175
			}
		},
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
	cleave_distribution = {
		attack = 0.2,
		impact = 0.2
	},
	charge_value = "light_attack",
	ignore_stagger_reduction = true,
}
DSDamageProfileTemplates.elf_oneH_axe_diag = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_linesman",
		armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
		},
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		[1] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
			attack = 0.25,
			impact = 0.175
			}
		},
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_linesman",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
	cleave_distribution = {
		attack = 0.2,
		impact = 0.2
	},
	charge_value = "light_attack",
	ignore_stagger_reduction = true,
}
DSDamageProfileTemplates.oneH_axe_flat = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_tank",
		armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
		},
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		[1] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_tank",
			power_distribution = {
			attack = 0.25,
			impact = 0.175
			}
		},
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_tank",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
	cleave_distribution = {
		attack = 0.2,
		impact = 0.2
	},
	charge_value = "light_attack",
	ignore_stagger_reduction = true,
}
DSDamageProfileTemplates.sienna_dagger_poke = {
	armor_modifier = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.1,
			0.5,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 3,
		attack_template = "light_stab_smiter",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		{
			--dot_template_name = "burning_3W_dot",
			boost_curve_coefficient_headshot = 3,
			boost_curve_type = "ninja_curve",
			attack_template = "light_stab_smiter",
			power_distribution = {
				attack = 0.12,
				impact = 0.08
			}
		}
	},
}
DSDamageProfileTemplates.sienna_dagger_poke_burn = {
	armor_modifier = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.1,
			0.5,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 3,
		attack_template = "light_stab_smiter",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		{
			dot_template_name = "burning_3W_dot",
			boost_curve_coefficient_headshot = 3,
			boost_curve_type = "ninja_curve",
			attack_template = "light_stab_smiter",
			power_distribution = {
				attack = 0.12,
				impact = 0.08
			}
		}
	},
}
DSDamageProfileTemplates.breton_SnS_right = {
	armor_modifier = {
		attack = {
			1.25,
			0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
	shield_break = true
}
DSDamageProfileTemplates.oneH_sword_light_last_new = {
	default_target = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2,
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	targets = {
		[2] = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
	armor_modifier = {
		attack = {
			1.25,
			0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	ignore_stagger_reduction = true,
	shield_break = true
}
DSDamageProfileTemplates.oneH_hammer_push_attack_new = {
	stagger_duration_modifier = 1.25,
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.25,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.2,
		impact = 0.6
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.15
		}
	},
	targets = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.175,
				impact = 0.25
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.25,
			1,
			1,
			1,
			0
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
}
DSDamageProfileTemplates.oneH_hammer_light_new = {
	stagger_duration_modifier = 1.25,
	charge_value = "light_attack",
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.25,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	cleave_distribution = {
		attack = 0.2,
		impact = 0.6
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.15
		}
	},
	targets = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.175,
				impact = 0.25
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.25,
			1,
			1,
			1,
			0
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
}
DSDamageProfileTemplates.saltz_flail_bopp = {
	cleave_distribution = {
		attack = 0.3,
		impact = 0.8
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.075
		}
	},
	armor_modifier = {
		attack = {
			1,
			0,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	stagger_duration_modifier = 1.5,
	charge_value = "light_attack",
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.6,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	targets = {
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.275,
				impact = 0.125
			},
			armor_modifier = {
				attack = {
					1,
					0.5,
					2,
					1,
					0.75
				},
				impact = {
					1.5,
					1,
					1,
					1,
					0.75
				}
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.1
			}
		}
	},
}
DSDamageProfileTemplates.saltz_flail_downward_swing = {
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "blunt_smiter",
		armor_modifier = {
			attack = {
				1.25,
				0.8,
				2.5,
				1,
				0.75
			},
			impact = {
				1,
				0.8,
				1,
				1,
				0.75
			}
		},
		power_distribution = {
			attack = 0.3,
			impact = 0.175
		}
	},
	armor_modifier = {
		attack = {
			1,
			0.8,
			1.75,
			1,
			0.75
		},
		impact = {
			1,
			0.6,
			1,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.8,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.8,
			1,
			1,
			1,
			0.5
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "blunt_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
local carbine_dropoff_ranges = {
	dropoff_start = 15,
	dropoff_end = 30
}
DSDamageProfileTemplates.we_deus_01_small = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		require_damage_for_dot = true,
		ignore_stagger_reduction = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			},
			impact = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			},
			impact = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.15
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			dot_template_name = "we_deus_01_dot_small",
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "arrow_carbine",
			power_distribution_near = {
				attack = 0.41,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.3,
				impact = 0.25
			},
			range_dropoff_settings = carbine_dropoff_ranges
		},
		targets = {}
	}
DSDamageProfileTemplates.we_deus_01_med = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		require_damage_for_dot = true,
		ignore_stagger_reduction = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			},
			impact = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			},
			impact = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.15
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			dot_template_name = "we_deus_01_dot_med",
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "arrow_carbine",
			power_distribution_near = {
				attack = 0.41,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.3,
				impact = 0.25
			},
			range_dropoff_settings = carbine_dropoff_ranges
		},
		targets = {}
	}
DSDamageProfileTemplates.elf_oneH_axe_push_attack_shieldbreak = {
	armor_modifier = {
		attack = {
			1.4375, --1.25,
			0.715, --0.65,
			2.5,
			1,
			0.75,
			0.6
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.075,
		impact = 0.075
	},
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.175
		}
	},
	ignore_stagger_reduction = true,
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
	shield_break = true
}
DSDamageProfileTemplates.firesword_heavy2_new = {
	armor_modifier = {
		attack = {
			1,
			0.5,
			1.5,
			1,
			1.5
		},
		impact = {
			1,
			1,
			1.5,
			1,
			1.5
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1.5,
			1,
			1.5
		},
		impact_armor_power_modifer = {
			1,
			1,
			1.5,
			1,
			1.5
		}
	},
	charge_value = "heavy_attack",
	--[[cleave_distribution = {
		attack = 0.6,
		impact = 0.65
	},]]
	cleave_distribution = {
		attack = 0.35,
		impact = 0.35
	},
	default_target = {
		stagger_duration_modifier = 1.5,
		dot_template_name = "burning_1W_dot",
		boost_curve_type = "tank_curve",
		boost_curve_coefficient = 0.3,
		attack_template = "burning_tank",
		power_distribution = {
			attack = 0.075,
			impact = 0.15
		}
	},
	targets = {
		{
			dot_template_name = "burning_3W_dot",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.3,
			attack_template = "burning_tank",
			power_distribution = {
				attack = 0.2,
				impact = 0.3
			}
		},
		{
			dot_template_name = "burning_3W_dot",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.3,
			attack_template = "burning_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.2
			}
		}
	},
}
DSDamageProfileTemplates.crowbill_push_attack_new = {
	armor_modifier = {
		attack = {
			0.9,
			0,
			1.5,
			1,
			0.75
		},
		impact = {
			0.9,
			0.25,
			1,
			1,
			0.75
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.2,
		impact = 0.2
	},
	default_target = {
		dot_template_name = "burning_1W_dot",
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets = {
		{
			dot_template_name = "burning_1W_dot",
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.195,
				impact = 0.125
			},
			armor_modifier = {
				attack = {
					1,
					0.25,
					1.5,
					1,
					0.75,
					0
				},
				impact = {
					0.9,
					0.25,
					1,
					1,
					0.75
				}
			}
		},
		--[[{
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.1
			}
		},]]
		{
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "linesman_curve",
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.075,
				impact = 0.08
			}
		}
	},
}
DSDamageProfileTemplates.onehanded_axe_push_attack_new = {
	armor_modifier = {
		attack = {
			1,
			0.3,
			2,
			1,
			1
		},
		impact = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	charge_value = "light_attack",
	cleave_distribution = {
		attack = 0.4,
		impact = 0.3
	},
	default_target = {
		boost_curve_type = "linesman_curve",
		boost_curve_coefficient_headshot = 0.25,
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.275,
				impact = 0.25
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 2,
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.2,
				impact = 0.125
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 2,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.15,
				impact = 0.1
			}
		}
	},
}
local shotgun_dropoff_ranges = {
	dropoff_start = 8,
	dropoff_end = 15
}
DSDamageProfileTemplates.fan_the_hammer = {
		charge_value = "instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1.4,
				1,
				1,
				0.75,
				0.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				1.2,
				0.75,
				1,
				0.75,
				0
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				1,
				0.25,
				1,
				0.75,
				0
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			headshot_boost_boss = 0.5,
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "shot_sniper",
			power_distribution_near = {
				attack = 1,
				impact = 0.5
			},
			power_distribution_far = {
				attack = 0.5,
				impact = 0.5
			},
			range_dropoff_settings = shotgun_dropoff_ranges
		},
		targets = {}
	}
--dmg profile templates to NetworkLookup
for key, _ in pairs(DSDamageProfileTemplates) do
    i = #NetworkLookup.damage_profiles + 1
    NetworkLookup.damage_profiles[i] = key
    NetworkLookup.damage_profiles[key] = i
end
--Merge the tables together
table.merge_recursive(DamageProfileTemplates, DSDamageProfileTemplates)

for buff_name, _ in pairs(BuffTemplates) do
    local indexed = table.contains(NetworkLookup.buff_templates, buff_name)
    if not indexed then
        local index = #NetworkLookup.buff_templates + 1
        NetworkLookup.buff_templates[index] = buff_name
        NetworkLookup.buff_templates[buff_name] = index
    end
end

mod:hook(_G, "Localize", function(func, key, ...)
  if key == "traits_ranged_reload_on_block" then
    return "Multitasker"
  end
  if key == "description_traits_ranged_reload_on_block" then
	return "Blocking an attack reloads ranged weapons. This effect can only trigger every 5 seconds."
  end
  if key == "traits_ranged_explosion_radius" then
    return "Extra Powder"
  end
  if key == "description_traits_ranged_explosion_radius" then
	return "Increases Trollhammer Torpedo explosion radius by 50%%."
  end
   return func(key, ...)
end)
mod:echo("Applying the Master Rune of Flight...")
-- Your mod code goes here.
-- https://vmf-docs.verminti.de
