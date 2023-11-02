az login
# cd to the right directory
az account set --subscription "Cloud-Native-Lab"
terraform init
terraform validate
terraform plan 
terraform apply
