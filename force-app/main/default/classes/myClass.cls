public with sharing class myClass{
    try{
        // Try block
        code_block
    } catch (ExceptionType variableName){
        // Initial catch block\
        // At least the catch block or the finally block must be present.
        code_block
    } catch (Exception e){
        // Optional additional catch statement for other exception types.
        // Note that the general exception type, 'Exception',
        // must be the last catch block when it is used.
        code_block
    } finally{
        // Finally block.
        // At least the catch block or the finally block must be present.
        code_block
    }
}