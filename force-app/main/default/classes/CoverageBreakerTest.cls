@IsTest
private class CoverageBreakerTest {

    @IsTest
    static void testMethods01To10() {
        Test.startTest();

        System.assertEquals('01', CoverageBreaker.method01());
        System.assertEquals('02', CoverageBreaker.method02());
        System.assertEquals('03', CoverageBreaker.method03());
        System.assertEquals('04', CoverageBreaker.method04());
        System.assertEquals('05', CoverageBreaker.method05());
        System.assertEquals('06', CoverageBreaker.method06());
        System.assertEquals('07', CoverageBreaker.method07());
        System.assertEquals('08', CoverageBreaker.method08());
        System.assertEquals('09', CoverageBreaker.method09());
        System.assertEquals('10', CoverageBreaker.method10());

        Test.stopTest();
    }

    @IsTest
    static void testMethods11To20() {
        Test.startTest();

        System.assertEquals('11', CoverageBreaker.method11());
        System.assertEquals('12', CoverageBreaker.method12());
        System.assertEquals('13', CoverageBreaker.method13());
        System.assertEquals('14', CoverageBreaker.method14());
        System.assertEquals('15', CoverageBreaker.method15());
        System.assertEquals('16', CoverageBreaker.method16());
        System.assertEquals('17', CoverageBreaker.method17());
        System.assertEquals('18', CoverageBreaker.method18());
        System.assertEquals('19', CoverageBreaker.method19());
        System.assertEquals('20', CoverageBreaker.method20());

        Test.stopTest();
    }
}