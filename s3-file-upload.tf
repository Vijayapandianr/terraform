module "UploadCopyFilesLambdaPackageToS3" {
  source                       = "./.terraform/modules/reference_modules/s3-file-upload"
  BusinessUnit                 = var.GlueJobCitiCashBusUnitName
  Environment                  = lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev")
  S3Key                        = var.GlueJobCitiCashS3Key
  S3BucketLocation             = var.GlueJobCitiCashS3BucketLocation
  LambdaPackageTargetDirectory = var.GlueCitiScriptTargetDirectory
  LambdaPathPrefix             = path.root
}

output "CopyFilesKeyID" {
  value = module.UploadCopyFilesLambdaPackageToS3.S3KeyID
}

output "CopyFilesObjectVersionID" {
  value = module.UploadCopyFilesLambdaPackageToS3.S3ObjectVersionID
}