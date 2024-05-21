# View status of the "orderfleet" stack
$StackName = "orderfleet"

# Get stack status
$stackStatus = aws cloudformation describe-stacks --stack-name $StackName | ConvertFrom-Json | Select-Object -ExpandProperty Stacks | Select-Object -ExpandProperty StackStatus

if($stackStatus)
{
    Write-Host "Stack Status: $stackStatus"


    # Get the bucket name from the stack outputs
    $BucketName = (aws cloudformation describe-stacks --stack-name $StackName | ConvertFrom-Json).Stacks[0].Outputs | Where-Object OutputKey -eq "fleetbucketname" | Select-Object -ExpandProperty OutputValue
    
    Write-Host "Bucket Name: $BucketName"
    
    if (Test-Path .\fleet.json) {
        # Read the contents of the file
        $fileContent = Get-Content .\fleet.json 
        Write-Host "Contents of fleet.json:" -NoNewLine

        Write-Host $fileContent
    } else {
        Write-Host "Failed to download fleet.json from S3 bucket."
    }
}
else
{
    Write-Host "Stack Status: Can't find the fleet"
}

Write-Host "Viewing status of the 'orderfleet' stack completed."