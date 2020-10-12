# da-projekt-do-deploy
Example of DigitalOcean deployment for Czechitas DA: Projekt


## How to create environment using Terraform

#### Prepare your DigitalOcean account

1. Sign-up
1. Create an API token: Account -> API -> Tokens/Keys -> Generate New Token
1. Create an SSH key: Account -> Settings -> Security -> Add SSH Key. 
This key will be used to authenticate SSH connection to the server. 
You will need name of this key later.


#### Install and configure Terraform

1. Install [Terraform](https://www.terraform.io/)
1. Install SSH agent and import your SSH key to it. It must be running when you execute `terraform apply`. 
Terraform will establish SSH connection to the new server, and it doesn't support password protected SSH keys. So we need SSH agent. 
1. Switch to `./terraform` directory
1. Run `terraform init` - this will initialize local state storage.
1. Create `terraform.tfvars` file with content like:
    ```
    do_token = "YOUR_DIGITALOCEAN_API_TOKEN"
    ssh_key_name = "NAME_OF_THE_SSH_KEY_IN_DIGITALOCEAN"
    ```
1. Run `terraform plan` to review all the resources that will be created.
1. Run `terraform apply` - all the resources will be created.
1. Run `terraform destroy` to destroy all the created resources.
