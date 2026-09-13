@IsTest
private class OpportunityServiceTest {

    @IsTest
    static void testLowValueOpportunity() {
        Opportunity opp = new Opportunity(
            Name = 'CI/CD Coverage Test',
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            Amount = 5000
        );

        OpportunityService.processOpportunity(opp);

        System.assertEquals(
            'Low Value Opportunity',
            opp.Description
        );
    }
}