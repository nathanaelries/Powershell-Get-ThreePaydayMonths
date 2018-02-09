$LastPayDate = (Get-Date 2018-2-9)
$Days = 14
$Total = $LastPayDate
$Months = @()
while($Total.Year -eq (Get-Date).Year){
$Months += ($Total.Month).ToString()
$Total = $Total.AddDays($Days)
}

($Months | Group) | Where-Object {$_.Group.Count -gt 2} | ForEach-Object {(Get-Culture).DateTimeFormat.GetMonthName($_.Name)}