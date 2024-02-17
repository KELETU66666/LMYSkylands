#priority 114
#loader contenttweaker
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.ItemFood;
import crafttweaker.world.IExplosion;
import mods.contenttweaker.Commands;

//----------------------------------------------------------物品----------------------------------------------------------
function item(name as string,ench as bool)
{
    var items = VanillaFactory.createItem(name);
    items.maxStackSize = 64;
    items.glowing = ench;
    items.creativeTab = <creativetab:decorations>;
    items.register();
}
//singularity
item("compressed_biofuel",false);
item("hundunhexinqidian",true);
item("juexinghexinqidian",true);
item("shuangzufeilonghexinqidian",false);
item("shuijingjuzhenqidian",false);
item("uujinshuqidian",false);
item("jixiewaikeqidian",false);
item("xuangangqidian",false);
//---rainbow---
item("singularity_rainbow_pro",false);
item("singularity_rainbow_pro_max",false);
item("wuzhi",false);
item("matter_rainbow_pro",false);
item("chilun",false);
item("gear_rainbow_pro",false);
item("gear_rainbow_pro_max",false);
item("xukong",false);
item("ingot_rainbow_pro",false);
item("ingot_rainbow_pro_max",false);
item("plate_rainbow_pro",false);
item("plate_rainbow_pro_max",false);
item("wuqiongdabian",true);
//---energy core---
item("lmyjingtimolinenglianghexing",false);
item("lmyjingtigaiyanenglianghexing",false);
//---core---
item("lmyjingtimolihexing",false);
item("lmyjingtigaiyahexing",false);
//---circuit---
item("lmymolilvbaoshidianluban",true);
item("lmygaiyalvbaoshidianluban",true);
item("lmyjingtimolidianluban",false);
item("lmyjingtigaiyadianluban",false);
item("lmyfengzhuangmolilvbaoshidianluban",false);
item("lmyfengzhuanggaiyalvbaoshidianluban",false);
//---ingot---
item("lmyyasuomolilvbaoshiding",true);
item("lmyyasuogaiyalvbaoshiding",true);
item("lmymolilvbaoshiding",true);
item("lmygaiyalvbaoshiding",true);
//---plate---
item("lmymolilvbaoshiban",true);
item("lmygaiyalvbaoshiban",true);
//---gem---
item("lmymolilvbaoshi",true);
item("lmygaiyalvbaoshi",true);
item("lmyyuanshibaozhu",true);
//gear
//alloy
item("lmychongnengqianghuahejin",true);
item("lmychongnengfujihejin",true);
//---other---
item("key",false);
item("lmyjuexingyingxiongxunzhang",false);
//----------------------------------------------------------物品----------------------------------------------------------
//----------------------------------------------------------方块----------------------------------------------------------
function block(name as string)
{
    var Blocks = VanillaFactory.createBlock(name,<blockmaterial:iron>);
    Blocks.blockHardness = 5.0;
    Blocks.blockResistance = 5.0;
    Blocks.toolClass = "pickaxe";
    Blocks.toolLevel = 1;
    Blocks.register();
}

block("unstable_diamond_block");
block("stable_diamond_block");
block("block_matter_rainbow_pro");
block("lmygaojijixiewaike");
block("lmyjiujijixiewaike");
block("lmygaiyalvbaoshikuai");

//---mesh---
function block_mesh(name as string)
{
    val mesh = AxisAlignedBB.create(0, 0.85, 0, 1, 0.94, 1);
    var Blocks = VanillaFactory.createBlock(name,<blockmaterial:iron>);
    Blocks.fullBlock = false;
    Blocks.blockLayer = "TRANSLUCENT";
    Blocks.translucent = true;
    Blocks.setAxisAlignedBB(mesh);
    Blocks.setBlockHardness(5);
    Blocks.setBlockResistance(5.0);
    Blocks.lightOpacity = 0;
    Blocks.toolClass = "pickaxe";
    Blocks.toolLevel = 1;
    Blocks.register();
}
block_mesh("mesh_flint");
block_mesh("mesh_iron");
block_mesh("mesh_diamond");
block_mesh("mesh_emerald");
//---mesh---
//----------------------------------------------------------方块----------------------------------------------------------
//----------------------------------------------------------流体----------------------------------------------------------
val lmydianzifengzhuangye1 = mods.contenttweaker.VanillaFactory.createFluid("lmydianzifengzhuangye1", Color.fromHex("00F2F2").getIntColor());
lmydianzifengzhuangye1.material = <blockmaterial:water>;
lmydianzifengzhuangye1.viscosity = 3000;
lmydianzifengzhuangye1.density = 6500;
lmydianzifengzhuangye1.colorize = true;
lmydianzifengzhuangye1.temperature = 514;
lmydianzifengzhuangye1.color = Color.fromHex("00F2F2").getIntColor();
lmydianzifengzhuangye1.flowingLocation = "base:fluids/molten_flowing";
lmydianzifengzhuangye1.register();
//----------------------------------------------------------流体----------------------------------------------------------
//----------------------------------------------------------食物----------------------------------------------------------
var shit as ItemFood = VanillaFactory.createItemFood("shit", 1996);
shit.maxStackSize = 64;
shit.creativeTab = <creativetab:misc>;
shit.saturation = 308;
shit.alwaysEdible = true;
shit.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:health_boost>.makePotionEffect(6000, 99));
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(6000, 99));
    }
};
shit.register();
//----------------------------------------------------------食物----------------------------------------------------------