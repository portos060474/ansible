#!powershell
# WANT_JSON

If ($args.Length -gt 0)
{
   $params = Get-Content $args[0] | ConvertFrom-Json;
}

$data = 'FIXME';

$result = '{}' | ConvertFrom-Json;
$result | Add-Member -MemberType NoteProperty -Name fixme -Value $data;
echo $result | ConvertTo-Json;
