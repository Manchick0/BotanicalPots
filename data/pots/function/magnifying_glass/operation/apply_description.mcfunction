$item modify entity @s weapon.mainhand [{ \
    "function": "minecraft:sequence", \
    "functions": [ \
        { \
            function: "minecraft:set_lore", \
            mode: "replace_section", \
            lore: [ \
                ["§r§8 Previous notes on ", $(name), "§r§8: "] \
            ], \
            offset: 5, \
        }, \
        { \
            function: "minecraft:set_lore", \
            mode: "replace_section", \
            lore: [$(description)], \
            offset: 7, \
        } \
    ] \
}]