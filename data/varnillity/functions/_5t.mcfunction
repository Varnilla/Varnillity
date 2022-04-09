# Give every armorstand an arms
execute as @e[nbt={ShowArms:0b}] run data merge entity @s {ShowArms:1b}

# Callback
schedule function varnillity:_5t 5t