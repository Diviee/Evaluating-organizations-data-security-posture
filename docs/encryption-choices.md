# Encryption Choices

When evaluating an organization's data security posture, it is crucial to consider various encryption choices for protecting sensitive information. Here are some key encryption options:

## 1. Symmetric Encryption
- **Description**: Uses the same key for both encryption and decryption. 
- **Use Cases**: Suitable for encrypting data at rest and data in transit.
- **Examples**: AES (Advanced Encryption Standard), DES (Data Encryption Standard).

## 2. Asymmetric Encryption
- **Description**: Uses a pair of keys (public and private) for encryption and decryption. 
- **Use Cases**: Secure key exchange, digital signatures.
- **Examples**: RSA, ECC (Elliptic Curve Cryptography).

## 3. Hashing
- **Description**: Converts data into a fixed-size string of characters, which is typically a hash code. 
- **Use Cases**: Password storage, data integrity verification.
- **Examples**: SHA-256, SHA-3.

## 4. Hybrid Encryption
- **Description**: Combines both symmetric and asymmetric encryption techniques. 
- **Use Cases**: Secure data transmission over the internet. 
- **Examples**: SSL/TLS protocols.

## Conclusion
Selecting the right encryption method depends on various factors, including the type of data, regulatory requirements, and performance considerations.


# Encryption choices — why I picked what I picked

I had to match encryption types to real clinic scenarios. Here's the logic.

---

## Office computers

**Choice:** Full-disk encryption

**Why:** Simple. It encrypts everything. No one has to remember which files to encrypt. If someone steals the whole computer, the data is useless to them.

**What to use:** BitLocker (Windows) or FileVault (Mac). Both are built in. No extra cost.

---

## Email communications

**Choice:** Asymmetric encryption (public/private key)

**Why:** The clinic needs to send patient info to other providers. Asymmetric encryption means the sender uses a public key (no risk if someone sees it) and only the recipient has the private key to decrypt.

**Real-world example:** Clinic emails a referral to a specialist. The specialist's public key encrypts it. Only the specialist's private key opens it. Even if the email gets intercepted, it's unreadable.

**What to use:** PGP or S/MIME. Or just use a secure messaging platform that handles this automatically.

---

## Data in transit (sending over the internet)

**Choice:** Public key encryption (which is a type of asymmetric)

**Why:** Same logic as email, but for any data moving across the internet. Patient records. Lab results. Anything that leaves the clinic's network.

**What to use:** TLS/SSL. That's what makes the little lock icon show up in your browser. For file transfers, use SFTP instead of FTP.

---

## Data backups

**Choice:** Symmetric encryption

**Why:** Backups are huge. Asymmetric encryption is slower because the math is more complex. Symmetric uses one key for both encrypt and decrypt. It's faster. Handles large volumes without slowing everything down.

**Tradeoff:** You have to protect that one key carefully. Lose the key, lose the backup.

**What to use:** AES-256. It's the standard. Most backup software supports it.

---

## Data exchange between healthcare providers

**Choice:** Asymmetric encryption

**Why:** Two different clinics don't have a pre-shared secret. Asymmetric lets them talk securely without exchanging private keys in advance. Reduces the risk of key theft during setup.

**Real-world example:** Clinic A needs to send records to Clinic B. Clinic B gives Clinic A their public key. Clinic A encrypts. Clinic B decrypts with their private key. No shared secret to leak.

**What to use:** Same as email — PGP, S/MIME, or a health information exchange (HIE) platform that handles this.

---

## Summary table

| Where | Encryption type | Why |
|-------|----------------|-----|
| Office computers | Full-disk | Covers everything, no user mistakes |
| Email | Asymmetric | Public/private key pairs work across organizations |
| Data in transit | Public key (asymmetric) | Standard for TLS/SSL, web, and file transfers |
| Backups | Symmetric | Faster for large volumes |
| Provider exchange | Asymmetric | No need to pre-share secrets |

---

## One more thing

Encryption isn't magic. It helps, but:

- Encrypted data is still accessible if someone has the key
- Full-disk encryption doesn't help if the computer is already on and unlocked
- Email encryption only works if both sides set it up correctly

So encryption is part of the answer. Not the whole answer.
