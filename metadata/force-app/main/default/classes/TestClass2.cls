@isTest 
private class TestClass2 {
    @isTest
    static void validate2() {
       custom444__c b = new custom444__c(Name='test');
       insert b;
    
       b = [SELECT Name FROM custom444__c WHERE Id =:b.Id];

       System.assertEquals('testbbb', b.Name);
    
    }
}