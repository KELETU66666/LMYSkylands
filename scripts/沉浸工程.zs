


mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>.withTag({graphDmg: 48000}));

//炼油厂
mods.immersiveengineering.Refinery.addRecipe(<liquid:refined_fuel> * 3000, <liquid:ethanol> * 1000, <liquid:fluidedmana> * 1000, 2048);


//电弧炉
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium>*32, <minecraft:redstone>, null, 200, 100, [<ore:ingotGold>,<ore:ingotIron>], "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:stone_decoration:8>, <appliedenergistics2:paint_ball:13> * 4, null, 200, 100, [<extrautils2:decorativeglass>, <ic2:misc_resource:4> * 4], "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(<harvestcraft:minerstewitem>, <minecraft:rotten_flesh>, null, 20, 100, [<minecraft:redstone>, <minecraft:dye:4>, <minecraft:diamond>, <minecraft:coal>], "Purifying");
//高炉
mods.immersiveengineering.BlastFurnace.addRecipe(<modularmachinery:itemmodularium>,<advanced_solar_panels:crafting:3>, 4000, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addFuel(<minecraft:blaze_rod>,4800);