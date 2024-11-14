public with sharing class CampingListController {
    @AuraEnabled
    public static List<Camping_Item__c> getItems(){
        try {
            return [select Name, Quantity__c, Price__c, Packed__c from Camping_Item__c];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item){
        try {
            if(item != null){
                upsert item;
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return item;
    }

}