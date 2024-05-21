
#!/usr/bin/env pwsh
# orderfleet stack
# Reference Peadar Grant notes

$StackName = "orderfleet"
Write-Host 'Step1' -NoNewLine
Write-Host 'creating stack... ' -NoNewLine
aws cloudformation create-stack --stack-name $StackName --template-body file://template.yml --capabilities CAPABILITY_NAMED_IAM
Write-Host 'Created' -ForegroundColor Green

Write-Host 'Waiting for the creation of the stack... ' -NoNewLine
aws cloudformation wait stack-create-complete --stack-name $StackName
Write-Host 'Created' -ForegroundColor Green

Write-Host 'Uploading initial fleet data...' -NoNewLine
$BucketName=((aws cloudformation describe-stacks --stack orderfleet | ConvertFrom-Json).Stacks[0].Outputs | Where-Object OutputKey -eq fleetbucketname)[0].OutputValue
aws s3 cp fleet.json s3://$BucketName/fleet.json
Write-Host 'done' -ForegroundColor Green

Write-Host 'The armada is ready sir.' -ForegroundColor Green
