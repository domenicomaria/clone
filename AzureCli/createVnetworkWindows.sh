az group create --name miogrupporisorse-rg --location eastus

az network vnet create --name myVNet --resource-group miogrupporisorse-rg --subnet-name default

az vm create --resource-group miogrupporisorse-rg --name myVM1 --image Win2019Datacenter --public-ip-sku Standard --public-ip-address myPublicIP-myVM1 --admin-username azureuser 

az vm create --resource-group miogrupporisorse-rg --name myVM2 --image Win2019Datacenter --public-ip-sku Standard 
--public-ip-address myPublicIP-myVM2 --admin-username azureuser

az vm open-port --port 80 --resource-group miogrupporisorse-rg --name myVM1

az vm open-port --port 80 --resource-group miogrupporisorse-rg --name myVM2

#Segue connessione remota a VM1 e VM2.
#Su Shell VM1 Windows:
ping myVM2

#Su Shell VM2 Windows:
ping myVM1

#Per scoprire IP rete locale:
ipconfig /all

#Da Azure:
az group delete --name miogrupporisorse-rg --yes