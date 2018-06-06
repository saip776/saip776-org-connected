trigger AccountDeletion on Account (before insert) {

    for(Account a : [SELECT Id from account where id in (select accountid from opportunity) and id in :Trigger.old])
    {
        trigger.oldmap.get(a.id).addError('Cannot delete account with related opportunities.');
    }
}