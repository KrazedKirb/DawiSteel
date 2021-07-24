local mod = get_mod("DawiSteel")
--------------------------------[THROWING AXES]------------------------------
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
--------------------------------[Moonfire Bow]------------------------------
-----EXPERIMENTAL MOONBOW
Weapons.we_deus_01_template_1.actions.action_one.default.impact_data.damage_profile = "we_deus_01_small"
Weapons.we_deus_01_template_1.actions.action_one.default.drain_amount = 4.1
Weapons.we_deus_01_template_1.actions.action_one.shoot_special_charged.impact_data.damage_profile = "we_deus_01_med"
DamageProfileTemplates.we_deus_01_small_explosion.default_target.dot_template_name = "we_deus_01_dot_med"
-------------------------------1H AXE PUSH ATTACK---------------------------------
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "onehanded_axe_light_last_new"
--Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right" --"attack_swing_up_left"
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_window_start = 0.33 --0.15
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.use_precision_sweep = false
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.width_mod = 25
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_window_end = 0.47 --0.3
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.total_time = 1.5
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.dedicated_target_range = 2
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.range_mod = 1.25
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.buff_data.external_multiplier = 0.9
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.buff_data.end_time = 0.5
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.45
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0
Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.anim_time_scale = 0.9 * 0.95

Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_profile = "onehanded_axe_light_last_bardin_new"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_right"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.anim_event = "attack_swing_up_left"
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_window_start = 0.15
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.use_precision_sweep = false
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.width_mod = 25
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.damage_window_end = 0.3
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.total_time = 1.5
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.dedicated_target_range = 2
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.range_mod = 1.25
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.buff_data.external_multiplier = 0.9
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.buff_data.end_time = 0.5
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.allowed_chain_actions[1].start_time = 0.45
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_bopp.anim_time_scale = 0.9 * 0.95

----EXPERIMENTAL LIGHT CHANGES
Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.damage_profile = "onehanded_axe_light_last_new"

Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "onehanded_axe_light_last_new"
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
Weapons.one_handed_sword_shield_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_slashing_linesman_executioner"

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

-------------------------------FLAMESTORM-----------------------------------------
Weapons.staff_flamethrower_template.actions.action_one.default.spray_range = 16
Weapons.staff_flamethrower_template.actions.action_two.default.charge_time = 2
------------------------MASTERWORK PISTOL-----------------------------------------
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
------------------------ELGI AXE-----------------------------------------
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.damage_profile = "heavy_slashing_linesman_executioner"
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
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.additional_critical_strike_chance = 0.1
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.15,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			}
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1
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


Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.allowed_chain_actions[1].sub_action = "default_last"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.allowed_chain_actions[1].sub_action = "default_left"
Weapons.we_one_hand_axe_template.actions.action_one.default_left.allowed_chain_actions[1].sub_action = "light_attack_last" --
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_last.allowed_chain_actions[1].sub_action = "default_right"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions[1].sub_action = "default"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions[1].start_time = 0.675
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right.allowed_chain_actions[2].start_time = 0.675
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.allowed_chain_actions[1].sub_action = "default_left"
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.allowed_chain_actions[1].start_time = 0.6
Weapons.we_one_hand_axe_template.actions.action_one.heavy_attack_right.allowed_chain_actions[2].start_time = 0.6
--DMG PROFILE CHANGES
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_left.damage_profile = "onehanded_axe_light_last_new"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.damage_profile = "onehanded_axe_light_last_new"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.damage_profile = "onehanded_axe_push_attack_shieldbreak"
--ANIMATION CHANGES
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_bopp.anim_event = "attack_swing_down_right"
Weapons.we_one_hand_axe_template.actions.action_one.light_attack_right_last.anim_event = "attack_swing_right_diagonal"
------------------------ELGI GREATSWORD-----------------------------------------
DamageProfileTemplates.heavy_slashing_smiter_stab.shield_break = true
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.damage_profile = "heavy_slashing_linesman"
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_second.slide_armour_hit = true
Weapons.two_handed_swords_wood_elf_template.actions.action_one.heavy_attack_down_first.buff_data[2].external_multiplier = 1.25

------------------------SALTZ FLAIL-----------------------------------------
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.damage_profile = "saltz_flail_bopp"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.hit_mass_count = nil
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_bopp.ignore_armour_hit = true
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_last.damage_profile = "saltz_flail_downward_swing"
Weapons.one_handed_flail_template_1.actions.action_one.light_attack_down.damage_profile = "saltz_flail_downward_swing"
------------------------FIRE SWORD-----------------------------------------
--DamageProfileTemplates.medium_burning_tank.cleave_distribution = "firesword_heavy2_new" 
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.damage_profile = "firesword_heavy2_new"
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
Weapons.flaming_sword_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
--------------------------EMPIRE LONGBOW-----------------------------------------
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
--------------------------JAVELIN -----------------------------------------
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
--------------------------SIENNA MACE-----------------------------------------

Weapons.one_handed_hammer_wizard_template_1.actions.action_one.default.allowed_chain_actions[1].sub_action = "light_attack_left"

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
Weapons.one_handed_hammer_wizard_template_1.actions.action_one.heavy_attack_left.allowed_chain_actions[2].start_time = 0.65
--------------------------SIENNA DAGGER-----------------------------------------
Weapons.one_handed_daggers_template_1.actions.action_one.light_attack_stab.damage_profile = "light_fencer_stab"
--buff templates
BuffTemplates.we_deus_01_dot_small = {
		buffs = {
			{
				duration = 1.6,
				name = "we_deus_01_dot_small",
				end_flow_event = "smoke",
				start_flow_event = "burn",
				death_flow_event = "burn_death",
				remove_buff_func = "remove_dot_damage",
				apply_buff_func = "start_dot_damage",
				perk = "burning",
				time_between_dot_damages = 0.75,
				damage_type = "burninating",
				damage_profile = "we_deus_01_dot",
				update_func = "apply_dot_damage"
			}
		}
	}
BuffTemplates.we_deus_01_dot_med = {
		buffs = {
			{
				duration = 3.1,
				name = "we_deus_01_dot_med",
				end_flow_event = "smoke",
				start_flow_event = "burn",
				death_flow_event = "burn_death",
				remove_buff_func = "remove_dot_damage",
				apply_buff_func = "start_dot_damage",
				perk = "burning",
				time_between_dot_damages = 0.75,
				damage_type = "burninating",
				damage_profile = "we_deus_01_dot",
				update_func = "apply_dot_damage"
			}
		}
	}
--Create a table for the new templates
DSDamageProfileTemplates = {}
--new templates
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
DSDamageProfileTemplates.onehanded_axe_push_attack_shieldbreak = {
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
DSDamageProfileTemplates.onehanded_axe_light_last_bardin_new = {
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
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		power_distribution = {
				attack = 0.075,
				impact = 0.075
		}
	},
	ignore_stagger_reduction = true,
	cleave_distribution = {
		attack = 0.2,
		impact = 0.3
	},
	targets = {
		{
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			power_distribution = {
				attack = 0.25,
				impact = 0.175
			}
		},
		{
			boost_curve_type = "linesman_curve",
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
				attack = 0.125,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.075,
				impact = 0.08
			}
		}
	},
}
DSDamageProfileTemplates.onehanded_axe_light_last_new = {
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
	default_target = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		power_distribution = {
				attack = 0.075,
				impact = 0.075
		}
	},
	ignore_stagger_reduction = true,
	cleave_distribution = {
		attack = 0.2,
		impact = 0.2
	},
	targets = {
		{
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			power_distribution = {
				attack = 0.25,
				impact = 0.175
			}
		},
		{
			boost_curve_type = "linesman_curve",
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
				attack = 0.125,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.075,
				impact = 0.08
			}
		}
	},
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
	cleave_distribution = {
		attack = 0.6,
		impact = 0.65
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
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.3,
			attack_template = "burning_tank",
			power_distribution = {
				attack = 0.2,
				impact = 0.3
			}
		},
		{
			dot_template_name = "burning_1W_dot",
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
		attack = 0.25,
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
		{
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.1
			}
		},
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
DotTypeLookup.we_deus_01_dot_small = "burning_dot"
DotTypeLookup.we_deus_01_dot_med = "burning_dot"
mod:echo("Applying the Master Rune of Flight...")
-- Your mod code goes here.
-- https://vmf-docs.verminti.de
