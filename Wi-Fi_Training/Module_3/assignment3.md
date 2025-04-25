# Module 3 Assignment

### 1. IEEE 802.11 PHY Layer Standards Overview
The IEEE 802.11 family consists of multiple physical (PHY) layer specifications, including 802.11a, b, g, n, ac, ax, and be. These standards differ in their frequency ranges, data transmission speeds, and modulation techniques. For instance, 802.11b uses DSSS within the 2.4 GHz band and supports up to 11 Mbps, whereas 802.11ac leverages OFDM in the 5 GHz spectrum to provide gigabit-level performance. Wi-Fi 6 (802.11ax) introduces innovations like OFDMA and MU-MIMO for improved efficiency in densely populated environments.

### 2. DSSS and FHSS Explained
DSSS (Direct Sequence Spread Spectrum) spreads the signal across a broad frequency spectrum using a pseudo-random sequence, which boosts resistance to interference. FHSS (Frequency Hopping Spread Spectrum) rapidly changes frequencies during data transmission according to a predetermined pattern, enhancing security and minimizing interference. Both methods enhance the reliability of wireless communication.

### 3. PHY Layer Modulation Techniques
Wireless data is transmitted by converting digital signals into analog through modulation techniques such as BPSK, QPSK, 16-QAM, and 64-QAM. Higher-order schemes like 64-QAM allow for increased data throughput but demand superior signal quality. Adaptive modulation, used in standards like 802.11n and ac, adjusts dynamically based on real-time link conditions to maintain optimal performance.

### 4. Importance of OFDM in Wireless LANs
OFDM (Orthogonal Frequency Division Multiplexing) divides the transmission channel into multiple subcarriers, each handling a portion of the overall data. This technique improves spectrum efficiency, minimizes interference, and combats issues like multipath fading, making it essential for high-speed Wi-Fi standards such as 802.11a/g/n/ac/ax.

### 5. Wi-Fi Frequency Bands and Channel Allocation
Wi-Fi operates within the 2.4 GHz, 5 GHz, and 6 GHz frequency bands. The 2.4 GHz band provides 14 channels, though only three are non-overlapping, leading to potential interference. The 5 GHz band offers a larger number of non-overlapping channels, while the 6 GHz band (Wi-Fi 6E) brings wider channels and less congestion, suitable for bandwidth-heavy tasks.

### 6. Role of Guard Intervals in WLANs
Guard Intervals are short delays between transmitted symbols designed to prevent inter-symbol interference due to reflected signals. A typical interval is 800ns, while a reduced 400ns interval is used to enhance efficiency in environments with low signal reflection, thereby increasing throughput.

### 7. Anatomy of an 802.11 PHY Layer Frame
An 802.11 physical layer frame includes three main parts: the Preamble, Header, and Payload. The Preamble helps synchronize the receiver, the Header carries control data like rate and length, and the Payload contains user-specific data. Modern standards such as 802.11ax incorporate extended preambles for better device coordination in crowded networks.

### 8. Comparison Between OFDM and OFDMA
OFDM delivers data to a single user at a time using multiple subcarriers. Conversely, OFDMA—debuting in 802.11ax—splits subcarriers into smaller Resource Units, each assigned to different users, enabling simultaneous multi-user transmissions and increasing network efficiency in high-traffic scenarios.

### 9. MIMO vs. MU-MIMO Technology
MIMO (Multiple Input, Multiple Output) uses multiple antennas to send parallel data streams to one device. MU-MIMO (Multi-User MIMO), first introduced in 802.11ac and refined in 802.11ax, allows multiple users to be served concurrently, significantly enhancing network capacity and reducing latency.

### 10. Understanding PPDU, PLCP, and PMD
The PPDU (Physical Protocol Data Unit) represents the full frame sent over the physical layer. It includes the PLCP (Physical Layer Convergence Protocol), which prepares MAC layer data for physical transmission, and the PMD (Physical Medium Dependent) sublayer, responsible for signal modulation and transmission.

### 11. PPDU Types and Formats
Different Wi-Fi versions employ distinct PPDU formats: Legacy (802.11a/g), HT (802.11n), VHT (802.11ac), and HE (High Efficiency, 802.11ax). Each contains a preamble, header, and payload designed to accommodate advanced features like MIMO, wider channels, and OFDMA. HE PPDU specifically supports spatial reuse and multi-user data exchange in both directions.

### 12. How Wi-Fi Data Rates Are Calculated
Wi-Fi speeds are determined by factors such as modulation scheme, coding rate, number of spatial streams, channel width, and guard interval. For example, a 20 MHz channel using 64-QAM with 5/6 coding and two spatial streams in 802.11n can achieve up to 130 Mbps. Newer standards like 802.11ac and ax leverage wider channels and additional streams for multi-gigabit speeds.

