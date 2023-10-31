
if (feature('Remove feeding_trough')) {
    removeItem('feeding_trough')
}
if (feature('Pipe recipes')) {
    replaceShaped('quark:pipe', ['i', 'g', 'i'], { i: '#forge:ingots', g: '#forge:glass' })
    addShaped('8x quark:pipe', ['p', 'g', 'p'], { p: '#forge:plastic', g: '#forge:glass' })

}
if (feature('Remove quark wood chests')) {
    removeItems([
        'quark:mushroom_trapped_chest',
        'quark:dark_oak_trapped_chest',
        'quark:acacia_trapped_chest',
        'quark:jungle_trapped_chest',
        'quark:birch_trapped_chest',
        'quark:spruce_trapped_chest',
        'quark:dark_oak_chest',
        'quark:acacia_chest',
        'quark:jungle_chest',
        'quark:birch_chest',
        'quark:spruce_chest',
        'quark:oak_chest',
        'quark:oak_trapped_chest'
    ])
}
if (feature('Remove quark runes')) {
    removeItems([
        'quark:white_rune',
        'quark:orange_rune',
        'quark:magenta_rune',
        'quark:light_blue_rune',
        'quark:yellow_rune',
        'quark:lime_rune',
        'quark:pink_rune',
        'quark:gray_rune',
        'quark:light_gray_rune',
        'quark:cyan_rune',
        'quark:purple_rune',
        'quark:blue_rune',
        'quark:brown_rune',
        'quark:green_rune',
        'quark:red_rune',
        'quark:black_rune',
        'quark:rainbow_rune',
        'quark:blank_rune'
    ])
}
if (feature('Remove glass shards')) {
    removeItems([
        'quark:clear_shard',
        'quark:dirty_shard',
        'quark:white_shard',
        'quark:orange_shard',
        'quark:magenta_shard',
        'quark:light_blue_shard',
        'quark:yellow_shard',
        'quark:lime_shard',
        'quark:pink_shard',
        'quark:gray_shard',
        'quark:light_gray_shard',
        'quark:cyan_shard',
        'quark:purple_shard',
        'quark:blue_shard',
        'quark:brown_shard',
        'quark:green_shard',
        'quark:red_shard',
        'quark:black_shard'
    ])
}
if (feature('Remove quark music discs')) {
    removeItems([
        'quark:music_disc_drips',
        'quark:music_disc_ocean',
        'quark:music_disc_rain',
        'quark:music_disc_wind',
        'quark:music_disc_fire',
        'quark:music_disc_clock',
        'quark:music_disc_crickets',
        'quark:music_disc_chatter'
    ])
}
if (feature('Remove cactus paste')) {
    removeAndReplace('quark:cactus_paste', 'green_dye')
    // craftingTable.removeByName("crafttweaker:autogenerated/quark.building/crafting/green_dye");    //TODO

}
if (feature('Remove quark chute')) {
    removeItem('quark:chute')
}
if (feature('XP from xp bottle in furnace')) {
    addSmelting('glass_bottle','experience_bottle',6)
}