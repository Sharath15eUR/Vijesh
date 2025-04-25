 
## Assignment Questions – Module 2

### 1. Split MAC Architecture and Its Advantages for Access Point (AP) Performance

Split MAC architecture divides MAC (Media Access Control) tasks between the AP (Access Point) and a centralized controller called the Wireless LAN Controller (WLC).

#### How It Works:

- **Real-Time MAC Tasks (handled by the AP):**
  - Sends beacons
  - Manages probe requests and responses
  - Handles control frames (like RTS/CTS)
  - Manages retransmissions

- **Non-Real-Time MAC Tasks (handled by the WLC):**
  - Manages authentication/deauthentication
  - Handles association/reassociation
  - Bridges Ethernet and WLAN traffic
  - Deals with fragmentation

#### Main Advantages:
- **Better Performance:** The AP handles only real-time traffic, improving responsiveness.
- **Centralized Management:** Easier to manage multiple APs via the WLC.
- **Tighter Security:** Consistent security policies enforced from the controller.
- **Easily Scalable:** Adding more APs doesn’t complicate the network.

### 2. What is CAPWAP and How Does It Manage Communication Between AP and Controller?

CAPWAP (Control and Provisioning of Wireless Access Points) is a protocol designed to manage APs through a central WLC, streamlining setup and communication.

#### CAPWAP Structure:
- **Control Plane:** Manages AP configurations, authentication, and associations.
- **Data Plane:** Carries user data between the AP and WLC over an encrypted tunnel.

#### CAPWAP Communication Steps:
1. **Discovery Phase:** AP looks for a WLC and receives a response.
2. **Security Setup:** DTLS (Datagram Transport Layer Security) is used for encryption.
3. **Join Process:** AP sends a join request; WLC responds.
4. **Firmware Update:** If required, the AP updates its firmware and restarts.
5. **Configuration:** WLC sends config details; AP applies them.
6. **Operation Mode:** AP is now fully operational under WLC control.

#### Benefits of CAPWAP:
- **Central Control:** Simplifies administration for large deployments.
- **Secure Channels:** Communication is encrypted.
- **Easy Expansion:** Scales well with growing networks.

### 3. CAPWAP in the OSI Model and the Role of Its Two Tunnels

CAPWAP works mainly at **Layer 2 (Data Link)** and **Layer 3 (Network)** of the OSI model, using **UDP** at Layer 4.

#### Two Types of CAPWAP Tunnels:
1. **Control Tunnel (UDP 5246):** Used for managing configuration and AP-WLC communication.
2. **Data Tunnel (UDP 5247):** Transfers user traffic from APs to WLC securely.

### 4. Difference Between Lightweight and Cloud-Based Access Points

#### Lightweight APs:
- Depend on a WLC to function.
- Use CAPWAP for communication.
- Settings and policies are controlled centrally.
- Support seamless user roaming.

#### Cloud-Based APs:
- Controlled via cloud—no physical WLC needed.
- Allows remote monitoring and setup.
- Perfect for networks with multiple sites.

### 5. How CAPWAP Tunnel Is Maintained Between AP and WLC

CAPWAP keeps a secure link between the AP and WLC, allowing for consistent configuration and traffic handling.

#### How It Stays Connected:
1. AP discovers the controller through DHCP, DNS, or broadcast.
2. Exchanging authentication and config info.
3. CAPWAP tunnels (control & data) are set up.
4. Traffic flows through the WLC, which applies policies.

### 6. Difference Between Sniffer Mode and Monitor Mode

Both modes help analyze wireless traffic, but they serve different needs.

#### Sniffer Mode:
- Captures raw wireless packets at Layer 2.
- Useful for deep analysis and debugging.
- Targeted at specific channels.

#### Monitor Mode:
- Scans across all channels passively.
- Detects unauthorized devices and interference.
- Great for security auditing and site surveys.

### 7. Optimal AP Mode for WAN-Deployed WLCs in Local Networks

**FlexConnect Mode (previously H-REAP)** is the most suitable mode:

- APs locally handle client traffic, reducing WAN delays.
- Even if the WLC is unreachable, the AP still functions.
- Management info is still passed back to the WLC when available.

### 8. Challenges of Deploying Over 50 Autonomous APs in Large Networks (e.g., Universities)

#### Common Problems:
- **Manual Configuration:** Each AP must be set up individually.
- **Lacks Central Oversight:** Hard to manage or update settings.
- **Poor Roaming Experience:** Users may lose connection when moving around.
- **Limited Scalability:** Not efficient to expand or maintain.

### 9. Behavior of Lightweight AP in Local Mode if WLC Fails

In **Local Mode**, Lightweight APs need the WLC for full operation.

| **Function**        | **What Happens if WLC is Unavailable**                      |
|---------------------|-------------------------------------------------------------|
| CAPWAP Tunnel        | Disconnects, breaking link with the WLC                    |
| Client Connections   | Current sessions are lost                                  |
| Data Traffic         | Cannot forward traffic                                     |
| New Clients          | Can't connect; SSID stops broadcasting                     |
| Roaming              | Doesn’t work due to no WLC coordination                    |
| AP Recovery          | AP tries to reconnect to the main or backup WLC            |

#### Best Practice:
Use FlexConnect Mode so APs continue serving users even during WLC outages—ideal for branch offices or sites relying on WAN.
