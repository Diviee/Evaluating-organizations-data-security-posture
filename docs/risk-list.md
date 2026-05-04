# Risk List

This document outlines the risks I identified during the evaluation, I ranked each one by consequence and how fast the clinic needs to act.

## Risk 1: Unencrypted backup drive carried offsite

**What could happen:**
Unencrypted patient data gets into the wrong hands due to the loss of the purse holding the unencrypted backup drive.

**Consequence if ignored:**
HIPAA breach notification. Fines. Loss of patient trust. Potential lawsuit.

**Priority:** Immediate (fix this week)

**What to do:**
Move to encrypted cloud backups. Follow 3-2-1 rule. Retire the portable drive.

---

## Risk 2: No formal risk assessment process

**What could happen:**
The clinic doesn't know what other risks exist. They'll keep finding problems the hard way — after a breach.

**Consequence if ignored:**
Regulatory fines. Repeated surprises. Reactive security instead of proactive.

**Priority:** Immediate (fix this month)

**What to do:**
Use a simple risk assessment template. Sit down for two hours and list out threats. Keep a risk register. Update it yearly.

---

## Risk 3: Former employees might still have access

**What could happen:**
Someone who got fired or quit can still log in. They could pull patient records. Change things. Delete things.

**Consequence if ignored:**
Data breach. Insider threat. Compliance violation.

**Priority:** Immediate (fix this week)

**What to do:**
Revoke access the same day someone leaves. Put this in writing. Make it someone's job.

---

## Risk 4: No encryption on office computers

**What could happen:**
Someone steals a laptop or desktop. They pull the hard drive. All patient data is readable.

**Consequence if ignored:**
Breach. Fines. Loss of reputation.

**Priority:** Immediate (fix this month)

**What to do:**
Turn on full-disk encryption (BitLocker for Windows, FileVault for Mac). Every single computer.

---

## Risk 5: Phishing attacks

**What could happen:**
Attempts to trick users into revealing sensitive information.
An employee clicks a fake email. The attacker gets into the clinic's systems. They plant ransomware or steal data. 

**Consequence if ignored:**
Operational shutdown. Data loss. Ransom payment or months of recovery work.

**Priority:** Short-term (next 1-3 months)

**What to do:**
Email filtering. Phishing simulations. Train people to spot fakes.

---

## Risk 6: Weak password management

**What could happen:**
Simple or reused passwords get cracked. Attacker logs in as a real user.

**Consequence if ignored:**
Unauthorized access. Data breach. Hard to trace who actually did it.

**Priority:** Medium-term (next 3-6 months)

**What to do:**
Enforce longer passwords. Turn on multi-factor authentication where possible. Stop password sharing.

---

## Risk 7: Unsecured network connections

**What could happen:**
No firewall. No VPN for remote access. Attacker intercepts traffic or walks right in.

**Consequence if ignored:**
Data interception. Unauthorized network access. Breach.

**Priority:** Medium-term (next 6-12 months)

**What to do:**
Install a firewall. Require VPN for anyone connecting from outside the clinic. Segment the network so patient data isn't on the same VLAN as guest Wi-Fi.

---

## Quick priority cheat sheet

| Fix this week | Fix this month | Fix this quarter | Fix this year |
|---------------|----------------|------------------|----------------|
| Encrypted cloud backups | Full-disk encryption | Phishing training | Firewall |
| Access revocation | Risk assessment | Password policy | VPN |
| Remove purse drive | Risk register | Email filtering | Network segmentation |

