#modloaded create doom

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_argent_bolt")
    .require(<item:doom:argent_energy>)
    .transitionTo(<item:doom:argent_energy>)
    .loops(1)
    .addOutput(<item:doom:argent_bolt>, 1)
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(ContextualConstants.IRON_INGOT))
    .addStep<mods.createtweaker.PressingRecipe>((rb) => rb) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_unmaykr_bolt")
    .require(<item:doom:argent_bolt>)
    .transitionTo(<item:doom:argent_bolt>)
    .loops(1)
    .addOutput(<item:doom:unmaykr_bolt>, 1)
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:doom:argent_energy>))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:doom:argent_energy>))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:doom:argent_energy>))
    .addStep<mods.createtweaker.PressingRecipe>((rb) => rb) );