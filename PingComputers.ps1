#Ping computers
Test-Connection
$ping = New-Object system.net.networkinformation.ping
$ping.send("InstertWorkComputerName")
$PING.Send("InsertServerName")
$PING.Send("InsertDomainComputerName")

#Ping computers by IP Address
$ping = New-Object System.Net.NetworkInformation.Ping
$ping.send("InsertIPAddress") 
