
# WIFI Module 4 assignment


## Q1) What is the significance of MAC layer and in which position it is placed in the OSI model

- The MAC layer is a sublayer of the Data Link Layer (Layer 2) in the OSI model.
- It controls access to the physical medium, handles addressing via MAC addresses, ensures frame delivery, supports QoS, power saving, and basic security mechanisms.

---

## Q2) Describe the frame format of the 802.11 MAC header and explain the purpose of each fields.

- The MAC header includes fields like Frame Control, Duration/ID, multiple Address fields, Sequence Control, QoS Control, HT Control, Frame Body, and FCS.
- These fields define the frame type, manage addressing, sequence, error checking, and support for QoS and high throughput.

---

## Q3) Please list all the MAC layer functionalities in all Management, Control and Data plane

### Management Plane:
- Handles tasks like beaconing, authentication, association, scanning, capability advertisement, synchronization, and key management.

### Control Plane:
- Ensures reliable access via RTS/CTS, ACKs, power save polls, and NAV updates.

### Data Plane:
- Manages actual data transmission with frame aggregation, fragmentation, encryption, QoS, and forwarding.

---

## Q4) Explain the scanning process and its types in detail

- Scanning allows a client to discover nearby networks using active (sending probe requests) or passive (listening for beacons) methods.
- The client evaluates networks based on signal, security, and other factors, then initiates connection.

---

## Q5) Brief about the client association process

- The process involves scanning, authentication, association, optional 802.1X/EAP security steps, a 4-way handshake, and IP address assignment.
- It transitions the client from discovery to full network connectivity.
## Q6) Explain each steps involved in EAPOL 4-way handshake and the purpose of each keys derived from the process

### Steps involved in the EAPOL handshake:
| Step | Initiator | Message | Purpose |
|------|-----------|---------|---------|
| 1    | AP        | Sends ANonce (AP’s random number) to the client | Starts the handshake; used to derive PTK. |
| 2    | Client    | Sends SNonce (Client's random number) + MIC | Client calculates PTK using ANonce, SNonce, MACs, and PMK. Sends MIC to prove possession of PMK. |
| 3    | AP        | Sends GTK, encrypted with PTK + MIC | AP confirms PTK match, sends Group Key (GTK) securely. |
| 4    | Client    | Sends acknowledgment (ACK) + MIC | Confirms key installation and readiness to begin encrypted communication. |

### Keys and their purpose:
| Key Name | Purpose |
|----------|---------|
| PMK (Pairwise Master Key) | Derived from pre-shared key (PSK) or 802.1X/EAP process. Acts as the root key. |
| PTK (Pairwise Transient Key) | Derived during handshake using PMK + nonces + MACs. Used for unicast traffic encryption. |
| GTK (Group Temporal Key) | Used to encrypt broadcast/multicast traffic. Shared among all clients on the same SSID. |

---

## Q7) Describe the power saving scheme in MAC layer and explore on the types of Power saving mechanisms

### Power Saving Scheme in MAC Layer:
- **Purpose**: Reduce power consumption in wireless devices.
- **Mechanism**: Devices enter sleep mode when idle.
- **Power Saving in 802.11**:
  - **802.11 PS (Power Save)**: Client sleeps; AP buffers frames.
  - **AP Polling**: Client polls AP for data.
  - **Beacon Frames**: Indicate buffered data availability.
  - **PS-Poll**: Frame sent by client to receive buffered data.
  - **Wake-up Time**: Periodic wake intervals.

### Types of Power Saving Mechanisms:

| Type | Description | Use Case |
|------|-------------|----------|
| Legacy Power Save Mode | Client sleeps, periodically checks TIM in beacon frames | General compatibility |
| U-APSD | Uses trigger frames; dynamic scheduling | VoIP, real-time apps |
| TWT (802.11ax) | Schedules wake times between AP and client | IoT, Wi-Fi 6 |
| WNM-Sleep (802.11v) | Client can pause/resume data | Enterprise networks |
| PSMP | Aggregated delivery by AP | High-density deployments |

---

## Q8) Describe the Medium Access Control methodologies

### CSMA/CA
- **Definition**: Devices sense channel and avoid collisions using backoff timers.
- **Features**: Optional RTS/CTS for hidden node avoidance.
- **Use**: Wi-Fi networks.

### TDMA
- **Definition**: Channel divided into time slots.
- **Feature**: Precise time synchronization.
- **Use**: Cellular, industrial systems.

### FDMA
- **Definition**: Each user gets a separate frequency.
- **Feature**: Parallel transmission.
- **Use**: GSM, analog systems.

### CDMA
- **Definition**: Spread spectrum with unique codes.
- **Feature**: High capacity, interference-resistant.
- **Use**: 3G networks.

### Polling
- **Definition**: Central controller grants permission.
- **Feature**: Reduced collision.
- **Use**: Bluetooth, legacy systems.

### Scheduling
- **Definition**: AP allocates slots/resources.
- **Feature**: Ensures QoS.
- **Use**: Enterprise Wi-Fi, LTE.

---

## Q9) Brief about the Block ACK mechanism and its advantages

### Block ACK Mechanism:
- **Purpose**: Acknowledge multiple frames in one response to reduce overhead.
- **Working**:
  - Sender transmits a burst of frames.
  - Receiver returns a single Block ACK.
  - Efficient compared to per-frame ACK.

### Advantages:
- Improves throughput.
- Reduces control overhead.
- Efficient in high-data-rate scenarios like video streaming or file transfers.

## Q10) A-MSDU, A-MPDU, and A-MSDU in A-MPDU

## A-MSDU (Aggregated MAC Service Data Unit)
- Aggregates multiple MSDUs into a single MPDU.
- Reduces MAC layer overhead by using a single MAC header.
- Efficient in good channel conditions.
- **Limitation**: Entire A-MSDU must be retransmitted if any subframe is corrupted.

## A-MPDU (Aggregated MAC Protocol Data Unit)
- Aggregates multiple MPDUs into a single PHY transmission.
- Each MPDU has its own MAC header and FCS.
- Allows selective retransmission of corrupted MPDUs.
- More robust in noisy environments.

## A-MSDU in A-MPDU
- Combines both aggregation techniques for higher efficiency.
- Each MPDU in an A-MPDU may contain an A-MSDU.
- Offers high throughput and better error handling.
- Increased complexity in handling and implementation.

## Comparison Table

| Feature      | A-MSDU            | A-MPDU           | A-MSDU in A-MPDU   |
|--------------|-------------------|------------------|--------------------|
| Layer        | MAC               | PHY              | MAC + PHY          |
| Retransmit   | Entire A-MSDU     | Per MPDU         | Per MPDU           |
| Overhead     | Low               | Moderate         | Low + Moderate     |
| Efficiency   | High (clean channel) | High (noisy channel) | Very High         |
| Complexity   | Low               | Moderate         | High               |
