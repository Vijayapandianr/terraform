module "glueassumerolepolicydocument" {
  source = "./.terraform/modules/reference_modules/iam-policy-document-with-principal"
  IAMActionList = var.GlueAssumeRoleActionList
  Effect = var.GlueAssumeRoleEffect
  PrincipalIdentifier = var.GlueAssumeRolePrincipal
  PrincipalType = var.GluePrincipalType
}

##S3BucketReadPolicy##
data "aws_iam_policy_document" "ETLcommonlambdapolicyfors3ReadDocument" {
  statement {
    actions = ["s3:GetBucketTagging",
      "s3:GetObjectVersionTagging",
      "s3:ListBucketVersions",
      "s3:ReplicateTags",
      "s3:RestoreObject",
      "s3:PutObjectVersionTagging",
      "s3:CreateBucket",
      "s3:ListBucket",
      "s3:GetBucketVersioning",
      "s3:GetBucketNotification",
      "s3:ListMultipartUploadParts",
      "s3:PutObject",
      "s3:GetObject",
      "s3:GetEncryptionConfiguration",
      "s3:PutBucketNotification",
      "s3:AbortMultipartUpload",
      "s3:PutBucketTagging",
      "s3:GetObjectTagging",
      "s3:PutObjectTagging",
      "s3:PutBucketVersioning",
      "s3:GetObjectVersion",
      "s3:DeleteObject"]
    resources = ["arn:aws:s3:::aam*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "etlcommonlambdapolicyfors3Read" {
  name   = "aam-dlk-s3-policy-for-glueciticash"
  policy = data.aws_iam_policy_document.ETLcommonlambdapolicyfors3ReadDocument.json
}

##S3BucketBasePolicy##
data "aws_iam_policy_document" "BaseS3PolicyDocument" {
  statement {
    actions   = ["s3:ListAllMyBuckets", "s3:HeadBucket"]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "ETLCommonlambdapolicyforbases3Read" {
  name   = "aam-dlk-s3-base-policy-for-glueciticash"
  policy = data.aws_iam_policy_document.BaseS3PolicyDocument.json
}

##GluePolicy
data "aws_iam_policy_document" "ETLCommonlambdapolicyforglueDocument" {
  statement {
    actions = ["glue:GetCrawler",
      "glue:BatchGetDevEndpoints",
      "glue:GetTableVersions",
      "glue:GetPartitions",
      "glue:GetMLTransform",
      "glue:UpdateCrawler",
      "glue:GetDevEndpoint",
      "glue:UpdateTrigger",
      "glue:GetTrigger",
      "glue:GetJobRun",
      "glue:GetJobs",
      "glue:GetTriggers",
      "glue:GetWorkflowRun",
      "glue:GetMapping",
      "glue:GetPartition",
      "glue:DeleteConnection",
      "glue:UseMLTransforms",
      "glue:BatchDeleteConnection",
      "glue:StartCrawlerSchedule",
      "glue:GetClassifiers",
      "glue:BatchDeletePartition",
      "glue:DeleteTableVersion",
      "glue:CreateTrigger",
      "glue:CreateUserDefinedFunction",
      "glue:StopCrawler",
      "glue:StopTrigger",
      "glue:DeleteJob",
      "glue:GetCatalogImportStatus",
      "glue:CreateJob",
      "glue:GetTableVersion",
      "glue:GetConnection",
      "glue:ResetJobBookmark",
      "glue:CreatePartition",
      "glue:UpdatePartition",
      "glue:BatchGetPartition",
      "glue:ListJobs",
      "glue:GetTable",
      "glue:GetDatabase",
      "glue:GetDataflowGraph",
      "glue:BatchGetCrawlers",
      "glue:CreateDatabase",
      "glue:BatchDeleteTableVersion",
      "glue:GetPlan",
      "glue:ListCrawlers",
      "glue:GetJobRuns",
      "glue:BatchCreatePartition",
      "glue:SearchTables",
      "glue:GetDataCatalogEncryptionSettings",
      "glue:CreateClassifier",
      "glue:GetWorkflowRunProperties",
      "glue:UpdateTable",
      "glue:DeleteTable",
      "glue:DeleteWorkflow",
      "glue:GetSecurityConfiguration",
      "glue:CreateScript",
      "glue:UpdateWorkflow",
      "glue:GetUserDefinedFunction",
      "glue:StartWorkflowRun",
      "glue:StopCrawlerSchedule",
      "glue:GetUserDefinedFunctions",
      "glue:GetClassifier",
      "glue:ListWorkflows",
      "glue:UpdateDatabase",
      "glue:GetTables",
      "glue:CreateTable",
      "glue:BatchStopJobRun",
      "glue:DeleteUserDefinedFunction",
      "glue:CreateConnection",
      "glue:CreateCrawler",
      "glue:BatchGetWorkflows",
      "glue:BatchGetJobs",
      "glue:StartJobRun",
      "glue:BatchDeleteTable",
      "glue:UpdateClassifier",
      "glue:CreateWorkflow",
      "glue:DeletePartition",
      "glue:GetJob",
      "glue:GetWorkflow",
      "glue:GetConnections",
      "glue:GetCrawlers",
      "glue:CreateSecurityConfiguration",
      "glue:PutWorkflowRunProperties",
      "glue:DeleteDatabase",
      "glue:StartTrigger",
      "glue:ImportCatalogToGlue",
      "glue:PutDataCatalogEncryptionSettings",
      "glue:StartCrawler",
      "glue:UpdateJob",
      "glue:GetJobBookmark",
      "glue:StartImportLabelsTaskRun",
      "glue:DeleteClassifier",
      "glue:StartExportLabelsTaskRun",
      "glue:UpdateUserDefinedFunction",
      "glue:ListTriggers",
      "glue:GetSecurityConfigurations",
      "glue:GetDatabases",
      "glue:UpdateCrawlerSchedule",
      "glue:UpdateConnection",
      "glue:BatchGetTriggers",
      "glue:GetWorkflowRuns",
      "glue:DeleteTrigger",
    "glue:GetCrawlerMetrics"]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "ETLCommonPolicyGlue" {
  name   = "aam-dlk-glue-policy-glueciticash"
  policy = data.aws_iam_policy_document.ETLCommonlambdapolicyforglueDocument.json
}



##CloudWatchLogsPolicy##
data "aws_iam_policy_document" "CloudWatchlogsDocument" {
  statement {
    actions   = ["logs:*"]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "CloudWatchlogsPolicy" {
  name   = "aam-dlk-logs-policy-glueciticash"
  policy = data.aws_iam_policy_document.CloudWatchlogsDocument.json
}

##END OF IAM POLICIES##