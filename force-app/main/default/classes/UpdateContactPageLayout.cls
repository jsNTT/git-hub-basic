public class UpdateContactPageLayout {
    
    public Metadata.Layout addLayoutItem(){
        List<Metadata.Metadata> layoutsList = Metadata.Operations.retrieve(Metadata.MetadataType.Layout
                                                                      , new List<String> {'Contact-Contact Layout'});
        Metadata.Layout layoutMetadata = (Metadata.Layout)layoutsList.get(0);
        
        Metadata.LayoutSection contactLayoutSection = null;
        
        List<Metadata.LayoutSection> layoutSections = layoutMetadata.layoutSections;
        for (Metadata.LayoutSection section : layoutSections) {
            if (section.label == 'Additional Information') {
                contactLayoutSection = section;
                break;
            }
        }
        
        List<Metadata.LayoutColumn> contactColumns = contactLayoutSection.LayoutColumns;
        List<Metadata.LayoutItem> contactLayoutItems = contactColumns.get(0).layoutItems;
        
        Metadata.LayoutItem newField = new Metadata.LayoutItem();
        newField.behavior = Metadata.UiBehavior.Edit;
        newField.field = 'AMAPI__Apex_MD_API_Twitter_name__c';
        contactLayoutItems.Add(newField);
        
        return layoutMetadata;
    }
}