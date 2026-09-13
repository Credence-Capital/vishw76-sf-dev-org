trigger AccountTrigger on Account (before insert) {

    if (Trigger.isBefore && Trigger.isInsert) {
        AccountService.setDescription(Trigger.new);
    }
}