# Youtube Lab: VM, RBAC, Policy, Cost Management

**Certification:** AZ-104  
**Date completed:** 2026-10-08  

## Scenario

> The company wants to host an app on a virtual machine, they need to give access to this machine to the team in a secure way using Entra ID. The company also wants to ensure compliance with an Azure policy and wants to track costs with Budget Alerts.


## What I Did

I created a VM that uses an SSH key for ssh login:

![](./files/vm.jpg)

To better manage the access to this vm and others, I created a security group that will hold the neccessary roles:

![](./files/security_group.jpg)

It has the Key Vault Administrator role so that the people can access the generated SSH key inside a key vault:

![](./files/key_vault_with_ssh_key.jpg)

There is also another way to access the VM using Entra ID and the Azure Cloud Shell. Azure needs to install some addons but it does that automatically and so one can easily access the VM's shell:

![](./files/vm_access_azure_web_cli_entra_id.jpg)


Now I created a policy initiative with policies that let resources inherit certain tags from their resource groups and also limit the allowed resources that can be created to only VMs. When trying to create a vnet, I got an error:

![](./files/deployment_error_policy_violation.jpg)

And the inherited tag policy also works now. It is applied when an azure resource gets updated (like adding nonsensical tags):

![](./files/tag_inheritance_during_update.jpg)

or when one creates a new resource:

![](./files/tag_inheritance_new_resource.jpg)


Finally, I created a Budget alert that sends emails when certain cost thresholds are reached:

![](./files/budgets_alarm.jpg)



## Resources

- Lab Recommendation from Youtube Video: https://www.youtube.com/watch?v=yRjcazpYEH4





