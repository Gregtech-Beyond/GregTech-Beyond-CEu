import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IPatternMatchContext;
import mods.gregtech.multiblock.functions.ICheckRecipeFunction;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IUpdateFormedValidFunction;
import mods.gregtech.multiblock.functions.IFormStructureFunction;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.ICompleteRecipeFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.RecipeMap;

var loc = "mbt:biovat";

val biovat = Builder.start(loc, 3001)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)

            .aisle(
                "CCCCC",
                "GGGGG",
                "GGGGG",
                "CCECC"
            )
            .aisle(
                "CCCCC",
                "G   G",
                "G   G",
                "CCCCC"
            )
            .aisle(
                "CCCCC",
                "G   G",
                "G   G",
                "CCCCC"
            )
            .aisle(
                "CCCCC",
                "G   G",
                "G   G",
                "CCCCC"
            )
            .aisle(
                "CCCCC",
                "GGGGG",
                "GGGGG",
                "CCCCC"
            )

            .where("E", controller.self())
			.where("G", <blockstate:gregtech:transparent_casing>)
            .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
            
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .build();


    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("biovat")
                        .minFluidInputs(0)
                        .maxFluidInputs(3)
                        .minFluidOutputs(0)
                        .maxFluidOutputs(3)
                        .minInputs(0)
						.maxInputs(6)
						.minOutputs(0)
                        .maxOutputs(6)
                        .build())

		.withBaseTexture(<gregtech:metal_casing>.asBlock().definition.getStateFromMeta(5))
		.buildAndRegister();

biovat.hasMaintenanceMechanics = true;
biovat.hasMufflerMechanics = false;


<recipemap:biovat>.recipeBuilder() .inputs(<metaitem:dustMeat> * 4, <metaitem:dustSalt> * 4, <metaitem:dustCalcium> * 4, <metaitem:dustAgar> * 4) .fluidInputs(<liquid:mutagen> * 4000) .fluidOutputs(<liquid:raw_growth_medium>*1000) .EUt(29599) .duration(1000) .buildAndRegister();



