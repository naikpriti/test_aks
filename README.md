![image](https://github.com/user-attachments/assets/f7bb07fa-7222-41d5-8938-2677a6aed58c)Step 1: Create an Azure Service Principal
First, create a Service Principal in Azure that your GitHub Actions workflow will use to authenticate. You can do this using the Azure CLI:

bash
Copy code
az ad sp create-for-rbac --name "github-action-sp" --role Contributor \
    --scopes /subscriptions/<your-subscription-id> \
    --sdk-auth
Replace <your-subscription-id> with your actual Azure subscription ID.

The command will output a JSON object similar to the following:

json
Copy code
{
  "clientId": "your-client-id",
  "clientSecret": "your-client-secret",
  "subscriptionId": "your-subscription-id",
  "tenantId": "your-tenant-id",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
Step 2: Add Azure Credentials to GitHub Secrets
Copy the entire JSON output from the previous step and add it as a secret in your GitHub repository:

Go to your GitHub repository.
Click on Settings.
Select Secrets and variables > Actions.
Click New repository secret.
Name the secret AZURE_CREDENTIALS.
Paste the JSON output into the secret value field.
Save the secret.


**AKS**

az login

az account set --subscription subscription_id

az aks get-credentials --resource-group  resource_group_name --name cluster_name

**EKS**

Step 1: Install AWS CLI

Step 2: Install kubectl

Step 3: Configure AWS CLI
aws configure

aws eks --region <your-region> update-kubeconfig --name <your-cluster-name>



