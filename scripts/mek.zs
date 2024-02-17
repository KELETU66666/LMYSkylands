//CARBON碳;TIN锡;DIAMOND钻石;REDSTONE红石;FUNGI真菌;BIO生物燃料;OBSIDIAN黑曜石 


//灌注机
mods.mekanism.infuser.removeRecipe(<mekanism:reinforcedalloy>);
mods.mekanism.infuser.removeRecipe(<mekanism:atomicalloy>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <minecraft:iron_ingot>, <extrautils2:ingredients:17>);
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <ore:oreIron>, <astralsorcery:blockcustomore:1>);
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <ic2:resource:12>, <mekanism:basicblock:8>);
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <minecraft:redstone>, <fluxnetworks:flux>);
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <contenttweaker:lmychongnengqianghuahejin>, <mekanism:atomicalloy>);
mods.mekanism.infuser.addRecipe("BIO", 10, <minecraft:iron_ingot>, <extrautils2:ingredients:12>);
mods.mekanism.infuser.addRecipe("BIO", 10, <minecraft:gold_ingot>, <extrautils2:ingredients:11>);
mods.mekanism.infuser.addRecipe("BIO", 10, <minecraft:apple>, <extrautils2:magicapple>);
mods.mekanism.infuser.addRecipe("BIO", 10, <minecraft:deadbush>, <tconstruct:slime_sapling>);
mods.mekanism.infuser.addRecipe("BIO", 10, <minecraft:slime>, <tconstruct:slime_dirt>);
mods.mekanism.infuser.addRecipe("BIO", 10, <minecraft:clay_ball>, <deepmoblearning:polymer_clay> * 8);
mods.mekanism.infuser.addRecipe("FUNGI", 10, <minecraft:deadbush>, <tconstruct:slime_sapling:1>);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <minecraft:deadbush>, <tconstruct:slime_sapling:2>);
mods.mekanism.infuser.addRecipe("TIN", 10, <minecraft:diamond_ore>, <astralsorcery:blockcustomore>);
mods.mekanism.infuser.addRecipe("TIN", 10, <minecraft:stone>, <astralsorcery:blockmarble>);
mods.mekanism.infuser.addRecipe("TIN", 10, <enderio:item_material:20>, <enderio:item_material>);
mods.mekanism.infuser.addRecipe("TIN", 10, <ic2:resource:12>, <thermalexpansion:frame>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, <minecraft:sand>, <astralsorcery:blockcustomsandore>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, <minecraft:iron_ingot>, <harvestcraft:minerstewitem>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, <contenttweaker:lmychongnengfujihejin>, <mekanism:reinforcedalloy>);
mods.mekanism.infuser.addRecipe("DIAMOND", 100, <extendedcrafting:table_advanced>, <extendedcrafting:table_elite>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, <tconevo:material>, <extendedcrafting:material:24>);
mods.mekanism.infuser.addRecipe("DIAMOND", 6000, <minecraft:book>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 53 as short}]}));
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <botania:manaresource:1>, <extrautils2:ingredients>);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <minecraft:glowstone_dust>, <extendedcrafting:material:7>);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <ore:ingotSteel>, <mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <minecraft:dye:15>, <extrautils2:ingredients:10>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <minecraft:redstone>, <deepmoblearning:soot_covered_redstone>);



//加压反应室
mods.mekanism.reaction.addRecipe(<thermalfoundation:material:771>, <liquid:water> * 10, <gas:oxygen> * 10, <thermalfoundation:material:771>, <gas:sulfuricAcid> * 100, 500, 200);
mods.mekanism.reaction.addRecipe(<contenttweaker:lmymolilvbaoshiban>, <liquid:redstone> * 1000, <gas:ethene> * 100, <contenttweaker:lmymolilvbaoshidianluban>, <gas:ethene> * 10, 500, 200);
mods.mekanism.reaction.addRecipe(<contenttweaker:lmygaiyalvbaoshiban>, <liquid:redstone> * 1000, <gas:ethene> * 100, <contenttweaker:lmygaiyalvbaoshidianluban>, <gas:ethene> * 10, 500, 200);
mods.mekanism.reaction.addRecipe(<extendedcrafting:table_elite>, <liquid:starmetal> * 1440, <gas:brine> * 30, <extendedcrafting:crafting_core>, <gas:hydrogen> * 10, 500, 200);
mods.mekanism.reaction.addRecipe(<minecraft:diamond_block>, <liquid:liquidfusionfuel> * 100, <gas:fusionfuel> * 100, <contenttweaker:unstable_diamond_block>, <gas:hydrogen> * 10, 500, 200);



//融合机
mods.mekanism.combiner.addRecipe(<minecraft:cake>, <minecraft:ender_eye>, <exnihilocreatio:block_end_cake>);


//富集
mods.mekanism.enrichment.addRecipe(<astralsorcery:blockcustomsandore>, <astralsorcery:itemcraftingcomponent> * 8);
mods.mekanism.enrichment.addRecipe(<mekanism:biofuel>, <contenttweaker:compressed_biofuel>);


//添加灌注种类
mods.mekatweaker.InfuserType.addTypeObject(<contenttweaker:compressed_biofuel>, "BIO", 160);