public class MetadataExample {
    private Metadata.CustomMetadata customMetadata {get;set;}
    private Metadata.CustomMetadataValue customField {get;set;}
    private Metadata.DeployContainer deployContainer {get;set;}
    
    public MetadataExample(){
        this.customMetadata = new Metadata.CustomMetadata();
        this.customField = new Metadata.CustomMetadataValue();
        this.deployContainer = new Metadata.DeployContainer();
    }
    
    public void updateMetadata(){
        //Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
       	this.customMetadata.fullName = 'MyNamespace__MyMetadataTypeName.MyMetadataRecordName';
        
        //Metadata.CustomMetadataValue customField = new Metadata.CustomMetadataValue();
        customField.field = 'customField__c';
		customField.Value = 'New value';        
        
        customMetadata.Values.Add(CustomField);
        //Metadata.DeployContainer deployContainer = new Metadata.DeployContainer();
        deployContainer.addMetadata(customMetadata);
        
        Id asyncResultId = Metadata.Operations.enqueueDeployment(deployContainer, null);
    }
    
}