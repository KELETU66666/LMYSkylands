mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "entropinnyum"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));

mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);

mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:7>);
mods.botania.ElvenTrade.removeRecipe(<botania:storage:2>);

mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <thermalfoundation:material:160>, 3000);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <thermalfoundation:storage_alloy>, 27000);

mods.botania.ElvenTrade.addRecipe([<botania:manaresource:7>], [<botania:manaresource>, <extendedcrafting:material>]);
mods.botania.ElvenTrade.addRecipe([<botania:storage:2>], [<botania:storage>, <extendedcrafting:storage>]);