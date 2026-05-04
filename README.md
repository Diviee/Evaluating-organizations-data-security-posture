# Clinic security evaluation 

This is a project to evaluate the data security posture for a small organization, a healthcare provider. In the role of a cybersecurity specialist, I evaluate an organization’s data security posture, the aim is to identify and address potential issues in the following areas: 
Data and information security
Compliance with Health Insurance Portability and Accountability Act (HIPAA) regulations

I completed this project in these steps: 
Evaluating the organization’s data security posture 
Analyzing the scenario and reviewing documentation on cybersecurity risks and compliance requirements 
Evaluating data security and privacy, assessing risks and applying security controls 
Developing a backup plan and applying file and drive encryption

The process includes systematically evaluating the clinic’s current security practices based on the office manager’s documentation, identifying internal and external risks, analyzing associated consequences, and determine whether immediate interventions are necessary. 

After evaluating the organization’s policies and procedures, I recommended suitable control measures to improve security and comply with HIPAA regulations.

## The situation

A family clinic. Good reputation. Bad security habits.

They had:
- A backup drive carried home in a purse (not kidding)
- No formal risk assessment – ever
- Unrestricted access to patient files
- No encryption on most devices

They did have training and decent written policies. But written isn't the same as working.

## What's in this repo

- `docs/hipaa-gap-analysis.md` – Where they're failing and why
- `docs/risk-list.md` – The risks I found, what happens if ignored, and priority
- `docs/encryption-choices.md` – Which encryption for which situation and why
- `templates/risk-register.xlsx` – A simple spreadsheet to track risks
- `templates/backup-policy.md` – A 3-2-1 backup policy anyone can use
- `scripts/check-bitlocker.ps1` – A quick script to see which Windows machines have encryption on

## The biggest problems

| Problem | How bad | Which HIPAA rule |
|---------|---------|------------------|
| Unencrypted backup drive taken offsite | High | 164.312(a)(1) |
| No risk assessment process | High | 164.308(a)(1)(ii)(A) |
| Anyone can access patient records | High | 164.312(a)(2)(i) |
| No firewall or VPN | Medium | 164.312(e)(1) |

## What I told them to fix first

1. Turn on full-disk encryption for every computer
2. Move backups to encrypted cloud storage – follow 3-2-1 rule
3. Do a real risk assessment. Write down what you find.
4. Cut off access the day someone leaves
5. Run phishing tests. Train people.

## Stuff I referenced while doing this

- HIPAA Security Rule (the actual text, not a summary)
- NIST CSF (mostly the Identify and Protect functions)
- The 3-2-1 backup rule (three copies, two media types, one offsite)

## Who made this

Portfolio project from a cybersecurity analyst.
