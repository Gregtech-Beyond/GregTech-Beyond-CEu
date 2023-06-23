#loader gregtech

import crafttweaker.item.IItemStack;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.recipe.helpers;
import mods.gregtech.MaterialFlag;
import mods.gregtech.MaterialFlagBuilder;
import mods.gregtech.MetaItem;

MetaItem.create(651, "bioware_mainframe");
MetaItem.create(650, "bioware_computer");
MetaItem.create(649, "bioware_assembly");
MetaItem.create(648, "bioware_processor");

MetaItem.create(655, "opticalmainframe");
MetaItem.create(654, "opticalcomputer");
MetaItem.create(653, "opticalassembly");
MetaItem.create(652, "opticalprocessor");

MetaItem.create(659, "exoticmainframe");
MetaItem.create(658, "exoticcomputer");
MetaItem.create(657, "exoticassembly");
MetaItem.create(656, "exoticprocessor");

MetaItem.create(663, "cosmicmainframe");
MetaItem.create(662, "cosmiccomputer");
MetaItem.create(661, "cosmicassembly");
MetaItem.create(660, "cosmicprocessor");

MetaItem.create(665, "circuit.supracausal.assembly");
MetaItem.create(666, "circuit.supracausal.computer");
MetaItem.create(667, "circuit.supracausal.mainframe");
MetaItem.create(664, "circuit.supracausal.processor");

MetaItem.create(200000, "opticalprocessingcore");
MetaItem.create(200001, "exoticprocessingcore");
MetaItem.create(200002, "supracausal.processing.core");


