trigger RecursiveTrigger on Account (after update){
    if (checkRecursive.runOnce()){
        system.debug('Hello Man');
    }
}