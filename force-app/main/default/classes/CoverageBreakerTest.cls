@IsTest
private class CoverageBreakerTest {

    @IsTest
    static void testMethod01() {
        Test.startTest();

        String result = CoverageBreaker.method01();

        Test.stopTest();

        System.assertEquals('01', result);
    }
}