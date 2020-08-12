Import-Module ActiveDirectory
$users = Get-ADUser -Filter *
foreach ($user in $users)
{
    $email = $user.samaccountname + '@domain.com'
    Set-ADUser -Identity $user.samaccountname -EmailAddress $email
}
