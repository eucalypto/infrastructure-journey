# Lab: [Title from Microsoft Learn]

**Certification:** AZ-104  
**Module:** [Module name]()  
**Date completed:** 2026-09-DD  

## Scenario

> _Rewrite the lab's business context in your own words. Example: "Contoso Ltd needs to segment network access so the finance team's VMs cannot reach the dev team's VMs, while both can access a shared database subnet."_

## Architecture

![Architecture diagram](./diagram.png)

_Editable source: diagram.drawio_

## What I Did

Brief narrative of implementation steps — not a copy of the lab instructions, but your own summary of the decisions made and resources created.

## Screenshots

| Step                      | Screenshot                             |
| ------------------------- | -------------------------------------- |
| Resource group created    | ![](./screenshots/01-rg-created.png)   |
| NSG rules configured      | ![](./screenshots/02-nsg-rules.png)    |
| Connectivity test passing | ![](./screenshots/03-ping-success.png) |

## Gotchas & Learnings

- **Problem:** [What went wrong or confused you]  
    **Fix:** [How you resolved it]  
    **Takeaway:** [What you now understand better]
    
- **Problem:** ...  
    **Fix:** ...  
    **Takeaway:** ...
    

## IaC Version

After completing this lab via the portal, I recreated the infrastructure using Bicep:

```bash
az deployment group create --resource-group ContosoResourceGroup --template-file main.bicep
```

See [main.bicep](./main.bicep) for the full template.

## Resources

- Microsoft Learn module link
- GitHub lab instructions link




