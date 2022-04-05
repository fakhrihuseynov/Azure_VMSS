param(    
    [Parameter(Mandatory = $True)][Alias('repo')]
    [string]$repoName
)
$ciPipelineName = "$repoName.auto.ci.build-only"
$ciCdPipelineName = "$repoName.auto.cicd"
# CI/CD Pipeline creation
az pipelines create --name $ciCdPipelineName `
 --branch "feature/100998-pipelines-adding" `
 --org https://dev.azure.com/Wizzair-Web `
 --project  mWizz `
 --folder-path "\Frontend\build_release" `
 --repository $repoName `
 --repository-type tfsgit `
 --yaml-path "/deployment/yaml/azure-pipelines.yml" `
 --skip-first-run true

# CI pipeline creation
az pipelines create --name $ciPipelineName `
 --branch "feature/100998-pipelines-adding" `
 --org https://dev.azure.com/Wizzair-Web `
 --project  mWizz `
 --folder-path "\Frontend\build_only" `
 --repository $repoName `
 --repository-type tfsgit `
 --yaml-path "/deployment/yaml/build-only-pipeline.yml" `
 --skip-first-run true