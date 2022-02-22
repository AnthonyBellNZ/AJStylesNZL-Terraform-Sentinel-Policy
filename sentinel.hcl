module "azure-functions" {
    source = "./azure-functions.sentinel"
}

    module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}
    
    
policy "enforce-mandatory-tags" {
    source = "./enforce-mandatory-tags.sentinel"
    enforcement_level = "soft-mandatory"
}
        
 policy "enforce-mandatory-location" {
    source = "./enforce-location.sentinel"
    enforcement_level = "soft-mandatory"
}
     
        
        
 policy "enforce-mandatory-vmsize" {
    source = "./restrict-vm-size.sentinel"
    enforcement_level = "hard-mandatory"
}