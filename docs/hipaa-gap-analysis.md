# HIPAA Gap Analysis

## Introduction
This document outlines the gap analysis for HIPAA compliance, identifying the areas of non-compliance and providing recommendations for improvement.
I went through the HIPAA Security Rule's general requirements and checked each one against what the clinic actually does.

Bottom line: 3 compliant, 2 not compliant. 

## Rule 1: Reasonable and appropriate administrative, technical, and physical safeguards

**Status:** Not compliant

**What the clinic is doing wrong:**
- Staff take unencrypted backup drives offsite in personal bags
- No firewall or VPN mentioned anywhere
- No formal access review process

**Why this matters:**
HIPAA doesn't say "you must use encryption" in every sentence, but it does say safeguards must be reasonable. Carrying patient data home on an unencrypted drive isn't reasonable.

**What needs to change:**
- Full-disk encryption on all devices
- Encrypted cloud backups (replace the purse drive)
- Basic network controls (firewall at minimum)

---

## Rule 2: Ensure confidentiality, integrity, and availability of all e-PHI

**Status:** Not compliant

**What the clinic is doing wrong:**
- Unencrypted backups = confidentiality failure
- Drive carried home in a purse = integrity risk (drives get lost, damaged, stolen)
- No offsite backup strategy = availability risk (fire or theft at clinic = data gone)

**The specific problem:**
Sandra takes the backup drive home every night. If she loses her purse, that's a breach. If someone steals it, that's a breach. If she drops it in a parking lot, that's a breach. And the data isn't encrypted, so there's no second layer of protection.

**What needs to change:**
The 3-2-1 backup rule. Three copies total. Two different media types. One copy offsite (encrypted cloud storage, not someone's purse).

---

## Rule 3: Identify and protect against reasonably anticipated threats

**Status:** Not compliant

**What the clinic is doing wrong:**
- No formal risk assessment. Ever.
- No risk register
- No process for identifying new threats

**What this looks like in practice:**
The clinic doesn't know what they don't know. They have phishing risks, ransomware risks, insider threats. But no one has ever sat down and listed them out.

**What needs to change:**
- Do a formal risk assessment within 30 days
- Keep a one-page risk register
- Update it annually or when something changes (new software, new staff, new regulations)

---

## Rule 4: Protect against reasonably anticipated impermissible uses or disclosures

**Status:** Compliant

**What the clinic is doing right:**
- Access to patient data is restricted by role (on paper anyway)
- Physical and electronic measures are in place
- Staff seem to understand they can't just share patient info randomly

**Why this one is okay:**
The clinic's information sharing policy is actually solid. It covers patient consent, authorized individuals, and when disclosure is required by law. Training reinforces this.

**What to keep doing:**
Keep the policy. Keep training. Just make sure the "access by role" thing actually happens in practice, not just on paper.

---

## Rule 5: Ensure compliance by the workforce

**Status:** Compliant

**What the clinic is doing right:**
- Annual security meetings with mandatory attendance
- Attendance is tracked
- Makeup sessions for anyone who misses
- Violations can lead to termination

**Why this works:**
It's not fancy, but it's consistent. People know they have to show up. There are consequences for not showing up. That's more than a lot of small orgs do.

**What to keep doing:**
Keep the meetings. Keep tracking attendance. Maybe add phishing simulations to make training more hands-on.

---

## Summary table

| Rule | Status | What needs to happen |
|------|--------|----------------------|
| Reasonable safeguards | ❌ Not compliant | Encryption + firewall + access reviews |
| CIA of e-PHI | ❌ Not compliant | 3-2-1 backup strategy |
| Threat identification | ❌ Not compliant | Formal risk assessment + risk register |
| Prevent impermissible disclosures | ✅ Compliant | Maintain current policy |
| Workforce compliance | ✅ Compliant | Maintain current training + add phishing tests |
