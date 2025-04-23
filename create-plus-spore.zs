#modloaded create spore

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_spore_circuit_board")
 .require(<item:spore:compound_plate>)
 .transitionTo(<item:spore:compound_plate>)
 .loops(3)
 .addOutput(<item:spore:circuit_board>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(ContextualConstants.REDSTONE_DUST))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:repeater>)) );