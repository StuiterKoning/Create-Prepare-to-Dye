import crafttweaker.api.item.IItemStack;
import crafttweaker.api.mods.ModInfo;
import crafttweaker.api.mods.Mods;
import crafttweaker.api.item.IIngredient;
import stdlib.List;
#priority -100

val keep = [
    <item:refinedstorage:silicon>,
    <item:refinedstorage:controller>,
    <item:refinedstorage:grid>,
    <item:refinedstorage:crafting_grid>,
    <item:refinedstorage:storage_monitor>,
    <item:refinedstorage:external_storage>,
    <item:refinedstorage:cable>,
];
val hideAndRemoveRecipes = [
    <item:refinedstorage:white_grid>,
    <item:refinedstorage:orange_grid>,
    <item:refinedstorage:magenta_grid>,
    <item:refinedstorage:yellow_grid>,
    <item:refinedstorage:lime_grid>,
    <item:refinedstorage:pink_grid>,
    <item:refinedstorage:gray_grid>,
    <item:refinedstorage:light_gray_grid>,
    <item:refinedstorage:cyan_grid>,
    <item:refinedstorage:purple_grid>,
    <item:refinedstorage:blue_grid>,
    <item:refinedstorage:brown_grid>,
    <item:refinedstorage:green_grid>,
    <item:refinedstorage:red_grid>,
    <item:refinedstorage:black_grid>,
    <item:refinedstorage:white_crafting_grid>,
    <item:refinedstorage:orange_crafting_grid>,
    <item:refinedstorage:magenta_crafting_grid>,
    <item:refinedstorage:yellow_crafting_grid>,
    <item:refinedstorage:lime_crafting_grid>,
    <item:refinedstorage:pink_crafting_grid>,
    <item:refinedstorage:gray_crafting_grid>,
    <item:refinedstorage:light_gray_crafting_grid>,
    <item:refinedstorage:cyan_crafting_grid>,
    <item:refinedstorage:purple_crafting_grid>,
    <item:refinedstorage:blue_crafting_grid>,
    <item:refinedstorage:brown_crafting_grid>,
    <item:refinedstorage:green_crafting_grid>,
    <item:refinedstorage:red_crafting_grid>,
    <item:refinedstorage:black_crafting_grid>
];

for item in loadedMods.getMod("refinedstorage").items{
    var remove = true;
    for itemToKeep in keep{
        if (itemToKeep==item){
            remove = false;
            itemToKeep.removeRecipe();
        }
    }
    for toHide in hideAndRemoveRecipes{
        if (toHide==item){
            remove=false;
            toHide.hide();
        }
    }
    if (remove){
        item.remove();
    }
}

//silicon recieps
Recipes.addItemExplosion([<item:refinedstorage:silicon>.weight(10)],[<tag:items:forge:gems/quartz>*4],2,25);
Recipes.addMix(<item:refinedstorage:silicon>*8,"superheated",[<tag:items:forge:gems/quartz>*4,<tag:items:minecraft:logs_that_burn>,<tag:items:minecraft:coals>]);

//cable recipes
(<item:refinedstorage:cable>*4).shaped([
    [<tag:items:forge:silicon>,<tag:items:forge:silicon>,<tag:items:forge:silicon>],
    [<item:create:polished_rose_quartz>,<item:create:polished_rose_quartz>,<item:create:polished_rose_quartz>],
    [<tag:items:forge:silicon>,<tag:items:forge:silicon>,<tag:items:forge:silicon>]
]);

(<item:refinedstorage:cable>).shaped([
    [<tag:items:forge:glass>,<tag:items:forge:glass>,<tag:items:forge:glass>],
    [<item:create:polished_rose_quartz>,(<tag:items:forge:gems/diamond> as IIngredient)|(<tag:items:forge:gems/lapis> as IIngredient),<item:create:polished_rose_quartz>],
    [<tag:items:forge:glass>,<tag:items:forge:glass>,<tag:items:forge:glass>]
]);

var cableAssembly = <recipetype:create:sequenced_assembly>.builder("cable_ass")
    .transitionTo((<item:morered:red_alloy_wire>*64).withTag({"cable in process": 1 as int}))
    .require(<item:morered:red_alloy_wire>*64)
    .loops(6)
    .addOutput(<item:refinedstorage:cable>*32, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:forge:silicon>));
<recipetype:create:sequenced_assembly>.addRecipe(cableAssembly);

(<item:refinedstorage:external_storage>*4).shapeless([<item:refinedstorage:cable>,<tag:items:forge:ender_pearls>,<item:refinedstorage:cable>]);
(<item:refinedstorage:external_storage>*8).shaped([
    [<item:refinedstorage:cable>,<item:refinedstorage:cable>,<item:refinedstorage:cable>],
    [<item:refinedstorage:cable>,<item:minecraft:ender_eye>,<item:refinedstorage:cable>],
    [<item:refinedstorage:cable>,<item:refinedstorage:cable>,<item:refinedstorage:cable>]
]);