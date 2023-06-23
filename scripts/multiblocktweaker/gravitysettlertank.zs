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

var loc = "mbt:visbreaker";

val visbreaker = Builder.start(loc, 3000)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)

            .aisle(
                "     ",
                "FCCCF",
                "FCCCF",
                "FCCCF",
                "F   F",
                "FCCCF",
                "FCCCF",
                "FCCCF",
                "F   F",
                "FCCCF",
                "FCCCF",
                "FCCCF",
                "F   F",
                "FCCCF",
                "FCCCF",
                "FIEIF",
                "FCCCF"
            )
            .aisle(
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "I   I",
                "CCCCC"
            )
            .aisle(
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "I   I",
                "CCCCC"
            )
            .aisle(
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "C   C",
                " PPP ",
                "C   C",
                "C   C",
                "I   I",
                "CCCCC"
            )
            .aisle(
                "     ",
                "FCCCF",
                "FCCCF",
                "FCCCF",
                "F   F",
                "FCCCF",
                "FCCCF",
                "FCCCF",
                "F   F",
                "FCCCF",
                "FCCCF",
                "FCCCF",
                "F   F",
                "FCCCF",
                "FCCCF",
                "FIIIF",
                "FCCCF"
            )

            .where("E", controller.self())
			.where("P", <metastate:gregtech:boiler_casing:1>)
			.where("F", <metastate:gregtech:meta_block_frame_20:4>)
            .where("C", <metastate:gregtech:metal_casing:4>)
            .where("I", CTPredicate.states(<metastate:gregtech:metal_casing:4>)
            
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .build();


    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("visbreaker")
                        .minFluidInputs(1)
                        .maxFluidInputs(2)
                        .minFluidOutputs(1)
                        .maxFluidOutputs(4)
                        .minInputs(0)
						.maxInputs(1)
						.minOutputs(0)
                        .maxOutputs(0)
                        .build())

		.withBaseTexture(<gregtech:metal_casing>.asBlock().definition.getStateFromMeta(4))
		.buildAndRegister();

visbreaker.hasMaintenanceMechanics = true;
visbreaker.hasMufflerMechanics = true;