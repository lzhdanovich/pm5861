@isTest 
private class TestClass1 {
    @isTest
    static void validate() {
       custom444__c b = new custom444__c(Name='test');
       insert b;
    
       b = [SELECT Name FROM custom444__c WHERE Id =:b.Id];

       System.assertEquals('test', b.Name);
    
    }
}