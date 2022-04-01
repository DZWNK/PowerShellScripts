#Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force -Verbose

#Connect-AzAccount -Tenant '00240085-d32f-46b3-bd79-9dd50bcfce05' -SubscriptionId 'c96476ad-3a01-4693-a59d-a1ff4f21a7cd'
Connect-AzAccount -Credential 
#az login --username 'petexbell@hotmail.com'
#az vm list

$SecureStringPwd = $sp.PasswordCredentials.SecretText | ConvertTo-SecureString -AsPlainText -Force
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $sp.AppId, $SecureStringPwd
Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant $tenantId

#either find a way to connect with azure or make a service account (serviuce principal)
#MAKE EVERYTHING IDEMPOTENT
# validate that your authentication
# create a vm through a script
# connect dsc to vm,
# install docker onto vm
# delete them
# some sort of cleanup