@isTest
public with sharing class AccountTriggerTest {
    @isTest static void testCreateNewAccounts() {
        List<Account> accounts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name = 'Test Account ' + i, BillingState = 'CA');
            accounts.add(acct);
        }
        Test.startTest();
        insert accounts;
        Test.stopTest();
        List<Account> verifyAccounts = [SELECT Id FROM Account WHERE BillingState =: 'CA'];
        System.assertEquals(200, verifyAccounts.size(), 'Inserted accounts was not equal expected');

    }
}
