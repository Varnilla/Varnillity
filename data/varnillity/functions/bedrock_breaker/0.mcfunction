# as SELF at SELF
scoreboard players add @s bedrockBreakerTimer 1
playsound block.note_block.snare ambient @a ~ ~ ~
particle smoke ~ ~.4 ~ 0.1 0.1 0.1 0.1 3 force
execute if entity @s[scores={bedrockBreakerTimer=10}] run function varnillity:bedrock_breaker/1