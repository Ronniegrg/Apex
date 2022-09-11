/*
 Example 1: Before insert trigger
 Trigger on account to update account's industry to 'Education'.
 This trigger will handle only one record at a time, it'll not work in case of bulk records.
 */
trigger HandleSingleRecordTrigger on Account (before insert){
    // Fetch account single record from Trigger.New & update the industry value to 'Education'
    Account objAcc = Trigger.New [0];
    objAcc.Industry = 'Education';
}