# Project: Set up my Azure Subscription with best practices


## Scenario

> Until now I could use a temporary Azure access from a learning platform. Now I have to set up my own Azure subscription. Luckily, Azure offers a free trial for the first month with 200USD credit_


## What I did

First, I created a separate microsoft account that I used for registering with Azure, in order to separate private accounts from Azure Administration.

This account is by default the Global Admin in the Entra tenant, and the Owner of the default Subscription.

Azure best practices recommend to create one or two emergency Global Admin accounts in the Entra tenant in case one is inaccessible. Or if one accidentally removes one's admin RBAC roles.

I do have FIDO2 security keys available that have a fingerprint sensor and can store FIDO2 Passkeys.

But first I had to generate a temporary access code so that during login the account can be set up with the strong authentication.  
-> Microsoft forces me to select either MS Authenticator or another TOTP authenticator, even though I want to set up the hardware FIDO2 security keys. So I set up a temporary TOTP. 
Then I could add the FIDO2 security keys as login methods, and remove the TOTP.

Then for even higher security, I wanted to remove the password, but that's not possible in the free version of Entra. So the recommended solution is to set the password to a random string and not save it so it doesn't get used which removes the risk of it getting leaked.

In my case without a production Azure systems, I don't need to set up a second emergency account.

But according to the Azure best practices I should create another account with the least privileges to do Azure Labs and Projects, which I did and set up similar for login security.

Now I'm ready to start using Azure!


## Gotchas & Learnings

    
- **Problem:** The free version of Entra forecs one to use the MS Authenticator or another TOTP authenticator and disallows directly going for Passkeys or Security Keys.  
    **Fix:** Set up a temporary TOTP login, that gets removed later. I could play around with the login security settings of the Entra tenant, but that's for another day.  
    **Takeaway:** Sometimes it's easier to just play along.
    




