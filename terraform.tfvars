##AccountEnvironmentMap##
EnvironmentMap = {
  "007499121874" : "dev",
  "524647188960" : "acc",
  "618064187312" : "prd"
}


#Glue job Tags
GlueJobCitiCashBillingCostCenter 	   = "5401-88175400 IT Non-Labor Costs"
GlueJobCitiCashResourceContact   	   = "ruchi.pawar@aegonam.com"
GlueJobCitiCashAGTManaged        	   = "False"
GlueJobCitiCashChannel           	   = "Data Lake"
GlueJobCitiCashResourcePurpose   	   = "ETL Framework Common Components"
GlueJobCitiCashDivision          	   = "aam us"
GlueJobCitiCashDescription             = "business logic for northern trust"
GlueJobCitiCashBusUnitName             =  "aamus"

#Glue Jobs
GlueJobCitiCashVersion                 = "2.0"
GlueJobCitiCashMax_Capacity            = "10"
GlueJobCitiCashTimeout                 = 2880
GlueJobCitiCashWorkerType              = "G.1X"
GlueJobCitiCashNumberOfWorkers         = "10"
GlueJobCitiCashMaxRetries              = "2"
GlueJobCitiCashPythonVersion           = "3"
GlueJobCitiCashJobName                 = "aam-glue-dev-dlk-citicash"
GlueJobCitiCash_S3ScriptLocation       = "citi_cash.py"

#gluescript s3 bucket location
GlueJobCitiCashS3BucketLocation   = "dlk-artifacts"
GlueJobCitiCashS3Key              = "etl-fw-glue-script/citi_cash.py"

#gluepolicydocument
GlueAssumeRoleActionList = ["sts:AssumeRole"]
GlueAssumeRoleEffect = "Allow"
GlueAssumeRolePrincipal = ["glue.amazonaws.com"]
GluePrincipalType = "Service"

#glue script local path
GlueCitiScriptTargetDirectory = "glue-scripts/citi.py"

# Glue staging crawler
GlueStagingCrawlerCitiCashBillingCostCenter 	   = "5401-88175400 IT Non-Labor Costs"
GlueStagingCrawlerCitiCashResourceContact   	   = "ruchi.pawar@aegonam.com"
GlueStagingCrawlerCitiCashAGTManaged        	   = "False"
GlueStagingCrawlerCitiCashChannel           	   = "Data Lake"
GlueStagingCrawlerCitiCashResourcePurpose   	   = "ETL Framework Common Components"
GlueStagingCrawlerCitiCashDivision          	   = "aam us"
GlueStagingCrawlerCitiCashDescription            = "business logic for northern trust"
GlueStagingCrawlerCitiCashBusUnitName            =  "aamus"
GlueStagingCrawlerCitiCashBucketLocation         =  "s3://aamus-s3-dev-dlk-staging-tempdata/blackrock/citicash/"
GlueStagingCrawlerCitiCashCrawlerName            =  "aamus-dev-dlk-staging-crawler-citicash"

# Glue staging  database
GlueStagingDatabaseCitiCashDatabaseName          = "aamus-staging-database-citicash"


# Glue Distilled crawler
GlueDistilledCrawlerCitiCashBillingCostCenter 	   = "5401-88175400 IT Non-Labor Costs"
GlueDistilledCrawlerCitiCashResourceContact   	   = "ruchi.pawar@aegonam.com"
GlueDistilledCrawlerCitiCashAGTManaged        	   = "False"
GlueDistilledCrawlerCitiCashChannel           	   = "Data Lake"
GlueDistilledCrawlerCitiCashResourcePurpose   	   = "ETL Framework Common Components"
GlueDistilledCrawlerCitiCashDivision          	   = "aam us"
GlueDistilledCrawlerCitiCashDescription            = "business logic for northern trust"
GlueDistilledCrawlerCitiCashBusUnitName            =  "aamus"
GlueDistilledCrawlerCitiCashBucketLocation         =  "s3://aamus-s3-dev-dlk-distilled-cleanseddata/blackrock/citicash/"
GlueDistilledCrawlerCitiCashCrawlerName            =  "aamus-dev-dlk-distilled-crawler-citicash"

# Glue Distilled  database
GlueDistilledDatabaseCitiCashDatabaseName          = "aamus-distilled-database-citicash"


#Glue Publication crawler
GluePublicationCrawlerCitiCashBillingCostCenter 	   = "5401-88175400 IT Non-Labor Costs"
GluePublicationCrawlerCitiCashResourceContact   	   = "ruchi.pawar@aegonam.com"
GluePublicationCrawlerCitiCashAGTManaged        	   = "False"
GluePublicationCrawlerCitiCashChannel           	   = "Data Lake"
GluePublicationCrawlerCitiCashResourcePurpose   	   = "ETL Framework Common Components"
GluePublicationCrawlerCitiCashDivision          	   = "aam us"
GluePublicationCrawlerCitiCashDescription            = "business logic for northern trust"
GluePublicationCrawlerCitiCashBusUnitName            =  "aamus"
GluePublicationCrawlerCitiCashBucketLocation         =  "s3://aamus-s3-dev-dlk-publication-cleanseddata/blackrock/citicash/"
GluePublicationCrawlerCitiCashCrawlerName            =  "aamus-dev-dlk-publication-crawler-citicash"

# Glue Publication  database
GluePublicationDatabaseCitiCashDatabaseName          = "aamus-publication-database-citicash"


# Glue Export crawler
GlueExportCrawlerCitiCashBillingCostCenter 	   = "5401-88175400 IT Non-Labor Costs"
GlueExportCrawlerCitiCashResourceContact   	   = "ruchi.pawar@aegonam.com"
GlueExportCrawlerCitiCashAGTManaged        	   = "False"
GlueExportCrawlerCitiCashChannel           	   = "Data Lake"
GlueExportCrawlerCitiCashResourcePurpose   	   = "ETL Framework Common Components"
GlueExportCrawlerCitiCashDivision          	   = "aam us"
GlueExportCrawlerCitiCashDescription            = "business logic for northern trust"
GlueExportCrawlerCitiCashBusUnitName            = "aamus"
GlueExportCrawlerCitiCashBucketLocation         = "s3://aamus-s3-dev-dlk-export/blackrock/citicash/"
GlueExportCrawlerCitiCashCrawlerName            = "aamus-dev-dlk-export-crawler-citicash"

# Glue Export  database
GlueExportDatabaseCitiCashDatabaseName          = "aamus-export-database-citicash"

