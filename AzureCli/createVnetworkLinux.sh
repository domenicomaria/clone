az group create --name miogrupporisorse-rg --location eastus

az network vnet create --name myVNet --resource-group miogrupporisorse-rg --subnet-name default

az vm create --resource-group miogrupporisorse-rg --name myVM1 --image UbuntuLTS --generate-ssh-keys --public-ip-address myPublicIP-myVM1 --no-wait

az vm create --resource-group miogrupporisorse-rg --name myVM2 --image UbuntuLTS --public-ip-address myPublicIP-myVM2 --generate-ssh-keys

# attenzione segue parte interattiva , toglierla ed eseguire solo la parte sopra se in modalità unattended
az network public-ip show --resource-group miogrupporisorse-rg  --name myPublicIP-myVM2 --query ipAddress --output tsv

ssh <ipAddress>

az group delete --name miogrupporisorse-rg --yes
