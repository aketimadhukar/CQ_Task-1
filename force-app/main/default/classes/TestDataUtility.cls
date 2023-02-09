@isTest
public class TestDataUtility {
    
    public static user createUser(string profileId,string userName){
        User usr = new User(Alias = 'aa', Email='testuser111@testorg.com',
                            EmailEncodingKey='UTF-8', FirstName='yhsl',LastName='test', LanguageLocaleKey='en_US',
                            LocaleSidKey='en_US', ProfileId = profileId,
                            TimeZoneSidKey='America/Los_Angeles', UserName=userName);
        insert usr;
        return usr;
    }
 
    public static Account createAccount(String name, Boolean doInsert) {
        Account acc = new Account(name = name);
        if(doInsert) {
            insert acc;
        }
        return acc;
    }
    
    public static Product2 createProduct(String name,String productCode, Boolean doInsert) {
        Product2 newProduct = new Product2();
        newProduct.Name = name;
        newProduct.Family = 'Dessert';
        newProduct.ProductCode = productCode;
        newProduct.IsActive = true;
        if(doInsert) {
            insert newProduct;
        }
        return newProduct;
    }
    
    public static SQX_Part__c createPart(String name,String productCode,string ProductId, Boolean doInsert) {
        SQX_Part__c newPart = new SQX_Part__c();
        newPart.Name = name;
        if(ProductId != null && ProductId != ''){
            newPart.Product__c = ProductId;
        }
        newPart.Part_Number__c = productCode;
        newPart.Active__c = true;
        if(doInsert) {
            insert newPart; 
        }
        return newPart;
    }
    

}
