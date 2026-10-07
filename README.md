# Cloud Infrastructure Journey
 
A hands-on learning portfolio documenting my path from software developer and Agile practitioner to Cloud Infrastructure Architect. Each lab and project includes architecture diagrams, implementation notes, and lessons learned — the real artifacts of cloud engineering.

Currently, I'm working towards AZ-104 Microsoft Certified: Azure Administrator Associate.


## Journey Log

### 2026-10-07
Learning:  
Azure Container Instances can only use Azure Files from a Storage account. they can't use blob storage or virtual disks. This was weird at first but makes sense after a while: Virtual disks can only be mounted on one device where as Azure Files can be accessed via SMB from many devices/services. And blob storage is fundamentally a storage for individual objects. WHen browsing it in the Azure portal, it looks like a file drive with folders and stuff, but fundamentally it offers only access to individual objects.


### 2026-10-06
Until now I could use a training provider's temporary Azure accounts to do the labs, and today I've set up my own Azure Subscription starting with the 30 day 200USD credit trial. I have followed the best practices for security. I've heard horror stories where people got private bankrupt with accidental Cloud costs or hackers getting access to their account and enmassing cloud costs.


- [Lab 01 - Manage Microsoft Entra ID Identities](./Azure/labs/2026-10-06%20Lab%2001%20-%20Manage%20Microsoft%20Entra%20ID%20Identities)
- [Project: Set up Azure Subscription](./Azure/projects/2026-10-06%20set%20up%20azure%20subscription)


### 2026-09-23 
- [Lab 11: Implement monitoring](./Azure/labs/2026-09-23%20Lab%2011%20-%20Implement%20monitoring)

### 2026-09-22
- [Lab 10 - Implement Data Protection](./Azure/labs/2026-09-22%20Lab%2010%20-%20Implement%20Data%20Protection)

### 2026-09-18 
- [Lab 09c - Implement Azure Container Apps](./Azure/labs/2026-09-18%20Lab%2009c%20-%20Implement%20Azure%20Container%20Apps)
- [Lab 09b - Implement Azure Container Instances](./Azure/labs/2026-09-18%20Lab%2009b%20-%20Implement%20Azure%20Container%20Instances)

### 2026-09-17 
- [Lab 09a - Implement Web Apps](./Azure/labs/2026-09-17%20Lab%2009a%20-%20Implement%20Web%20Apps)
- [Lab 08 - Manage Virtual Machines](./Azure/labs/2026-09-17%20Lab%2008%20-%20Manage%20Virtual%20Machines)


### 2026-09-16 
- [Exercise 04: Provide storage for a new company app](./Azure/labs/2026-09-16%20Exercise%2004%20-%20Provide%20storage%20for%20a%20new%20company%20app)

### 2026-09-15 
- [Guided Project - Azure Files and Azure Blobs](./Azure/labs/2026-09-15%20Guided%20Project%20-%20Azure%20Files%20and%20Azure%20Blobs)

### 2026-09-10 
- [Lab 07 - Manage Azure Storage](./Azure/labs/2026-09-10%20Lab%2007%20-%20Manage%20Azure%20Storage)

### 2026-09-07 
- [Lab 06 - Implement Network Traffic Management](./Azure/labs/2026-09-07%20Lab%2006%20-%20Implement%20Network%20Traffic%20Management)

### 2026-09-04 
- [Lab 03 - Manage Azure resources by using Azure Resource Manager Templates](./Azure/labs/2026-09-04%20Lab%2003%20-%20Manage%20Azure%20resources%20by%20using%20Azure%20Resource%20Manager%20Templates)

### 2026-08-07 
- [Lab 04 - Implement Virtual Networking](./Azure/labs/2026-08-07%20Lab%2004%20-%20Implement%20Virtual%20Networking)

### 2026-08-06 
- [Lab 05 - Implement Intersite Connectivity](./Azure/labs/2026-08-06%20Lab%2005%20-%20Implement%20Intersite%20Connectivity)

### 2026-07-29 
- [M01 - Unit 8 Connect two Azure Virtual Networks using global virtual network peering](./Azure/labs/2026-07-29%20M01%20-%20Unit%208%20Connect%20two%20Azure%20Virtual%20Networks%20using%20global%20virtual%20network%20peering)

### 2026-07-24 
When I started this journey, I was training for PRINCE2® Project Management Foundation & Practitioner (Version 7). Now that this is successfully finished, I can focus on learning for the AZ-104.

- [M01 - Unit 6 Configure DNS settings in Azure](./Azure/labs/2026-07-24%20M01%20-%20Unit%206%20Configure%20DNS%20settings%20in%20Azure)
- [M01 - Unit 4 Design and implement a Virtual Network in Azure](./Azure/labs/2026-07-24%20M01%20-%20Unit%204%20Design%20and%20implement%20a%20Virtual%20Network%20in%20Azure)
- [Exercise 01: Create and configure virtual networks](./Azure/labs/2026-07-24%20Create%20and%20configure%20virtual%20networks)


### 2026-06-12
I'm now in a training course for PRINCE2 but want to keep up with my Azure learning. So I have studied for the _Microsoft Certified: Security, Compliance, and Identity Fundamentals_ (SC-900) certification and today I did the exam and passed! 🥳

I like the topic of security and think this is an important topic for economy and with the current and possible global conflicts, it will only become more important in the future. So it was nice to make the first steps in that direction.


### 2026-04-24
Today I earned the Microsoft Certified: Azure AI Fundamentals (AI-900) certification! 🥳🥳  
It was interesting to see what Azure offers for hosting and running AI applications, where LLM Chatbots are only a part of it. 

### 2026-04-23 

- [Get started with information extraction in Microsoft Foundry](./Azure/labs/2026-04-23%2006a-content-understanding)


### 2026-04-15 
- [Get started with Azure management tasks](./Azure/labs/2026-04-15%20AZ-100-Get-started-with-Microsoft-Azure-Management-tasks)

### 2026-04-13
- [Apply guardrails to prevent the output of harmful content](./Azure/labs/2026-04-13%2006-Explore-content-filters)

### 2026-04-10 
- [Prepare for an AI development project](./Azure/labs/2026-04-10%2001-Explore-ai-studio)

### 2026-04-09 
Today I did my first Azure Lab. It's a guided lab with instructions on how to implement a certain tool or service.
- [Explore regression with Azure Machine Learning Designer](./Azure/labs/2026-04-09%2002a-create-regression-model)

 
## About Me
 
Backend developer (Java/Spring Boot, Android) with enterprise Agile delivery experience, exploring Cloud Engineering and Architecture. Currently pursuing AZ-104 and AZ-305 certifications.
