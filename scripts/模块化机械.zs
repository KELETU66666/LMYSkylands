#ikwid

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.IMachineController;
import crafttweaker.item.IItemStack;




val torcherino  = <torcherino:blocktorcherino>;
val torcherinoModifier  = RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.45, 1, false).build();

//--------------------------------------高级高炉--------------------------------------
RecipeBuilder.newBuilder("钢锭1", "gaoji_gaolu", 40)
.addItemInputs([
    <minecraft:iron_ingot> * 1,
    <minecraft:coal> * 1,
])
.addItemOutput(<ore:ingotSteel> * 1)
.build();

RecipeBuilder.newBuilder("黑铁锭1", "gaoji_gaolu", 40)
.addItemInputs([
    <ore:ingotSteel> * 1,
    <immersiveengineering:material:6> * 1,
])
.addItemOutput(<extendedcrafting:material> * 1)
.build();	

RecipeBuilder.newBuilder("模块化合金锭1", "gaoji_gaolu", 40)
.addItemInputs([
    <advanced_solar_panels:crafting:3> * 1,
])
.addItemOutput(<modularmachinery:itemmodularium> * 1)
.build();	
//-------------------------------------高级高炉--------------------------------------
//--------------------------------------高级焦炉--------------------------------------
RecipeBuilder.newBuilder("焦煤1", "gaoji_jiaolu", 40)
.addItemInputs([
    <ore:coal>,
])
.addItemOutput(<immersiveengineering:material:6>)
.build();

RecipeBuilder.newBuilder("焦煤块1", "gaoji_jiaolu", 200)
.addItemInputs([
    <minecraft:coal_block>,
])
.addItemOutput(<immersiveengineering:stone_decoration:3>)
.build();
//--------------------------------------高级焦炉--------------------------------------
//-------------------------------------究极高炉--------------------------------------
RecipeBuilder.newBuilder("钢锭2", "jiuji_gaolu", 1)
.addItemInputs([
    <minecraft:iron_ingot> * 1,
])
.addItemOutput(<ore:ingotSteel> * 1)
.build();

RecipeBuilder.newBuilder("黑铁锭2", "jiuji_gaolu", 1)
.addItemInputs([
    <ore:ingotSteel> * 1,
])
.addItemOutput(<extendedcrafting:material> * 1)
.build();

RecipeBuilder.newBuilder("模块化合金锭2", "jiuji_gaolu", 1)
.addItemInputs([
    <advanced_solar_panels:crafting:3> * 1,
])
.addItemOutput(<modularmachinery:itemmodularium> * 1)
.build();
//-------------------------------------究极高炉---------------------------------------

//-------------------------------------花朵制造机---------------------------------------
RecipeBuilder.newBuilder("白雏菊1", "huaduo", 1)
.addItemInputs([
    <botania:flower> * 1,
	<botania:petal> * 8,
])
.addItemOutput(<botania:specialflower>.withTag({type: "puredaisy"}) * 1)
.build();

RecipeBuilder.newBuilder("热爆花1", "huaduo", 1)
.addItemInputs([
    <botania:specialflower>.withTag({type: "thermalily"}) * 1,
	<botania:rune:1> * 1,
	<botania:rune:13> * 1,
    <botania:manaresource:9> * 1,
])
.addItemOutput(<botania:specialflower>.withTag({type: "entropinnyum"}) * 1)
.build();

RecipeBuilder.newBuilder("火红莲9", "huaduo", 1)
.addItemInputs([
    <appliedenergistics2:crystal_seed:1200>,
	<botania:blazeblock>,
	<tconstruct:firewood:1> * 4,
])
.addItemOutput(<botania:specialflower>.withTag({type: "endoflame"}))
.build();
//-------------------------------------花朵制造机---------------------------------------
//-------------------------------------初级魔力制造机---------------------------------------
RecipeBuilder.newBuilder("火红莲1", "chuji_moli",200)
.addItemInput(<botania:specialflower>.withTag({type: "endoflame"})).setChance(0)
.addItemInput(<minecraft:coal>)
.addManaPerTickOutput(35)
.build();

RecipeBuilder.newBuilder("火红莲2", "chuji_moli",200)
.addItemInput(<botania:specialflower>.withTag({type: "endoflame"})).setChance(0)
.addItemInput(<minecraft:coal:1>)
.addManaPerTickOutput(35)
.build();

RecipeBuilder.newBuilder("火红莲12", "chuji_moli",200)
.addItemInput(<botania:specialflower>.withTag({type: "endoflame"})).setChance(0)
.addItemInput(<minecraft:blaze_rod>)
.addManaPerTickOutput(280)
.build();

RecipeBuilder.newBuilder("火红莲13", "chuji_moli",200)
.addItemInput(<botania:specialflower>.withTag({type: "endoflame"})).setChance(0)
.addItemInput(<immersiveengineering:stone_decoration:3>)
.addManaPerTickOutput(630)
.build();
//-------------------------------------初级魔力制造机---------------------------------------
//-------------------------------------固液混合挤压塑形机---------------------------------------
RecipeBuilder.newBuilder("石墨电极1", "guye_hunhe", 1)
.addItemInput(<immersiveengineering:material:19> * 4)
.addFluidInput(<liquid:refined_fuel> * 1000)
.addItemOutput(<immersiveengineering:graphite_electrode>)
.build();

RecipeBuilder.newBuilder("沉浸电路板1", "guye_hunhe", 1)
.addItemInput(<immersiveengineering:stone_decoration:8> * 4)
.addItemInput(<immersiveengineering:material:26> * 2)
.addFluidInput(<liquid:redstone> * 1000)
.addItemOutput(<immersiveengineering:material:27>)
.build();
//-------------------------------------固液混合挤压塑形机---------------------------------------
//-------------------------------------高级魔力制造机---------------------------------------
RecipeBuilder.newBuilder("热爆花3", "gaoji_moli",10, 11)
.addItemInput(<botania:specialflower>.withTag({type: "entropinnyum"})).setChance(0)
.addItemInput(<minecraft:tnt> * 4)
.addManaPerTickOutput(2600)
.build();

RecipeBuilder.newBuilder("热爆花2", "gaoji_moli",10, 1)
.addItemInput(<botania:specialflower>.withTag({type: "entropinnyum"})).setChance(0)
.addItemInput(<minecraft:tnt>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], Unbreakable: 1, display: {Lore: ["§4请不要放置_放置会刷新nbt!!!"]}})).setChance(0)
.addManaPerTickOutput(2600)
.build();

RecipeBuilder.newBuilder("全知瑾1", "gaoji_moli",10, 12)
.addItemInput(<botania:specialflower>.withTag({type: "omniviolet"})).setChance(0)
.addItemInput(<minecraft:book> * 4)
.addManaPerTickOutput(5200)
.build();

RecipeBuilder.newBuilder("全知瑾2", "gaoji_moli",10, 2)
.addItemInput(<botania:specialflower>.withTag({type: "omniviolet"})).setChance(0)
.addItemInput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 35 as short}]})).setChance(0)
.addManaPerTickOutput(5200)
.build();
//-------------------------------------高级魔力制造机---------------------------------------
//-------------------------------------白雏菊制造机---------------------------------------
RecipeBuilder.newBuilder("活石1", "baichuju", 1, 1)
.addItemInput(<minecraft:stone> * 8)
.addItemOutput(<botania:livingrock> * 8)
.build();

RecipeBuilder.newBuilder("活木1", "baichuju", 1, 2)
.addItemInput(<ore:logWood> * 8)
.addItemOutput(<botania:livingwood> * 8)
.build();

RecipeBuilder.newBuilder("冰1", "baichuju", 1, 9)
.addFluidInput(<liquid:water> * 1000).setChance(0)
.addItemOutput(<minecraft:ice> * 8)
.build();

RecipeBuilder.newBuilder("浮冰1", "baichuju", 1, 3)
.addItemInput(<minecraft:ice> * 8)
.addItemOutput(<minecraft:packed_ice> * 8)
.build();
//-------------------------------------白雏菊制造机---------------------------------------
//-------------------------------------大型热传导发电机---------------------------------------
RecipeBuilder.newBuilder("热传导发电", "rechuandao",1200)
.addItemInputs([
    <minecraft:packed_ice> * 4,
	<ic2:resource:10> * 4,
])
.addEnergyPerTickOutput(8000)
.build();
//-------------------------------------大型热传导发电机---------------------------------------
//-------------------------------------精灵门---------------------------------------
RecipeBuilder.newBuilder("流明精华1", "jinglingmen",1)
.addItemInputs([
    <botania:manaresource:23>,
    <minecraft:blaze_powder>,
    <enderio:item_material:20>,
    <deepmoblearning:soot_covered_redstone>,
    <ic2:dust:6>,
    <darkutils:material>,
    <minecraft:glowstone_dust>,
])
.addManaPerTickInput(250)
.addItemOutput(<extendedcrafting:material:7>)
.build();

RecipeBuilder.newBuilder("精灵木1", "jinglingmen",1)
.addItemInput(<botania:livingwood>)
.addManaPerTickInput(250)
.addItemOutput(<botania:dreamwood>)
.build();

RecipeBuilder.newBuilder("源质钢锭1", "jinglingmen",1)
.addItemInput(<botania:manaresource>)
.addManaPerTickInput(250)
.addItemOutput(<botania:manaresource:7>)
.build();

RecipeBuilder.newBuilder("源质钢块1", "jinglingmen",1)
.addItemInput(<botania:storage>)
.addManaPerTickInput(250)
.addItemOutput(<botania:storage:2>)
.build();

RecipeBuilder.newBuilder("精灵尘1", "jinglingmen",1)
.addItemInput(<botania:manaresource:1>)
.addManaPerTickInput(250)
.addItemOutput(<botania:manaresource:8>)
.build();

RecipeBuilder.newBuilder("龙石1", "jinglingmen",1)
.addItemInput(<botania:manaresource:2>)
.addManaPerTickInput(250)
.addItemOutput(<botania:manaresource:9>)
.build();

RecipeBuilder.newBuilder("龙石块1", "jinglingmen",1)
.addItemInput(<botania:storage:3>)
.addManaPerTickInput(250)
.addItemOutput(<botania:storage:4>)
.build();

RecipeBuilder.newBuilder("精灵石英1", "jinglingmen",1)
.addItemInput(<minecraft:quartz>)
.addManaPerTickInput(250)
.addItemOutput(<botania:quartz:5>)
.build();

RecipeBuilder.newBuilder("精灵玻璃1", "jinglingmen",1)
.addItemInput(<botania:managlass>)
.addManaPerTickInput(250)
.addItemOutput(<botania:elfglass>)
.build();

RecipeBuilder.newBuilder("黑铁板2", "jinglingmen",1)
.addItemInput(<extendedcrafting:material> * 32)
.addManaPerTickInput(100)
.addItemOutput(<extendedcrafting:material:2> * 32)
.build();

RecipeBuilder.newBuilder("运算压印1", "jinglingmen",1)
.addItemInput(<appliedenergistics2:material:10>)
.addManaPerTickInput(250)
.addItemOutput(<appliedenergistics2:material:13>)
.build();

RecipeBuilder.newBuilder("工程压印1", "jinglingmen",1)
.addItemInput(<ore:gemDiamond>)
.addManaPerTickInput(250)
.addItemOutput(<appliedenergistics2:material:14>)
.build();

RecipeBuilder.newBuilder("逻辑压印1", "jinglingmen",1)
.addItemInput(<minecraft:gold_ingot>)
.addManaPerTickInput(250)
.addItemOutput(<appliedenergistics2:material:15>)
.build();

RecipeBuilder.newBuilder("硅压印1", "jinglingmen",1)
.addItemInput(<ore:itemSilicon>)
.addManaPerTickInput(250)
.addItemOutput(<appliedenergistics2:material:19>)
.build();
//-------------------------------------精灵门---------------------------------------
//-------------------------------------进阶魔力灌注---------------------------------------
RecipeBuilder.newBuilder("魔力绿宝石2", "jinjieguanzhu",1)
.addItemInput(<minecraft:emerald>)
.addManaPerTickInput(1000)
.addItemOutput(<contenttweaker:lmymolilvbaoshi>)
.build();

RecipeBuilder.newBuilder("1黑铁板1", "jinjieguanzhu",1)
.addItemInput(<extendedcrafting:material>)
.addManaPerTickInput(100)
.addItemOutput(<extendedcrafting:material:2>)
.build();

RecipeBuilder.newBuilder("1不死图腾1", "jinjieguanzhu",1)
.addItemInput(<minecraft:nether_star>)
.addManaPerTickInput(1000)
.addItemOutput(<minecraft:totem_of_undying>)
.build();

RecipeBuilder.newBuilder("1魔力尘1", "jinjieguanzhu",1)
.addItemInput(<minecraft:gunpowder>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:23>)
.build();

RecipeBuilder.newBuilder("1末地石11", "jinjieguanzhu",1)
.addItemInput(<minecraft:stone>)
.addManaPerTickInput(10)
.addItemOutput(<minecraft:end_stone>)
.build();

RecipeBuilder.newBuilder("1地狱岩11", "jinjieguanzhu",1)
.addItemInput(<minecraft:cobblestone>)
.addManaPerTickInput(10)
.addItemOutput(<minecraft:netherrack>)
.build();

RecipeBuilder.newBuilder("1灵魂沙11", "jinjieguanzhu",1)
.addItemInput(<ore:sand>)
.addManaPerTickInput(10)
.addItemOutput(<minecraft:soul_sand>)
.build();

RecipeBuilder.newBuilder("1梦魇燃料1", "jinjieguanzhu",1)
.addItemInput(<minecraft:coal>)
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:nightmarefuel>)
.build();

RecipeBuilder.newBuilder("1精神燃料1", "jinjieguanzhu",1)
.addItemInput(<extrabotany:nightmarefuel>)
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:spiritfuel>)
.build();

RecipeBuilder.newBuilder("1魔力玻璃1", "jinjieguanzhu",1)
.addItemInput(<minecraft:glass>)
.addManaPerTickInput(100)
.addItemOutput(<botania:managlass>)
.build();

RecipeBuilder.newBuilder("1蕴魔丝线1", "jinjieguanzhu",1)
.addItemInput(<minecraft:string>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:16>)
.build();

RecipeBuilder.newBuilder("1魔力石英1", "jinjieguanzhu",1)
.addItemInput(<minecraft:quartz>)
.addManaPerTickInput(100)
.addItemOutput(<botania:quartz:1>)
.build();

RecipeBuilder.newBuilder("1魔力曲奇1", "jinjieguanzhu",1)
.addItemInput(<minecraft:cookie>)
.addManaPerTickInput(500)
.addItemOutput(<botania:manacookie>)
.build();

RecipeBuilder.newBuilder("1魔力钻石1", "jinjieguanzhu",1)
.addItemInput(<minecraft:diamond>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:2>)
.build();

RecipeBuilder.newBuilder("1魔力钻石块1", "jinjieguanzhu",1)
.addItemInput(<minecraft:diamond_block>)
.addManaPerTickInput(900)
.addItemOutput(<botania:storage:3>)
.build();

RecipeBuilder.newBuilder("1魔力珍珠1", "jinjieguanzhu",1)
.addItemInput(<minecraft:ender_pearl>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:1>)
.build();

RecipeBuilder.newBuilder("1魔力钢锭1", "jinjieguanzhu",1)
.addItemInput(<minecraft:iron_ingot>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource>)
.build();

RecipeBuilder.newBuilder("1魔力钢块1", "jinjieguanzhu",1)
.addItemInput(<minecraft:iron_block>)
.addManaPerTickInput(900)
.addItemOutput(<botania:storage>)
.build();

RecipeBuilder.newBuilder("1皮革1", "jinjieguanzhu",1)
.addItemInput(<minecraft:rotten_flesh>)
.addManaPerTickInput(100)
.addItemOutput(<minecraft:leather>)
.build();
//-------------------------------------进阶魔力灌注---------------------------------------
//-------------------------------------魔力灌注---------------------------------------
RecipeBuilder.newBuilder("黑铁板1", "moliguanzhu",1)
.addItemInput(<extendedcrafting:material>)
.addManaPerTickInput(100)
.addItemOutput(<extendedcrafting:material:2>)
.build();

RecipeBuilder.newBuilder("不死图腾1", "moliguanzhu",1)
.addItemInput(<minecraft:nether_star>)
.addManaPerTickInput(1000)
.addItemOutput(<minecraft:totem_of_undying>)
.build();

RecipeBuilder.newBuilder("魔力尘1", "moliguanzhu",1)
.addItemInput(<minecraft:gunpowder>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:23>)
.build();

RecipeBuilder.newBuilder("末地石1", "moliguanzhu",1)
.addItemInput(<minecraft:stone>)
.addManaPerTickInput(10)
.addItemOutput(<minecraft:end_stone>)
.build();

RecipeBuilder.newBuilder("地狱岩1", "moliguanzhu",1)
.addItemInput(<minecraft:cobblestone>)
.addManaPerTickInput(10)
.addItemOutput(<minecraft:netherrack>)
.build();

RecipeBuilder.newBuilder("灵魂沙1", "moliguanzhu",1)
.addItemInput(<ore:sand>)
.addManaPerTickInput(10)
.addItemOutput(<minecraft:soul_sand>)
.build();

RecipeBuilder.newBuilder("梦魇燃料1", "moliguanzhu",1)
.addItemInput(<minecraft:coal>)
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:nightmarefuel>)
.build();

RecipeBuilder.newBuilder("精神燃料1", "moliguanzhu",1)
.addItemInput(<extrabotany:nightmarefuel>)
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:spiritfuel>)
.build();

RecipeBuilder.newBuilder("魔力玻璃1", "moliguanzhu",1)
.addItemInput(<minecraft:glass>)
.addManaPerTickInput(100)
.addItemOutput(<botania:managlass>)
.build();

RecipeBuilder.newBuilder("蕴魔丝线1", "moliguanzhu",1)
.addItemInput(<minecraft:string>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:16>)
.build();

RecipeBuilder.newBuilder("魔力石英1", "moliguanzhu",1)
.addItemInput(<minecraft:quartz>)
.addManaPerTickInput(100)
.addItemOutput(<botania:quartz:1>)
.build();

RecipeBuilder.newBuilder("魔力曲奇1", "moliguanzhu",1)
.addItemInput(<minecraft:cookie>)
.addManaPerTickInput(500)
.addItemOutput(<botania:manacookie>)
.build();

RecipeBuilder.newBuilder("魔力钻石1", "moliguanzhu",1)
.addItemInput(<minecraft:diamond>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:2>)
.build();

RecipeBuilder.newBuilder("魔力钻石块1", "moliguanzhu",1)
.addItemInput(<minecraft:diamond_block>)
.addManaPerTickInput(900)
.addItemOutput(<botania:storage:3>)
.build();

RecipeBuilder.newBuilder("魔力珍珠1", "moliguanzhu",1)
.addItemInput(<minecraft:ender_pearl>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource:1>)
.build();

RecipeBuilder.newBuilder("魔力钢锭1", "moliguanzhu",1)
.addItemInput(<minecraft:iron_ingot>)
.addManaPerTickInput(100)
.addItemOutput(<botania:manaresource>)
.build();

RecipeBuilder.newBuilder("魔力钢块1", "moliguanzhu",1)
.addItemInput(<minecraft:iron_block>)
.addManaPerTickInput(900)
.addItemOutput(<botania:storage>)
.build();

RecipeBuilder.newBuilder("皮革1", "moliguanzhu",1)
.addItemInput(<minecraft:rotten_flesh>)
.addManaPerTickInput(100)
.addItemOutput(<minecraft:leather>)
.build();

RecipeBuilder.newBuilder("魔力绿宝石1", "moliguanzhu",20)
.addItemInput(<minecraft:emerald>)
.addManaPerTickInput(1000)
.addItemOutput(<contenttweaker:lmymolilvbaoshi>)
.build();

//-------------------------------------魔力灌注---------------------------------------
//-------------------------------------泰拉凝聚---------------------------------------
RecipeBuilder.newBuilder("泰拉钢1", "tailaningju", 20)
.addItemInputs([
    <botania:manaresource:1>,
	<botania:manaresource>,
    <botania:manaresource:2>,
])
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addManaPerTickInput(5000)
.addItemOutput(<botania:manaresource:4>)
.build();

RecipeBuilder.newBuilder("盖亚绿宝石1", "tailaningju", 20)
.addItemInputs([
    <contenttweaker:lmymolilvbaoshi>,
	<botania:manaresource:4>,
    <botania:pylon:2>,
    <botania:manaresource:5>,
])
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addManaPerTickInput(25000)
.addItemOutput(<contenttweaker:lmygaiyalvbaoshi>)
.build();

RecipeBuilder.newBuilder("镀金服务器1", "tailaningju", 1)
.addItemInputs([
    <minecraft:gold_nugget> * 32,
    <minecraft:potato> * 32,
])
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:material:2> * 32)
.build();

RecipeBuilder.newBuilder("镀金土豆泥1", "tailaningju", 1)
.addItemInput(<extrabotany:material:2> * 32)
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:gildedmashedpotato> * 32)
.build();

RecipeBuilder.newBuilder("奥利哈刚锭1", "tailaningju", 20)
.addItemInputs([
    <botania:manaresource:14> * 2,
	<botania:manaresource:5> * 4,
    <extrabotany:material:3>,
    <extrabotany:gildedmashedpotato>,
])
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addManaPerTickInput(5000)
.addItemOutput(<extrabotany:material:1>)
.build();

RecipeBuilder.newBuilder("精神碎片1", "tailaningju", 1)
.addItemInput(<extrabotany:spiritfuel> * 32)
.addManaPerTickInput(100)
.addItemOutput(<extrabotany:material> * 32)
.build();

RecipeBuilder.newBuilder("暗影锭1", "tailaningju", 1)
.addItemInputs([
    <extrabotany:nightmarefuel> * 3,
	<extrabotany:gildedmashedpotato>,
	<botania:manaresource:7>,
])
.addManaPerTickInput(5000)
.addItemOutput(<extrabotany:material:5>)
.build();

RecipeBuilder.newBuilder("光子锭1", "tailaningju", 1)
.addItemInputs([
    <extrabotany:material> * 3,
	<extrabotany:gildedmashedpotato>,
	<botania:manaresource:7>,
])
.addManaPerTickInput(5000)
.addItemOutput(<extrabotany:material:8>)
.build();

RecipeBuilder.newBuilder("觉醒英雄勋章1", "tailaningju", 100)
.addItemInputs([
    <extrabotany:material:5> * 3,
	<extrabotany:material:8> * 3,
	<extrabotany:material:1>,
    <contenttweaker:lmygaiyalvbaoshi>,
    <extrabotany:material:3>,
    <extrabotany:specialbag>,
])
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addManaPerTickInput(200000)
.addItemOutput(<contenttweaker:lmyjuexingyingxiongxunzhang>)
.build();
//-------------------------------------泰拉凝聚---------------------------------------
//-------------------------------------屠宰机---------------------------------------
RecipeBuilder.newBuilder("盖亚1", "tuzaiji",400)
.addItemInput(<botania:manaresource:4>)
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addItemOutput(<botania:manaresource:5> * 64)
.build();

RecipeBuilder.newBuilder("盖亚2", "tuzaiji",400)
.addItemInput(<botania:manaresource:14>)
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addItemOutputs([
    <botania:dice>,
    <extrabotany:rewardbag943> * 3,
])
.build();

RecipeBuilder.newBuilder("盖亚3", "tuzaiji",400)
.addItemInput(<extrabotany:material:6>)
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addItemOutputs([
    <extrabotany:rewardbag:3> * 8,
    <extrabotany:rewardbag943> * 3,
    <extrabotany:rewardbag:2> * 8,
    <extrabotany:material:3>,
])
.build();

RecipeBuilder.newBuilder("盖亚4", "tuzaiji",400)
.addItemInput(<extrabotany:material:9>)
.addCatalystInput(torcherino,
            ["§3降低 §a80%§3 消耗时间。"],
            [torcherinoModifier]
        ).setChance(0)
.addItemOutputs([
    <extrabotany:specialbag> * 3,
    <extrabotany:treasurebox>,
    <extrabotany:rewardbag943> * 8,
    <extrabotany:material:3> * 2,
])
.build();
//-------------------------------------屠宰机---------------------------------------
//-------------------------------------精密物品装配机---------------------------------------
RecipeBuilder.newBuilder("电路板1", "jingmi_zhuangpei", 20)
.addEnergyPerTickInput(1024)        
.addItemInputs([
    <thermalfoundation:material:320> * 2,
    <thermalfoundation:material:32>,
    <minecraft:redstone>,
    <ic2:crafting> * 4,
    <appliedenergistics2:material:23>,
    <immersiveengineering:material:27>
])
.addItemOutput(<ic2:crafting:1>)
.build();

RecipeBuilder.newBuilder("电路板2", "jingmi_zhuangpei", 1)
.addEnergyPerTickInput(1024)        
.addItemInput(<mekanism:controlcircuit> * 32)
.addItemOutput(<ic2:crafting:1> * 32)
.build();

RecipeBuilder.newBuilder("高级电路板1", "jingmi_zhuangpei", 20)
.addEnergyPerTickInput(1024)        
.addItemInputs([
    <thermalfoundation:material:320> * 2,
    <ic2:crafting:1>,
    <extendedcrafting:material:7> * 2,
    <harvestcraft:minerstewitem> * 2,
    <ic2:crafting> * 4,
    <appliedenergistics2:material:24>,
])
.addItemOutput(<ic2:crafting:2>)
.build();

RecipeBuilder.newBuilder("高级电路板2", "jingmi_zhuangpei", 1)
.addEnergyPerTickInput(1024)        
.addItemInput(<mekanism:controlcircuit:1> * 32)
.addItemOutput(<ic2:crafting:2> * 32)
.build();

RecipeBuilder.newBuilder("运算处理器1", "jingmi_zhuangpei", 1)
.addEnergyPerTickInput(1024)        
.addItemInputs([
    <appliedenergistics2:material:10> * 64,
    <minecraft:redstone> * 64,
    <appliedenergistics2:material:5> * 64,
])
.addItemOutput(<appliedenergistics2:material:23> * 64)
.build();

RecipeBuilder.newBuilder("逻辑处理器1", "jingmi_zhuangpei", 1)
.addEnergyPerTickInput(1024)        
.addItemInputs([
    <minecraft:gold_ingot> * 64,
    <minecraft:redstone> * 64,
    <appliedenergistics2:material:5> * 64,
])
.addItemOutput(<appliedenergistics2:material:22> * 64)
.build();

RecipeBuilder.newBuilder("工程处理器1", "jingmi_zhuangpei", 1)
.addEnergyPerTickInput(1024)        
.addItemInputs([
    <minecraft:diamond> * 64,
    <minecraft:redstone> * 64,
    <appliedenergistics2:material:5> * 64,
])
.addItemOutput(<appliedenergistics2:material:24> * 64)
.build();

RecipeBuilder.newBuilder("高级工作台1", "jingmi_zhuangpei", 1)
.addEnergyPerTickInput(1024)        
.addItemInputs([
    <extendedcrafting:table_basic>,
    <appliedenergistics2:material:38>,
    <extendedcrafting:material:9> * 8,
])
.addItemOutput(<extendedcrafting:table_advanced>)
.build();
//-------------------------------------精密物品装配机---------------------------------------
//-------------------------------------大型造石机---------------------------------------
RecipeBuilder.newBuilder("造石机1", "daxing_zaoshi", 1, 9)
.addFluidInput(<liquid:lava> * 1000).setChance(0)
.addFluidInput(<liquid:water> * 1000).setChance(0)
.addItemOutput(<extrautils2:compressedcobblestone> * 8)
.build();

RecipeBuilder.newBuilder("造石机2", "daxing_zaoshi", 1, 1)
.addItemInput(<minecraft:redstone>)
.addFluidInput(<liquid:lava> * 1000).setChance(0)
.addItemOutput(<extrautils2:compressednetherrack> * 4)
.build();

RecipeBuilder.newBuilder("造石机3", "daxing_zaoshi", 1, 2)
.addItemInput(<minecraft:glowstone_dust>)
.addFluidInput(<liquid:lava> * 1000).setChance(0)
.addItemOutput(<excompressum:compressed_block:10> * 4)
.build();

RecipeBuilder.newBuilder("造石机4", "daxing_zaoshi", 1, 3)
.addItemInput(<appliedenergistics2:material:45>)
.addFluidInput(<liquid:lava> * 1000).setChance(0)
.addItemOutput(<appliedenergistics2:sky_stone_block> * 32)
.build();
//-------------------------------------大型造石机---------------------------------------
//-------------------------------------大型魔力发电机---------------------------------------
RecipeBuilder.newBuilder("魔力发电1", "moli_fadianji", 100)
.addManaPerTickInput(2500)
.addEnergyPerTickOutput(98960) 
.build();
//-------------------------------------大型魔力发电机---------------------------------------
//-------------------------------------大型压缩机---------------------------------------
RecipeBuilder.newBuilder("高级合金1", "daxing_yasuoji", 1)
.addEnergyPerTickInput(10240)        
.addItemInputs([
    <minecraft:iron_ingot>,
    <thermalfoundation:material:163>,
    <thermalfoundation:material:129>,
])
.addItemOutput(<ic2:crafting:3>)
.build();

RecipeBuilder.newBuilder("煤块1", "daxing_yasuoji", 1)
.addEnergyPerTickInput(10240)        
.addItemInputs([
    <minecraft:coal_block>,
])
.addItemOutput(<ic2:crafting:18>)
.build();

RecipeBuilder.newBuilder("煤板1", "daxing_yasuoji", 1)
.addEnergyPerTickInput(10240)        
.addItemInputs([
    <minecraft:coal>,
])
.addItemOutput(<ic2:crafting:15>)
.build();

RecipeBuilder.newBuilder("魔力绿宝石板1", "daxing_yasuoji", 1)
.addEnergyPerTickInput(10240)        
.addItemInputs([
    <contenttweaker:lmyyasuomolilvbaoshiding>,
])
.addItemOutput(<contenttweaker:lmymolilvbaoshiban>)
.build();

RecipeBuilder.newBuilder("盖亚绿宝石板1", "daxing_yasuoji", 1)
.addEnergyPerTickInput(10240)        
.addItemInputs([
    <contenttweaker:lmyyasuogaiyalvbaoshiding>,
])
.addItemOutput(<contenttweaker:lmygaiyalvbaoshiban>)
.build();
//-------------------------------------大型压缩机---------------------------------------
//-------------------------------------电子封装液制造机---------------------------------------
RecipeBuilder.newBuilder("电子封装液1", "dianzi_fengzhuang", 1)
.addFluidInputs([
    <liquid:ic2uu_matter> * 1000,
    <liquid:cryotheum> * 1000,
    <liquid:fluidedmana> * 1000,
    <liquid:mica> * 1440,
])
.addFluidOutput(<liquid:lmydianzifengzhuangye1> * 1000)
.build();
//-------------------------------------电子封装液制造机---------------------------------------
//-------------------------------------大型电解机---------------------------------------
RecipeBuilder.newBuilder("氘1", "daxing_dianjie", 1)
.addEnergyPerTickInput(10240)
.addFluidInput(<liquid:water> * 1000)
.addGasOutput("deuterium", 1000)
.build();
//-------------------------------------大型电解机---------------------------------------
//-------------------------------------大型蒸馏活化机---------------------------------------
RecipeBuilder.newBuilder("氚1", "daxing_zhengliuhuohua", 1)
.addEnergyPerTickInput(10240)
.addFluidInput(<liquid:water> * 1000)
.addGasOutput("tritium", 1000)
.build();
//-------------------------------------大型蒸馏活化机---------------------------------------
//-------------------------------------大型星能液制造机---------------------------------------
RecipeBuilder.newBuilder("星能液1", "daxing_xingnengye",1)
.addItemInput(<astralsorcery:itemcraftingcomponent>)
.addFluidOutput(<liquid:astralsorcery.liquidstarlight> * 1000)
.build();
//-------------------------------------大型星能液制造机---------------------------------------
//-------------------------------------水晶石培养祭坛---------------------------------------
RecipeBuilder.newBuilder("水晶石1", "shuijing_peiyang",1 ,3)
.addItemInput(<astralsorcery:itemrockcrystalsimple>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100000)
.addItemOutput(<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 125, size: 400, fract: 0, purity: 125, sizeOverride: -1}}}))
.build();

RecipeBuilder.newBuilder("天辉水晶石1", "shuijing_peiyang",1 ,2)
.addItemInput(<astralsorcery:itemcelestialcrystal>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100000)
.addItemOutput(<astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 125, size: 900, fract: 0, purity: 125, sizeOverride: -1}}}))
.build();

RecipeBuilder.newBuilder("天辉水晶石33", "shuijing_peiyang",1 ,1)
.addItemInput(<astralsorcery:itemshiftingstar>)
.addItemInput(<astralsorcery:itemcelestialcrystal>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 10000000)
.addItemOutput(<packagedastral:constellation_focus>)
.build();
//-------------------------------------水晶石培养祭坛---------------------------------------
//-------------------------------------星能晶化装置---------------------------------------
RecipeBuilder.newBuilder("晶体魔力电路板1", "xingnneng_jinghua",1)
.addItemInput(<contenttweaker:lmyfengzhuangmolilvbaoshidianluban>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 10000000)
.addItemOutput(<contenttweaker:lmyjingtimolidianluban>)
.build();

RecipeBuilder.newBuilder("晶体盖亚电路板1", "xingnneng_jinghua",1)
.addItemInput(<contenttweaker:lmyfengzhuanggaiyalvbaoshidianluban>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 10000000)
.addItemOutput(<contenttweaker:lmyjingtigaiyadianluban>)
.build();

RecipeBuilder.newBuilder("水晶矩阵锭1", "xingnneng_jinghua",1)
.addItemInput(<avaritia:resource>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 10000)
.addItemOutput(<avaritia:resource:1>)
.build();
//-------------------------------------星能晶化装置---------------------------------------
//-------------------------------------大型燧石筛子---------------------------------------

RecipeBuilder.newBuilder("沙砾1", "suishi_shaizi",1 , 13)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<minecraft:dye:4>).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1>).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_iron:1>).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_gold:1>).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1>).setChance(0.28)
.addItemOutput(<minecraft:coal> * 2).setChance(0.8)
.addItemOutput(<exnihilocreatio:item_ore_copper:1>).setChance(0.7)
.build();

RecipeBuilder.newBuilder("沙子1", "suishi_shaizi",1 , 12)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1>).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_tin:1>).setChance(0.7)
.build();

RecipeBuilder.newBuilder("尘土1", "suishi_shaizi",1 , 11)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<appliedenergistics2:material:45> * 2).setChance(0.8)
.build();

RecipeBuilder.newBuilder("1沙砾1", "suishi_shaizi",1,9)
.addItemInput(<ore:compressed1xGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:dye:4> * 3).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1> * 3).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_iron:1> * 3).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 3).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1> * 3).setChance(0.28)
.addItemOutput(<minecraft:coal> * 6).setChance(0.8)
.addItemOutput(<exnihilocreatio:item_ore_copper:1> * 3).setChance(0.7)
.build();

RecipeBuilder.newBuilder("1沙子1", "suishi_shaizi",1,8)
.addItemInput(<ore:compressed1xSand>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 3).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_tin:1> * 3).setChance(0.7)
.build();

RecipeBuilder.newBuilder("1尘土1", "suishi_shaizi",1,7)
.addItemInput(<ore:compressed1xDust>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<appliedenergistics2:material:45> * 6).setChance(0.8)
.build();
//-------------------------------------大型燧石筛子---------------------------------------
//-------------------------------------大型铁筛子---------------------------------------
RecipeBuilder.newBuilder("沙砾2", "daxing_tie",1 , 18)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1>).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_iron:1>).setChance(1)
.addItemOutput(<minecraft:emerald>).setChance(0.11)
.addItemOutput(<exnihilocreatio:item_ore_gold:1>).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1>).setChance(0.56)
.addItemOutput(<exnihilocreatio:item_ore_copper:1>).setChance(0.98)
.addItemOutput(<minecraft:diamond>).setChance(0.11)
.addItemOutput(<exnihilocreatio:item_ore_osmium:1>).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_uranium:1>).setChance(0.11)
.build();

RecipeBuilder.newBuilder("沙子2", "daxing_tie",1 , 17)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1>).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_tin:1>).setChance(0.98)
.build();

RecipeBuilder.newBuilder("尘土2", "daxing_tie",1 , 16)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:redstone>).setChance(0.84)
.addItemOutput(<minecraft:blaze_powder>).setChance(0.7)
.addItemOutput(<minecraft:glowstone_dust>).setChance(0.84)
.addItemOutput(<appliedenergistics2:material:45> * 2).setChance(0.4)
.build();

RecipeBuilder.newBuilder("2沙砾2", "daxing_tie",1,9)
.addItemInput(<ore:compressed1xGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1> * 3).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_iron:1> * 3).setChance(1)
.addItemOutput(<minecraft:emerald> * 3).setChance(0.11)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 3).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1> * 3).setChance(0.56)
.addItemOutput(<exnihilocreatio:item_ore_copper:1> * 3).setChance(0.98)
.addItemOutput(<minecraft:diamond> * 3).setChance(0.11)
.addItemOutput(<exnihilocreatio:item_ore_osmium:1> * 3).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_uranium:1> * 3).setChance(0.11)
.build();

RecipeBuilder.newBuilder("2沙子2", "daxing_tie",1,8)
.addItemInput(<ore:compressed1xSand>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 3).setChance(0.98)
.addItemOutput(<exnihilocreatio:item_ore_tin:1> * 3).setChance(0.98)
.build();

RecipeBuilder.newBuilder("2尘土2", "daxing_tie",1,7)
.addItemInput(<ore:compressed1xDust>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:redstone> * 3).setChance(0.84)
.addItemOutput(<minecraft:blaze_powder> * 3).setChance(0.7)
.addItemOutput(<minecraft:glowstone_dust> * 3).setChance(0.84)
.addItemOutput(<appliedenergistics2:material:45> * 6).setChance(0.4)
.build();
//-------------------------------------大型铁筛子---------------------------------------
//-------------------------------------大型钻石筛子---------------------------------------
RecipeBuilder.newBuilder("沙砾3", "daxing_zuanshi",1 , 18)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1> * 2).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_iron:1> * 3).setChance(0.5)
.addItemOutput(<minecraft:emerald>).setChance(0.14)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 2).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1> * 2).setChance(0.4)
.addItemOutput(<minecraft:diamond>).setChance(0.14)
.addItemOutput(<exnihilocreatio:item_ore_osmium:1> * 2).setChance(0.4)
.addItemOutput(<exnihilocreatio:item_ore_uranium:1> * 2).setChance(0.4)
.build();

RecipeBuilder.newBuilder("沙子3", "daxing_zuanshi",1 , 17)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 2).setChance(0.4)
.addItemOutput(<minecraft:prismarine_shard>).setChance(0.28)
.build();

RecipeBuilder.newBuilder("尘土3", "daxing_zuanshi",1 , 16)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:redstone> * 9).setChance(0.5)
.addItemOutput(<enderio:item_material:20> * 3).setChance(0.14)
.addItemOutput(<appliedenergistics2:material:45> * 6).setChance(0.4)
.build();

RecipeBuilder.newBuilder("末地石沙砾3", "daxing_zuanshi",1 , 15)
.addItemInput(<ore:compressed1xEnderGravel>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 3).setChance(0.5)
.addItemOutput(<draconicevolution:draconium_dust> * 2).setChance(0.5)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 3).setChance(0.5)
.build();

RecipeBuilder.newBuilder("地狱岩沙砾3", "daxing_zuanshi",1 , 14)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemOutput(<minecraft:blaze_powder> * 3).setChance(0.5)
.addItemOutput(<draconicevolution:draconium_dust>).setChance(0.42)
.addItemOutput(<exnihilocreatio:item_ore_cobalt:1> * 2).setChance(0.5)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 5).setChance(0.6)
.addItemOutput(<exnihilocreatio:item_ore_ardite:1> * 2).setChance(0.5)
.build();

RecipeBuilder.newBuilder("灵魂沙3", "daxing_zuanshi",1 , 13)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemOutput(<minecraft:ghast_tear>).setChance(0.28)
.addItemOutput(<minecraft:quartz> * 9).setChance(0.8)
.addItemOutput(<minecraft:nether_wart> * 2).setChance(0.5)
.build();

RecipeBuilder.newBuilder("3沙砾3", "daxing_zuanshi", 1, 9)
.addItemInput(<ore:compressed1xGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1> * 6).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_iron:1> * 9).setChance(0.5)
.addItemOutput(<minecraft:emerald> * 3).setChance(0.14)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 6).setChance(0.7)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1> * 6).setChance(0.4)
.addItemOutput(<minecraft:diamond> * 3).setChance(0.14)
.addItemOutput(<exnihilocreatio:item_ore_osmium:1> * 6).setChance(0.4)
.addItemOutput(<exnihilocreatio:item_ore_uranium:1> * 6).setChance(0.4)
.build();

RecipeBuilder.newBuilder("3沙子3", "daxing_zuanshi", 1, 8)
.addItemInput(<ore:compressed1xSand>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 6).setChance(0.4)
.addItemOutput(<minecraft:prismarine_shard> * 3).setChance(0.28)
.build();

RecipeBuilder.newBuilder("3尘土3", "daxing_zuanshi", 1, 7)
.addItemInput(<ore:compressed1xDust>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:redstone> * 27).setChance(0.5)
.addItemOutput(<enderio:item_material:20> * 9).setChance(0.14)
.addItemOutput(<appliedenergistics2:material:45> * 18).setChance(0.4)
.build();

RecipeBuilder.newBuilder("3末地石沙砾3", "daxing_zuanshi", 1, 6)
.addItemInput(<ore:compressed1xEnderGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 9).setChance(0.5)
.addItemOutput(<draconicevolution:draconium_dust> * 6).setChance(0.5)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 9).setChance(0.5)
.build();

RecipeBuilder.newBuilder("3地狱岩沙砾3", "daxing_zuanshi", 1, 5)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:blaze_powder> * 9).setChance(0.5)
.addItemOutput(<draconicevolution:draconium_dust> * 3).setChance(0.42)
.addItemOutput(<exnihilocreatio:item_ore_cobalt:1> * 6).setChance(0.5)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 15).setChance(0.6)
.addItemOutput(<exnihilocreatio:item_ore_ardite:1> * 6).setChance(0.5)
.build();

RecipeBuilder.newBuilder("3灵魂沙3", "daxing_zuanshi", 1, 4)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:ghast_tear> * 3).setChance(0.28)
.addItemOutput(<minecraft:quartz> * 27).setChance(0.8)
.addItemOutput(<minecraft:nether_wart> * 6).setChance(0.5)
.build();
//-------------------------------------大型钻石筛子---------------------------------------
//-------------------------------------大型绿宝石筛子---------------------------------------
RecipeBuilder.newBuilder("沙砾4", "daxing_lvbaoshi",1 , 19)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1> * 2)
.addItemOutput(<minecraft:coal_block> * 4)
.addItemOutput(<exnihilocreatio:item_ore_iron:1> * 3)
.addItemOutput(<minecraft:emerald>)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 2)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1> * 2)
.addItemOutput(<minecraft:diamond>)
.addItemOutput(<exnihilocreatio:item_ore_osmium:1> * 2)
.addItemOutput(<exnihilocreatio:item_ore_uranium:1> * 2)
.addItemOutput(<exnihilocreatio:item_ore_copper:1> * 2)
.addItemOutput(<exnihilocreatio:item_ore_lead:1> * 2)
.addItemOutput(<minecraft:lapis_block> * 3)
.build();

RecipeBuilder.newBuilder("沙子4", "daxing_lvbaoshi",1 , 18)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 2)
.addItemOutput(<minecraft:prismarine_shard>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 2)
.addItemOutput(<exnihilocreatio:item_ore_tin:1> * 2)
.build();

RecipeBuilder.newBuilder("尘土4", "daxing_lvbaoshi",1 , 17)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:redstone> * 9)
.addItemOutput(<enderio:item_material:20> * 3)
.addItemOutput(<appliedenergistics2:material:45> * 6)
.addItemOutput(<minecraft:blaze_powder> * 2)
.addItemOutput(<minecraft:glowstone_dust> * 2)
.addItemOutput(<minecraft:gunpowder> * 2)
.addItemOutput(<minecraft:dye:15> * 2)
.build();

RecipeBuilder.newBuilder("末地石沙砾4", "daxing_lvbaoshi",1 , 16)
.addItemInput(<ore:compressed1xEnderGravel>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 3)
.addItemOutput(<draconicevolution:draconium_dust> * 2)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 3)
.build();

RecipeBuilder.newBuilder("地狱岩沙砾4", "daxing_lvbaoshi",1 , 15)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemOutput(<minecraft:blaze_powder> * 3)
.addItemOutput(<draconicevolution:draconium_dust>)
.addItemOutput(<exnihilocreatio:item_ore_cobalt:1> * 2)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 5)
.addItemOutput(<exnihilocreatio:item_ore_ardite:1> * 2)
.build();

RecipeBuilder.newBuilder("灵魂沙4", "daxing_lvbaoshi",1 , 14)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemOutput(<minecraft:ghast_tear>)
.addItemOutput(<minecraft:quartz> * 9)
.addItemOutput(<minecraft:nether_wart> * 2)
.build();

RecipeBuilder.newBuilder("陨石4", "daxing_lvbaoshi",1 , 13)
.addItemInput(<exnihilocreatio:block_skystone_crushed>)
.addItemOutput(<appliedenergistics2:material> * 7)
.addItemOutput(<appliedenergistics2:material:1> * 2)
.addItemOutput(<appliedenergistics2:crystal_seed>.withTag({progress: 0.0 as float}) * 6)
.build();

RecipeBuilder.newBuilder("4沙砾4", "daxing_lvbaoshi", 1, 9)
.addItemInput(<ore:compressed1xGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:coal_block> * 12)
.addItemOutput(<exnihilocreatio:item_ore_nickel:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_iron:1> * 9)
.addItemOutput(<minecraft:emerald> * 3)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_platinum:1> * 6)
.addItemOutput(<minecraft:diamond> * 3)
.addItemOutput(<exnihilocreatio:item_ore_osmium:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_uranium:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_copper:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_lead:1> * 6)
.addItemOutput(<minecraft:lapis_block> * 9)
.build();

RecipeBuilder.newBuilder("4沙子4", "daxing_lvbaoshi", 1, 8)
.addItemInput(<ore:compressed1xSand>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 6)
.addItemOutput(<minecraft:prismarine_shard>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_tin:1> * 6)
.build();

RecipeBuilder.newBuilder("4尘土4", "daxing_lvbaoshi", 1, 7)
.addItemInput(<ore:compressed1xDust>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:redstone> * 27)
.addItemOutput(<enderio:item_material:20> * 9)
.addItemOutput(<appliedenergistics2:material:45> * 27)
.addItemOutput(<minecraft:blaze_powder> * 6)
.addItemOutput(<minecraft:glowstone_dust> * 6)
.addItemOutput(<minecraft:gunpowder> * 6)
.addItemOutput(<minecraft:dye:15> * 6)
.build();

RecipeBuilder.newBuilder("4末地石沙砾4", "daxing_lvbaoshi", 1, 6)
.addItemInput(<ore:compressed1xEnderGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<exnihilocreatio:item_ore_aluminium:1> * 9)
.addItemOutput(<draconicevolution:draconium_dust> * 9)
.addItemOutput(<exnihilocreatio:item_ore_silver:1> * 9)
.build();

RecipeBuilder.newBuilder("4地狱岩沙砾4", "daxing_lvbaoshi", 1, 5)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:blaze_powder> * 9)
.addItemOutput(<draconicevolution:draconium_dust> * 3)
.addItemOutput(<exnihilocreatio:item_ore_cobalt:1> * 6)
.addItemOutput(<exnihilocreatio:item_ore_gold:1> * 15)
.addItemOutput(<exnihilocreatio:item_ore_ardite:1> * 6)
.build();

RecipeBuilder.newBuilder("4灵魂沙4", "daxing_lvbaoshi", 1, 4)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<minecraft:ghast_tear> * 3)
.addItemOutput(<minecraft:quartz> * 27)
.addItemOutput(<minecraft:nether_wart> * 6)
.build();

RecipeBuilder.newBuilder("4陨石4", "daxing_lvbaoshi", 1, 3)
.addItemInput(<exnihilocreatio:block_skystone_crushed>)
.addItemInput(<minecraft:enchanted_book>.withTag({RepairCost: 1, StoredEnchantments: [{lvl: 3 as short, id: 37 as short}, {lvl: 5 as short, id: 36 as short}]})).setChance(0)
.addItemOutput(<appliedenergistics2:material> * 21)
.addItemOutput(<appliedenergistics2:material:1> * 6)
.addItemOutput(<appliedenergistics2:crystal_seed>.withTag({progress: 0.0 as float}) * 6)
.build();
//-------------------------------------大型绿宝石筛子---------------------------------------
//-------------------------------------大型粉碎机---------------------------------------
RecipeBuilder.newBuilder("圆石粉碎1", "daxing_fensui",1)
.addItemInput(<ore:compressed1xCobblestone>)
.addItemOutput(<ore:compressed1xGravel> * 8)
.build();

RecipeBuilder.newBuilder("沙砾粉碎1", "daxing_fensui",1)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<ore:compressed1xSand> * 8)
.build();

RecipeBuilder.newBuilder("沙子粉碎1", "daxing_fensui",1)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<ore:compressed1xDust> * 8)
.build();

RecipeBuilder.newBuilder("地狱岩粉碎1", "daxing_fensui",1)
.addItemInput(<ore:compressed1xNetherrack>)
.addItemOutput(<ore:compressed1xNetherGravel> * 8)
.build();

RecipeBuilder.newBuilder("末地石粉碎1", "daxing_fensui",1)
.addItemInput(<ore:compressed1xEndStone>)
.addItemOutput(<ore:compressed1xEnderGravel> * 8)
.build();

RecipeBuilder.newBuilder("陨石粉碎1", "daxing_fensui",1)
.addItemInput(<ore:blockSkyStone> * 1)
.addItemOutput(<exnihilocreatio:block_skystone_crushed> * 64)
.build();
//-------------------------------------大型粉碎机---------------------------------------
//-------------------------------------究极液体混合机---------------------------------------
RecipeBuilder.newBuilder("暗流质1", "jiuji_hunhe", 20)
.addFluidInputs([
    <liquid:pyrotheum> * 10000,
    <liquid:cryotheum> * 10000,
    <liquid:fluidedmana> * 10000,
    <liquid:lmydianzifengzhuangye1> * 1000,
    <liquid:universal_metal> * 2880,
    <liquid:sunnarium> * 2880,
    <liquid:refined_biofuel> * 1000,
    <liquid:refined_oil> * 1000,
    <liquid:osmiridium> * 2880,
    <liquid:ic2biomass> * 1000,
])
.addFluidOutput(<liquid:dark_matter> * 1000)
.build();

RecipeBuilder.newBuilder("蕴魔结晶1", "jiuji_hunhe", 20)
.addFluidInputs([
    <liquid:cobalt> * 144,
    <liquid:manasteel> * 144,
    <liquid:elementium> * 144,
    <liquid:terrasteel> * 144,
])
.addFluidOutput(<liquid:mirion> * 144)
.build();
//-------------------------------------究极液体混合机---------------------------------------
//-------------------------------------星能摄取装置---------------------------------------
RecipeBuilder.newBuilder("菜园1", "xingneng_shequ", 1)
.addItemInputs([
    <avaritia:resource:2> * 8,
    <advanced_solar_panels:crafting:12> * 4,
    <harvestcraft:seedenergygelitem>,
])
.addFluidInputs([
    <liquid:seed_oil> * 10000,
    <liquid:nutrient_distillation> * 10000,
])
.addGasInput("fusionfuel", 10000)
.addItemOutput(<harvestcraft:aridgarden>).setChance(0.5)
.addItemOutput(<harvestcraft:frostgarden>).setChance(0.5)
.addItemOutput(<harvestcraft:shadedgarden>).setChance(0.5)
.addItemOutput(<harvestcraft:soggygarden>).setChance(0.5)
.addItemOutput(<harvestcraft:tropicalgarden>).setChance(0.5)
.addItemOutput(<harvestcraft:windygarden>).setChance(0.5)
.build();

RecipeBuilder.newBuilder("月球之尘1", "xingneng_shequ", 1)
.addItemInput(<minecraft:dye:4>)
.addItemOutput(<extrautils2:ingredients:3> * 64)
.build();

//-------------------------------------星能摄取装置---------------------------------------
//-------------------------------------恒星压缩机---------------------------------------
RecipeBuilder.newBuilder("奇点1", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage:7> * 2048)
.addItemOutput(<avaritia:singularity:14>)
.build();

RecipeBuilder.newBuilder("奇点2", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage:6> * 2048)
.addItemOutput(<avaritia:singularity:13>)
.build();

RecipeBuilder.newBuilder("奇点3", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage_alloy:1> * 2048)
.addItemOutput(<avaritia:singularity:12>)
.build();

RecipeBuilder.newBuilder("奇点4", "hengxing_yasuo", 1)
.addItemInput(<minecraft:emerald_block> * 2048)
.addItemOutput(<avaritia:singularity:11>)
.build();

RecipeBuilder.newBuilder("奇点5", "hengxing_yasuo", 1)
.addItemInput(<minecraft:diamond_block> * 2048)
.addItemOutput(<avaritia:singularity:10>)
.build();

RecipeBuilder.newBuilder("奇点6", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage:5> * 2048)
.addItemOutput(<avaritia:singularity:9>)
.build();

RecipeBuilder.newBuilder("奇点7", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage:2> * 2048)
.addItemOutput(<avaritia:singularity:8>)
.build();

RecipeBuilder.newBuilder("奇点8", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage:3> * 2048)
.addItemOutput(<avaritia:singularity:7>)
.build();

RecipeBuilder.newBuilder("奇点9", "hengxing_yasuo", 1)
.addItemInput(<minecraft:redstone_block> * 2048)
.addItemOutput(<avaritia:singularity:3>)
.build();

RecipeBuilder.newBuilder("奇点11", "hengxing_yasuo", 1)
.addItemInput(<minecraft:quartz_block> * 2048)
.addItemOutput(<avaritia:singularity:4>)
.build();

RecipeBuilder.newBuilder("奇点12", "hengxing_yasuo", 1)
.addItemInput(<minecraft:iron_block> * 2048)
.addItemOutput(<avaritia:singularity>)
.build();

RecipeBuilder.newBuilder("奇点13", "hengxing_yasuo", 1)
.addItemInput(<minecraft:gold_block> * 2048)
.addItemOutput(<avaritia:singularity:1>)
.build();

RecipeBuilder.newBuilder("奇点14", "hengxing_yasuo", 1)
.addItemInput(<minecraft:lapis_block> * 2048)
.addItemOutput(<avaritia:singularity:2>)
.build();

RecipeBuilder.newBuilder("奇点15", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage:1> * 2048)
.addItemOutput(<avaritia:singularity:6>)
.build();

RecipeBuilder.newBuilder("奇点16", "hengxing_yasuo", 1)
.addItemInput(<thermalfoundation:storage> * 2048)
.addItemOutput(<avaritia:singularity:5>)
.build();

RecipeBuilder.newBuilder("奇点17", "hengxing_yasuo", 1)
.addItemInput(<tconevo:metal_block:8> * 256)
.addItemOutput(<contenttweaker:uujinshuqidian>)
.build();

RecipeBuilder.newBuilder("奇点18", "hengxing_yasuo", 1)
.addItemInput(<modularmachinery:blockcasing> * 512)
.addItemOutput(<contenttweaker:jixiewaikeqidian>)
.build();

RecipeBuilder.newBuilder("奇点19", "hengxing_yasuo", 1)
.addItemInput(<enderio:block_alloy:6> * 512)
.addItemOutput(<contenttweaker:xuangangqidian>)
.build();

RecipeBuilder.newBuilder("奇点21", "hengxing_yasuo", 1)
.addItemInput(<avaritia:block_resource:2> * 512)
.addItemOutput(<contenttweaker:shuijingjuzhenqidian>)
.build();

RecipeBuilder.newBuilder("奇点22", "hengxing_yasuo", 1)
.addItemInput(<draconicevolution:wyvern_core> * 1919)
.addItemOutput(<contenttweaker:shuangzufeilonghexinqidian>)
.build();

RecipeBuilder.newBuilder("奇点23", "hengxing_yasuo", 1)
.addItemInput(<draconicevolution:awakened_core> * 514)
.addItemOutput(<contenttweaker:juexinghexinqidian>)
.build();

RecipeBuilder.newBuilder("奇点24", "hengxing_yasuo", 1)
.addItemInput(<draconicevolution:chaotic_core> * 114)
.addItemOutput(<contenttweaker:hundunhexinqidian>)
.build();
//-------------------------------------恒星压缩机---------------------------------------
//-------------------------------------暗流质发电机---------------------------------------
RecipeBuilder.newBuilder("暗流质发电1", "anliuzhi_fadianji", 1800)
.addFluidInput(<liquid:dark_matter> * 100)
.addGasInput("deuterium", 1600000)
.addGasInput("tritium", 1600000)
.addEnergyPerTickOutput(2147483647)
.build();
//-------------------------------------暗流质发电机---------------------------------------
//-------------------------------------魔力汇聚祭坛---------------------------------------
RecipeBuilder.newBuilder("魔力汇聚1", "moli_huiju", 1200, 12)
.setTime(14000, 22000)
.addItemInput(<extendedcrafting:material:7> * 8)
.addItemInput(<contenttweaker:lmymolilvbaoshi>)
.addFluidInput(<liquid:fluidedmana> * 10000)
.addItemOutput(<contenttweaker:lmymolilvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力汇聚2", "moli_huiju", 1200, 11)
.setTime(14000, 22000)
.addItemInput(<extendedcrafting:material:7> * 8)
.addItemInput(<contenttweaker:lmygaiyalvbaoshi>)
.addFluidInput(<liquid:fluidedmana> * 10000)
.addItemOutput(<contenttweaker:lmygaiyalvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力压缩1", "moli_huiju", 20, 9)
.setMoonPhase([0, 4])
.addItemInput(<contenttweaker:lmygaiyalvbaoshiding>)
.addItemOutput(<contenttweaker:lmyyasuogaiyalvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力压缩2", "moli_huiju", 20, 8)
.setMoonPhase([0, 4])
.addItemInput(<contenttweaker:lmymolilvbaoshiding>)
.addItemOutput(<contenttweaker:lmyyasuomolilvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力汇聚11", "moli_huiju", 1, 4)
.addItemInput(<contenttweaker:lmyjuexingyingxiongxunzhang>).setChance(0)
.addItemInput(<contenttweaker:lmymolilvbaoshi>)
.addItemOutput(<contenttweaker:lmymolilvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力汇聚12", "moli_huiju", 1, 3)
.addItemInput(<contenttweaker:lmyjuexingyingxiongxunzhang>).setChance(0)
.addItemInput(<contenttweaker:lmygaiyalvbaoshi>)
.addItemOutput(<contenttweaker:lmygaiyalvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力压缩11", "moli_huiju", 1, 2)
.addItemInput(<contenttweaker:lmyjuexingyingxiongxunzhang>).setChance(0)
.addItemInput(<contenttweaker:lmygaiyalvbaoshiding>)
.addItemOutput(<contenttweaker:lmyyasuogaiyalvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力压缩12", "moli_huiju", 1, 1)
.addItemInput(<contenttweaker:lmyjuexingyingxiongxunzhang>).setChance(0)
.addItemInput(<contenttweaker:lmymolilvbaoshiding>)
.addItemOutput(<contenttweaker:lmyyasuomolilvbaoshiding>)
.build();

RecipeBuilder.newBuilder("魔力灌注银12", "moli_huiju", 1, 5)
.addItemInput(<ore:oreSilver>)
.addItemOutput(<thermalfoundation:ore:8>)
.build();
//-------------------------------------魔力汇聚祭坛---------------------------------------
//-------------------------------------星能捕获祭坛祭坛---------------------------------------
RecipeBuilder.newBuilder("星能捕获1", "xingneng_buhuo", 1200)
.setTime(14000, 26000)
.addItemInputs([
    <astralsorcery:itemrockcrystalsimple>,
    <astralsorcery:itemcraftingcomponent> * 64,
    <mekanism:glowplasticblock:15> * 16,
    <mekanism:reinforcedplasticblock:3> * 32,
    <extendedcrafting:table_ultimate>,
])
.addItemOutput(<astralsorcery:blockaltar>)
.build();

RecipeBuilder.newBuilder("星能捕获2", "xingneng_buhuo", 1200)
.setTime(14000, 26000)
.addItemInputs([
    <astralsorcery:itemrockcrystalsimple>,
    <mekanism:polyethene:3> * 8,
    <astralsorcery:itemcraftingcomponent> * 16,
])
.addItemOutput(<astralsorcery:itemwand>.withTag({astralsorcery: {}}))
.build();

RecipeBuilder.newBuilder("星能捕获3", "xingneng_buhuo", 1)
.addItemInputs([
    <environmentaltech:kyronite_crystal>,
    <mekanism:glowplasticblock:15> * 16,
])
.addItemOutput(<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 50, size: 200, fract: 20, purity: 50, sizeOverride: -1}}}))
.build();

RecipeBuilder.newBuilder("星能捕获4", "xingneng_buhuo", 1)
.addItemInputs([
    <astralsorcery:itemrockcrystalsimple>,
    <mekanism:glowplasticblock:4> * 16,
    <astralsorcery:itemcraftingcomponent:2>,
])
.addItemOutput(<astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 50, size: 200, fract: 40, purity: 50, sizeOverride: -1}}}))
.build();
//-------------------------------------星能捕获祭坛祭坛---------------------------------------
//-------------------------------------树木种植机---------------------------------------
RecipeBuilder.newBuilder("橡胶种植1", "xiangjiao_zhongzhi", 1)
.addItemInput(<ic2:sapling>).setChance(0)
.addItemOutput(<ic2:misc_resource:4> * 8)
.build();

RecipeBuilder.newBuilder("橡木种植1", "xiangjiao_zhongzhi", 1)
.addItemInput(<minecraft:sapling>).setChance(0)
.addItemOutput(<minecraft:log> * 8)
.build();

RecipeBuilder.newBuilder("史莱姆种植1", "xiangjiao_zhongzhi", 1)
.addItemInput(<tconstruct:slime_sapling:1>).setChance(0)
.addItemOutput(<tconstruct:slime:2> * 8)
.build();
//-------------------------------------树木种植机---------------------------------------
