/*
 Example 2: Before insert trigger
 Trigger on account to update account's industry to 'Education'.
 This trigger will handle bulk records at a single time.
 */
trigger HandleBulkRecordTrigger on Account (before insert){
    // Fetch all the account records using for loop & update the industry value to 'Education'
    for (Account objAcc : Trigger.New ){
        objAcc.Industry = 'Education';
    }
}