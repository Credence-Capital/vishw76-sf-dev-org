@IsTest
private class OpportunityServiceTest {

    @IsTest
    static void testLowValueOpportunity() {
        Opportunity opp = new Opportunity(
            Name = 'Low Value Opportunity',
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            Amount = 5000
        );

        Test.startTest();
        OpportunityService.processOpportunity(opp);
        Decimal discount = OpportunityService.calculateDiscount(opp);
        Test.stopTest();

        System.assertEquals(
            'Low Value Opportunity',
            opp.Description
        );
        System.assertEquals(0, discount);
    }

    @IsTest
    static void testStandardOpportunity() {
        Opportunity opp = new Opportunity(
            Name = 'Standard Opportunity',
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            Amount = 20000
        );

        Test.startTest();
        OpportunityService.processOpportunity(opp);
        Decimal discount = OpportunityService.calculateDiscount(opp);
        Test.stopTest();

        System.assertEquals(
            'Standard Opportunity',
            opp.Description
        );
        System.assertEquals(1000, discount);
    }

    @IsTest
    static void testHighValueOpportunity() {
        Opportunity opp = new Opportunity(
            Name = 'High Value Opportunity',
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            Amount = 150000
        );

        Test.startTest();
        OpportunityService.processOpportunity(opp);
        Decimal discount = OpportunityService.calculateDiscount(opp);
        Test.stopTest();

        System.assertEquals(
            'High Value Opportunity',
            opp.Description
        );
        System.assertEquals(30000, discount);
    }
}