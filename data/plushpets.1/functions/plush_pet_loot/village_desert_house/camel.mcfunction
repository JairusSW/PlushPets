# camel plush

#random chance
function #sourcecraft:generate_random_number

#place plush
execute unless score #plushpets.generated_loot sourcecraft.temp matches 1.. if score #RNG sourcecraft.num matches 1..15 run loot insert ~ ~ ~ loot plushpets.1:plush/camel
execute unless score #plushpets.generated_loot sourcecraft.temp matches 1.. if score #RNG sourcecraft.num matches 1..15 run scoreboard players set #plushpets.generated_loot sourcecraft.temp 1