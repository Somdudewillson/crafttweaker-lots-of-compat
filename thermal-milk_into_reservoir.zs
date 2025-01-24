#modloaded thermal thermal_expansion
#modloader forge

import crafttweaker.forge.api.event.interact.EntityInteractEvent;
import crafttweaker.api.data.IData;
import crafttweaker.api.capability.Capabilities;
import crafttweaker.api.capability.IFluidHandlerItem;
import crafttweaker.api.capability.IFluidHandler;
import crafttweaker.api.world.InteractionResult;

events.register<crafttweaker.forge.api.event.interact.EntityInteractEvent>(event => {
    if (event.target.type != <entitytype:minecraft:cow>) { return; }
    if (event.itemStack.definition != <item:thermal:fluid_reservoir>.definition) { return; }
    if ( event.itemStack.hasTag && ("Mode" in event.itemStack.tag) && event.itemStack.tag["Mode"] == 1 ) { return; }

    var fluidHandlerStack = event.itemStack.getInternal().getCapability<IFluidHandlerItem>(Capabilities.FLUID_ITEM);
    if (!fluidHandlerStack.isFluidValid(0, <fluid:minecraft:milk>)) { return; }
    var filledMilk = fluidHandlerStack.fill(<fluid:minecraft:milk> * 1000, event.entity.isCreative ? <constant:forge:fluid_action:simulate> : <constant:forge:fluid_action:execute>);

    if (filledMilk > 0) {
        event.setAllow();
        event.entity.playSound(<soundevent:minecraft:entity.cow.milk>, 1.0, 1.0);
        event.cancellationResult = <constant:minecraft:world/interactionresult:success>;
        event.cancel();
    }
});