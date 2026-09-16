$item modify entity @s weapon.mainhand { \
    "type": "minecraft:sequence", \
    "functions": [ \
        { \
            "type": "minecraft:set_lore", \
            "mode": "replace_section", \
            "lore": [ \
                ["§r§8 Previous notes on ", $(name), "§r§8: "] \
            ], \
            "offset": 5, \
        }, \
        { \
            "type": "minecraft:set_lore", \
            "mode": "replace_section", \
            "lore": [$(description)], \
            "offset": 7, \
        } \
    ] \
}