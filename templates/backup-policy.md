# Backup policy 

Use this as a starting point. Adapt it to your actual setup.

---

## Purpose

The purpose of this backup policy is to ensure that all critical data is regularly backed up and can be restored in the event of data loss.
This policy makes sure the data can be recovered if something goes wrong. Ransomware. Fire. Theft. Accidental deletion.

---

## Scope
This policy applies to all data stored by the organization.

---

## What gets backed up

Everything that matters:

- Patient records (electronic health records)
- Billing data
- Scheduling data
- Any other clinic data that would hurt to lose

If losing it would cause problems, back it up.

---

## Who's responsible

The IT support lead (or whoever handles tech) runs the backups. They:

- Set up the backup system
- Check that backups actually completed
- Test restores periodically
- Fix problems when they happen

---

## How often

**Differential backups:** Every day

**Why differential:** It backs up everything that changed since the last full backup. Faster than a full backup every day. Easier to restore than incremental backups (only need the last full + the most recent differential).

**Full backup:** Once a week

---

## The 3-2-1 rule

We follow 3-2-1:

- **3** copies of the data (one working copy + two backups)
- **2** different media types (local server + cloud)
- **1** copy offsite (cloud storage)

No more backup drives going home in staff bags.

---

## Storage locations

| Location | What | Why |
|----------|------|-----|
| Local server | One backup copy | Fast recovery if a single computer dies |
| Encrypted cloud storage | Second backup copy | Disaster recovery if the building burns down |

All backups are encrypted. Cloud provider does not have the key unless we give it to them.

---

## Retention

- Daily backups: keep for 30 days
- Weekly full backups: keep for 3 months
- Monthly backups: keep for 1 year

---

## Testing

Once a month, restore a random file from backup to prove it works.

A backup that hasn't been tested isn't really a backup. It's hope.

---

## What to do if a backup fails

The IT lead gets an alert. They check logs. Fix the problem. Run a manual backup if needed. Document what broke and how it got fixed.

---

## Review cycle

This policy gets reviewed once a year. Update it if:

- The clinic buys new software or hardware
- Data storage needs change
- Regulations change

---

## Enforcement

Skipping backups isn't optional. Non-compliance is grounds for disciplinary action, because losing patient data is a big deal.

---

## Last thing

If you're not sure whether something is backed up correctly, treat it as NOT backed up until you confirm otherwise.
