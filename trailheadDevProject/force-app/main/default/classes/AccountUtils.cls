public with sharing class AccountUtils {
    public static List<Account> accountsByState(String stateAbbrevs) {
        return [SELECT Id, Name FROM Account WHERE BillingState=:stateAbbrevs];
    }
}
