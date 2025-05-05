# Wi-Fi Module 6 assignment

## 1. What are the pillars of Wi-Fi security?
The three core pillars of Wi-Fi security are:

- **Encryption** – Ensures confidentiality of transmitted data.
- **Authentication** – Confirms identity of users or devices accessing the network.
- **Integrity** – Protects data from tampering during transmission.

---

## 2. Difference between Authentication and Encryption in Wi-Fi

- **Authentication** ensures that only authorized users or devices can access the Wi-Fi network.
- **Encryption** secures the data being transmitted over the network, protecting it from eavesdropping.

---

## 3. Differences between WEP, WPA, WPA2, and WPA3

### WEP (Wired Equivalent Privacy)
- **Encryption**: RC4 with 40-bit or 104-bit keys.
- **Authentication**: Open System or Shared Key.
- **Status**: Insecure and outdated.

### WPA (Wi-Fi Protected Access)
- **Encryption**: RC4 with TKIP (adds dynamic key changes).
- **Authentication**: Supports PSK (home) and 802.1X/EAP (enterprise).
- **Improved** over WEP but still has vulnerabilities.

### WPA2
- **Encryption**: AES (Advanced Encryption Standard).
- **Authentication**: PSK and 802.1X/EAP.
- **Includes**: PMK derivation, and TKIP fallback for compatibility.

### WPA3
- **Encryption**: AES with GCMP; WPA3-Enterprise uses 192-bit encryption.
- **Authentication**:
  - **SAE** (Simultaneous Authentication of Equals) replaces PSK in personal mode.
  - **Forward Secrecy** ensures past communications remain secure.
- **Public Networks**: Uses OWE (Opportunistic Wireless Encryption) for encrypted open access.

---

## 4. Why is WEP considered insecure?
- Uses **weak encryption**.
- Short Initialization Vectors (IV) make it vulnerable to attacks.
- Keys are **static** and easily cracked.

---

## 5. Why was WPA2 introduced?
- WPA2 was developed to overcome the weaknesses of WEP.
- Introduced **stronger AES encryption**, offering a more secure Wi-Fi standard.

---

## 6. Role of the Pairwise Master Key (PMK) in the 4-Way Handshake
- PMK is the **base key** used in WPA/WPA2 to derive session keys.
- Ensures both client and AP generate the same **PTK (Pairwise Transient Key)** without directly exchanging it.
- Enables **secure and mutual authentication**.

---

## 7. How does the 4-way handshake ensure mutual authentication?

- Both AP and client generate the same PTK using shared information:
  - **Anonce**, **Snonce**, **AP MAC**, and **Client MAC**.
- This confirms that both sides possess the same PMK and trust is established.

---

## 8. What happens with a wrong passphrase during 4-Way Handshake?

- A wrong passphrase leads to an incorrect PMK.
- MIC (Message Integrity Code) check fails.
- The **4-way handshake fails**, and the device is not authenticated.

---

## 9. What problem does 802.1X solve?

- Ensures that **only authenticated users** can access the network.
- Blocks unauthorized devices from connecting.

---

## 10. How does 802.1X enhance wireless security?

- Uses **per-user credentials** (e.g., username/password, certificate).
- Replaces shared passphrases with unique identity-based authentication.
- Prevents unauthorized device access and offers **fine-grained control** over who connects.

