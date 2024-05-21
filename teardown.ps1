#!/usr/bin/env pwsh
# Reference Peadar Grant notes

$StackName = "orderfleet"

Write-Host 'emptying bucket... ' -NoNewLine
$BucketName=((aws cloudformation describe-stacks --stack orderfleet | ConvertFrom-Json).Stacks[0].Outputs | Where-Object OutputKey -eq fleetbucketname)[0].OutputValue
aws s3 rm s3://$BucketName/fleet.json
Write-Host 'ok' -ForegroundColor Green

Write-Host 'delete stack... ' -NoNewLine
aws cloudformation delete-stack --stack-name $StackName 
Write-Host 'ok' -ForegroundColor Green

Write-Host 'Waiting for stack to delete... ' -NoNewLine
aws cloudformation wait stack-delete-complete --stack-name $StackName
Write-Host 'ok' -ForegroundColor Green

Write-Host 'The fleet has been wipped out!!! ' -ForegroundColor Green
