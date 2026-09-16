# Project: Set up a UTM Virtual Machnie to isolate AI agent execution for security

**Date completed:** 2026-04-DD  

## Scenario

> _I want to execute AI agents and give them permission to execute their own commands. But this has high damage potential: deletion of data or leakage of data. Also there seems to be a high amount of supply chain attacks on AI tools because many people use them carelessly. So I want to build an environment that contains the blast radius of a rouge AI. There are several options and I have chosen to create a virtual machnie with UTM on my Macbook that will run an ubuntu instance._

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
    
- **Problem:** What solution to pick?  
    **Fix:** There are several options, apple has recently published a lightweight vm solution, which is interesting but I expect the help forums to be few at this time. Also Docker has a new "Sandboxes" soluti, but it's still in "expelimental" state. Also, container solutions have different weaknesses and strengths as a full VM. Since I'm already using UTM, I have chosen to use it for this case as well.   
    **Takeaway:** Compare the solutions and be aware of what you want and consider the trade-offs of the different solutions.

- **Problem:** If the AI agent works on a local git repository that points to github as the central cloud repo, it could force push and delete the code.  
    **Fix:** Turns out this is not such a big issue as I thoght. I'm using SSH Keys on my mac to sync to github and those are not stored in the .git repository. As long as I only share the project folders with the VM and not the `~/.ssh/` folder, the AI gent in the VM cannot git push at all! Also, github offers ways to harden the account and repositories with granular permission tokens if needed. For now I will simply manually push from the mac system.   
    **Takeaway:** Think of every way, a rogue AI could make damage by deleting or leaking data. But this time, the solution is already there and easy.    


## Resources

- Microsoft Learn module link
- GitHub lab instructions link




