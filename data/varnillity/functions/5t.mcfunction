# Give every armorstand an arms
execute as @e[nbt={ShowArms:0b}] run data merge entity @s {ShowArms:1b}

# Stop striders from following warped fungus on a stick that has "noStrider:1b" tag
scoreboard players reset @a isStriderNearby
execute as @e[type=strider,nbt={OnGround:1b}] at @s store result score @s isStriderNearby run execute if entity @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{noStrider:1b}}},distance=..10]
execute as @e[scores={isStriderNearby=1..},nbt=!{NoAI:1b}] run data merge entity @s {NoAI:1b}
execute as @e[scores={isStriderNearby=0},nbt={NoAI:1b}] run data merge entity @s {NoAI:0b}

# Bedrock breaker
execute as @e[type=item,nbt={Item:{id:"minecraft:dirt"},OnGround:1b}] at @s if block ~ ~-1 ~ bedrock run function varnillity:bedrock_breaker/0

# Testing with Demon Tomes
execute at @a as @e[type=!#varnillity:not_entity,distance=..5] at @s run function varnillity:demon_tomes/0

# Callback
schedule function varnillity:5t 5t