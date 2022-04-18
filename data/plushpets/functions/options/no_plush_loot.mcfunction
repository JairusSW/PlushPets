# toggle no plush loot

#cancel command feedback
function #sourcecraft:cancel_command_feedback

#determine 
execute unless score #plushpets.option.no_plush_loot sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 1
execute if score #plushpets.option.no_plush_loot sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 0

#set
scoreboard players operation #plushpets.option.no_plush_loot sourcecraft.data = #option sourcecraft.temp

#notify
execute if score #plushpets.option.no_plush_loot sourcecraft.data matches 1 run tellraw @s [{"text":"No Plush Loot has been ","color":"gray"},{"text":"enabled","color": "green"},{"text": ".","color": "gray"}]
execute if score #plushpets.option.no_plush_loot sourcecraft.data matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score #plushpets.option.no_plush_loot sourcecraft.data matches 0 run tellraw @s [{"text":"No Plush Loot has been ","color":"gray"},{"text":"disabled","color": "red"},{"text": ".","color": "gray"}]
execute if score #plushpets.option.no_plush_loot sourcecraft.data matches 0 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.5