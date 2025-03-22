Create Service Connection via Azure DevOps

1. Create Service Principal on Azure
az ad sp create-for-rbac --name "my-sp" --role Contributor --scopes /subscriptions/<subscription-id>

This outputs:

{
  "appId": "xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "password": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "tenant": "xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}

2. Assign Required Role to Azure subscription

az role assignment create --assignee <appId> --role "Contributor" --scope /subscriptions/<subscription-id>

3. Configure in Azure DevOps

Configure in Azure Devops

- [ ] Go to Azure DevOps → Service connections.
- [ ] Click New service connection → Azure Resource Manager
- [ ] Choose Service Principal (manual)
- [ ] Enter below details
Subscription ID
Service Principal Client ID
Service Principal Key (password)
Tenant ID

- [ ] Click Verify and save
