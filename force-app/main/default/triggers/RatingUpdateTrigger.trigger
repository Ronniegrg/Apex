/**
 * Example 1: Before insert trigger
 * Trigger on Account to update the account's rating to 'Cold' if account's industry is 'Education' or 'Finance'.
 */
trigger RatingUpdateTrigger on Account (before insert, before update){
    for (Account objAcc : Trigger.New ){
        if (objAcc.Industry != null && (objAcc.Industry == 'Education' || objAcc.Industry == 'Finance')){
            objAcc.Rating = 'Cold';
        }
    }
}