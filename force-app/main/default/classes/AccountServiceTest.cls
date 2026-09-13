@IsTest
private class AccountServiceTest {

    @IsTest
    static void testDescriptionIsPopulated() {

        Account acc = new Account(
            Name = 'CI/CD Test Account'
        );

        insert acc;

        Account result = [
            SELECT Id, Name, Description
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals(
            'Created by CI/CD test feature',
            result.Description
        );
    }

    @IsTest
    static void testExistingDescriptionIsPreserved() {

        Account acc = new Account(
            Name = 'Existing Description Account',
            Description = 'Original description'
        );

        insert acc;

        System.assertEquals(
            'Original description',
            acc.Description
        );
    }
}