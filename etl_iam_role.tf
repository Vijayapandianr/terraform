##START OF IAM ROLES##
##gluejob

resource "aws_iam_role" "ETLCitiCash" {
  name               = "aam-dlk-gluejob-citicash-role"
  assume_role_policy = module.glueassumerolepolicydocument.IAMPolicyDocumentWithPrincipalJson
  managed_policy_arns = [
    aws_iam_policy.etlcommonlambdapolicyfors3Read.arn,
    aws_iam_policy.CloudWatchlogsPolicy.arn,
    aws_iam_policy.ETLCommonlambdapolicyforbases3Read.arn,
    aws_iam_policy.ETLCommonPolicyGlue.arn
    ]
}

resource "aws_iam_role" "ETLCitiCashCrawler" {
  name               = "aam-dlk-gluecrawler-citicash-role"
  assume_role_policy = module.glueassumerolepolicydocument.IAMPolicyDocumentWithPrincipalJson
  managed_policy_arns = [
    aws_iam_policy.etlcommonlambdapolicyfors3Read.arn,
    aws_iam_policy.CloudWatchlogsPolicy.arn,
    aws_iam_policy.ETLCommonlambdapolicyforbases3Read.arn,
    aws_iam_policy.ETLCommonPolicyGlue.arn
    ]
}