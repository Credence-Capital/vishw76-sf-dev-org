@IsTest
private class AccountControllerTest {

    @IsTest
    static void testGetAllActiveAccountsReturnsOnlyActiveAccounts() {
        Account activeAccount = new Account(
            Name = 'Active Test Account',
            Active__c = 'Yes'
        );
        Account inactiveAccount = new Account(
            Name = 'Inactive Test Account',
            Active__c = 'No'
        );
        insert new List<Account>{ activeAccount, inactiveAccount };

        Test.startTest();
        List<Account> results = AccountController.getAllActiveAccounts();
        Test.stopTest();

        System.assertEquals(1, results.size(), 'Only active accounts should be returned');
        System.assertEquals(activeAccount.Id, results[0].Id);
        System.assertEquals('Active Test Account', results[0].Name);
        System.assertEquals('Yes', results[0].Active__c);
    }
}