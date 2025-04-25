
## Assignment Questions – Module 1  

### 1. In which OSI layer does the Wi-Fi standard/protocol fit?  
Wi-Fi functions at:  
- **Layer 1 (Physical Layer):** Manages transmission of radio signals.  
- **Layer 2 (Data Link Layer):** Composed of:  
  - Logical Link Control (LLC)  
  - Media Access Control (MAC) – handles frame addressing and media access.  

### 2. Wi-Fi Devices and Corresponding Generations  
List your everyday Wi-Fi-enabled devices (e.g., laptop, smartphone, tablet) and identify their respective Wi-Fi standards:  
- Wi-Fi 4 (802.11n)  
- Wi-Fi 5 (802.11ac)  
- Wi-Fi 6 (802.11ax)  

To determine your device's Wi-Fi version:  
- **Windows:** Run netsh wlan show interfaces
- **Mac:** Go to System Report → Network → Wi-Fi  

### 3. What is BSS and ESS?  
Wi-Fi networks fall under either Basic Service Set (BSS) or Extended Service Set (ESS):  

#### Basic Service Set (BSS)  
- Consists of one access point (AP) and its connected clients.  
- Identified by the BSSID, which is the AP’s MAC address.  
- Typically used in small-scale setups like home networks.  

**Example:**  
- A standard home router connecting a few personal devices.  

#### Extended Service Set (ESS)  
- Combines multiple BSSs, enabling smooth handoffs between APs.  
- All APs share the same SSID for a unified experience.  
- Common in workplaces, campuses, and large facilities.  

**Example:**  
- A university network with multiple APs offering uninterrupted connectivity across buildings.  

| Feature      | BSS                         | ESS                               |
|--------------|-----------------------------|------------------------------------|
| Components   | One AP & connected devices  | Several APs & their devices        |
| SSID         | Unique to each AP           | Shared among all APs              |
| Coverage     | Limited (room or home)      | Wide (campus or office block)     |
| Roaming      | No seamless transitions     | Seamless transitions supported    |

**Why is ESS useful?**  
- Maintains connectivity throughout larger environments.  
- Distributes load by shifting users to less congested APs.  
- Boosts overall performance and reliability.  

---

### 4. Basic Functionalities of a Wi-Fi Access Point  
- Enables wireless communication.  
- Controls connections from client devices.  
- Enforces security protocols (like WPA3).  
- Can support multiple SSIDs (e.g., guest access).  

### 5. Difference Between Bridge Mode and Repeater Mode  
| Feature   | Bridge Mode                         | Repeater Mode                     |
|-----------|-------------------------------------|-----------------------------------|
| Purpose   | Links two separate networks         | Expands the range of an existing Wi-Fi |
| Use Case  | Used in enterprise networks         | Ideal for extending home Wi-Fi     |

### 6. Differences Between 802.11a and 802.11b  
| Feature     | 802.11a         | 802.11b         |
|-------------|-----------------|-----------------|
| Frequency   | 5 GHz           | 2.4 GHz         |
| Speed       | Up to 54 Mbps   | Up to 11 Mbps   |
| Range       | Shorter range   | Longer range    |
| Interference| Minimal         | Higher          |

### 7. Configuring Your Modem/Hotspot to 2.4 GHz and 5 GHz  
#### Instructions:  
1. Open router settings via `192.168.1.1`.  
2. Go to the Wireless Settings section.  
3. Set frequency to **2.4 GHz**, then save.  
4. Connect a device (e.g., smartphone/laptop) and note:  
   - Connection Speed  
   - Latency  
   - Signal Strength  
5. Repeat steps using **5 GHz** frequency.  
6. Compare:  
   - 2.4 GHz: Wider coverage, slower speeds.  
   - 5 GHz: Faster speeds, limited range.  
7. Record the differences observed during testing.  

### 8. Difference Between IEEE and WFA  
| Feature     | IEEE                                            | WFA                                |
|-------------|--------------------------------------------------|-------------------------------------|
| Full Form   | Institute of Electrical and Electronics Engineers | Wi-Fi Alliance                     |
| Function    | Defines Wi-Fi and networking standards          | Certifies compliance of Wi-Fi products |
| Role        | Technical standard creation                     | Ensures device compatibility       |

- **IEEE**: Sets the rules and specifications for Wi-Fi.  
- **WFA**: Verifies that devices follow those rules and work well with others.  

### 9. Types of Wi-Fi Internet Connectivity Backhaul  
Backhaul refers to the connection linking an AP to the internet. Common types include:  

1. **Fiber Optic:**  
   - Extremely fast and dependable.  
   - Used by ISPs and large-scale networks.  
   - Offers very low latency.  

2. **DSL (Digital Subscriber Line):**  
   - Slower than fiber.  
   - Relies on telephone lines.  
   - Common in homes and small offices.  

3. **Satellite:**  
   - Suitable for isolated or remote regions.  
   - High latency due to long-distance data travel.  

4. **Cellular (4G/5G):**  
   - Utilizes mobile networks.  
   - Ideal for portable or rural setups like hotspots.  

**Examples:**  
- A university might use a fiber optic backhaul for seamless, high-speed internet.  
- A house in a remote village may rely on satellite connectivity.  

### 10. Wi-Fi Topologies and Use Cases  
Wi-Fi networks can follow various topologies depending on the deployment:  

| Topology       | Description                             | Use Case                        |
|----------------|-----------------------------------------|----------------------------------|
| Ad-hoc         | Devices connect directly, no AP involved | Temporary links, quick sharing |
| Infrastructure | Central AP manages communication         | Homes, offices                  |
| Mesh           | Interconnected APs form a unified network| Campuses, smart buildings       |

#### Use Cases:  
- **Ad-hoc:** For direct device-to-device file sharing without an AP.  
- **Infrastructure:** The standard layout for household and workplace Wi-Fi.  
- **Mesh:** Perfect for extended coverage in complex areas like large buildings and smart homes.  
