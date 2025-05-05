# Wi-Fi Module 5 assignment

## 1. Key Features of Wi-Fi 6, 6E, and 7

### Wi-Fi 6 (802.11ax)
Wi-Fi 6 brings significant improvements over previous generations by using technologies like 1024-QAM and OFDMA. It allows more efficient use of the wireless spectrum by enabling multiple users to transmit data simultaneously. It also introduces **Target Wake Time (TWT)** to conserve battery life in client devices and **BSS Coloring** to reduce unnecessary deferrals. Enhanced **MU-MIMO** allows simultaneous communication with up to 16 users. Security is strengthened with **WPA3**.

### Wi-Fi 6E
Wi-Fi 6E is an extension of Wi-Fi 6 that adds support for the newly opened **6 GHz frequency band**, in addition to 2.4 GHz and 5 GHz. This results in significantly more available spectrum, reducing congestion and interference. It supports wider channels (e.g., 160 MHz), which enables higher bandwidth and lower latency — ideal for applications like 4K video, VR, and cloud gaming.

### Wi-Fi 7 (802.11be)
Wi-Fi 7 is the upcoming next-gen standard offering even higher throughput and reliability. It operates across **2.4 GHz, 5 GHz, and 6 GHz** bands and supports **up to 320 MHz channel bandwidth**. It introduces **4096-QAM** modulation for denser data transmission and **Multi-Link Operation (MLO)**, which allows simultaneous transmission over multiple bands. With theoretical speeds up to **9.6 Gbps**, Wi-Fi 7 is designed for ultra-low-latency and high-bandwidth applications.

---

## 2. Role of OFDMA in Wi-Fi 6

**OFDMA (Orthogonal Frequency Division Multiple Access)** enables Wi-Fi 6 to serve multiple users at the same time by dividing a channel into smaller units called **Resource Units (RUs)**. Each RU can be independently assigned to different clients, allowing parallel transmission. This reduces latency, increases efficiency, and is especially useful in environments with many connected devices like offices, stadiums, or smart homes.

---

## 3. Benefits of Target Wake Time (TWT)

**TWT** allows client devices to schedule specific times to wake up and communicate with the access point, allowing them to sleep most of the time and save power. This is highly beneficial for **IoT devices** such as sensors and smart meters, which only need to send or receive data occasionally. It not only extends battery life but also reduces network contention and collisions, leading to a more stable and energy-efficient wireless environment.

---

## 4. Significance of the 6 GHz Band in Wi-Fi 6E

The 6 GHz band introduces **more non-overlapping channels**, providing a larger spectrum than the crowded 2.4 GHz and 5 GHz bands. It reduces interference from legacy devices and improves performance by supporting wider channels. This new spectrum is a game-changer for congested environments and bandwidth-intensive applications like streaming and AR/VR.

---

## 5. Wi-Fi 6 vs. Wi-Fi 6E

- **Range**: Wi-Fi 6 (on 2.4 GHz and 5 GHz) typically offers better range than Wi-Fi 6E (on 6 GHz), since higher frequencies have lower penetration through walls.
- **Bandwidth**: Wi-Fi 6E provides greater bandwidth due to availability of 160 MHz channels in 6 GHz.
- **Interference**: Wi-Fi 6E experiences less interference, as legacy devices do not operate in the 6 GHz band, making it cleaner for newer devices.

---

## 6. Major Innovations in Wi-Fi 7

Wi-Fi 7 builds upon the advancements of Wi-Fi 6/6E with several key innovations:
- **320 MHz channels** for massive throughput
- **4096-QAM** for denser data encoding
- **Preamble Puncturing** to avoid interference in subchannels
- **Multi-Link Operation (MLO)** for simultaneous multi-band transmission
- **Improved MU-MIMO** for better parallel communication with multiple clients

These features aim to provide ultra-reliable, low-latency, and high-speed communication for future applications.

---

## 7. What is Multi-Link Operation (MLO)?

**Multi-Link Operation (MLO)** is a powerful feature in Wi-Fi 7 where a device can use multiple frequency bands simultaneously. For example, it can use 5 GHz and 6 GHz in parallel to increase overall speed and reduce latency. This not only improves throughput but also enables more reliable communication by dynamically choosing the least congested path for each transmission. It is particularly beneficial for applications that require real-time performance like gaming and video conferencing.

---

## 8. Purpose of IEEE 802.11k and 802.11v for Roaming

- **802.11k** helps improve roaming decisions by providing clients with a **Neighbor Report**, which lists better APs nearby, allowing for faster and more efficient AP discovery.
- **802.11v** enables APs to recommend clients to roam to specific APs that offer better signal or performance through **BSS Transition Management**.

Together, these protocols reduce roaming latency and improve user experience, especially in enterprise or large network environments.

---

## 9. Fast BSS Transition (802.11r) in Mobile Environments

**802.11r** is designed to **speed up handoffs** between access points. Normally, re-authentication during roaming causes delays (~300–500 ms), which can disrupt calls or video streams. With 802.11r, encryption keys are **pre-negotiated**, allowing handoffs to occur in less than 50 ms. This ensures seamless connectivity for mobile clients, making it ideal for real-time applications.

---

## 10. Seamless Roaming Using 802.11k/v/r

When used together:
- **802.11k** helps clients discover nearby APs quickly.
- **802.11v** suggests the best AP to roam to based on performance.
- **802.11r** ensures a fast and secure handoff with minimal delay.

These features together enable **seamless roaming** in enterprise networks, maintaining uninterrupted service for voice, video, and real-time applications.


