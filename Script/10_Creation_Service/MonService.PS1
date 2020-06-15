while (1)
{
	rm c:\labo\Base.log
	if ($?) 
	{
		Write-EventLog -LogName "Application" -Source "MonService" -EventID 1234 -EntryType Error -Message "L'application a planté"
	}
	Sleep1	
}

