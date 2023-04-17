# ☢ 3CX Killer ☢

A scripted uninstaller in response to the 3CX desktop app security incident in March/April 2023. At the time of the incident my current work environment found a need to push a mass uninstall of the 3CX desktop app across multiple machines. While attempting this it soon came to our attention that the 3CX desktop app uninstaller would leave behind multiple residual files and registry entries of which some were the known threat soucre, ffmpeg.dll and d3dcompiler_47.dll.

The entirety of this script was originally sourced from the following comment on Reddit and reworked from this state as we found more and more needs to ensure 3CX was truly gone or as the title suggests, nuked;

[Reddit r/msp - 3CX likely comprised, take action - crashdodson's comment](https://www.reddit.com/r/msp/comments/125sxuo/comment/je8gg87/)



## Additional information related to the security incident
<details>
<summary>3CX</summary>

* March 30th, 2023 - Forum - [3CX DesktopApp Security Alert](https://www.3cx.com/community/threads/3cx-desktopapp-security-alert.119951/#post-558907)

* March 30th, 2023 - Blog - [3CX DesktopApp Security Alert](https://www.3cx.com/blog/news/desktopapp-security-alert/)

* March 30th, 2023 - Blog - [3CX DesktopApp Security Alert - Mandiant Appointed to Investigate](https://www.3cx.com/blog/news/desktopapp-security-alert-updates/)

* March 31st, 2023 - Blog - [Chrome blocks latest 3CX MSI installer](https://www.3cx.com/blog/news/chrome-blocks-latest-msi/)

* April 1st, 2023  - Blog - [Uninstalling the Desktop App](https://www.3cx.com/blog/news/uninstalling-the-desktop-app/)

* April 1st, 2023  - Blog - [Security Incident Update Saturday 1 April 2023](https://www.3cx.com/blog/news/security-incident-updates/)

* April 7th, 2023  - Blog - [How to Reset Passwords and Secure Admin Console](https://www.3cx.com/blog/docs/secure-admin-console/)

* April 11th, 2023 - Blog - [Security Update Mandiant Initial Results](https://www.3cx.com/blog/news/mandiant-initial-results/)

* April 11th, 2023 - Blog - [Update 7A - Focus on Security](https://www.3cx.com/blog/releases/v18u7a-security-update/)
</details>



<details>
<summary>(ISC)²</summary>
<p>

* April 14th, 2023 - Forum - [Supply Chain Risk Management (SCRM) – The Recipe for Resilience](https://community.isc2.org/t5/Industry-News/Supply-Chain-Risk-Management-SCRM-The-Recipe-for-Resilience/m-p/58497)
</p>
</details>



<details>
<summary>Bitdefender</summary>
<p>

* March 31st, 2023 - Article - [Technical Advisory: Software Supply Chain Attack Against 3CX Desktop App](https://businessinsights.bitdefender.com/technical-advisory-software-supply-chain-attack-against-3cx-desktop-app)
</p>
</details>



<details>
<summary>BleepingComputer</summary>

* March 29th, 2023 - Article - [Hackers compromise 3CX desktop app in a supply chain attack](https://www.bleepingcomputer.com/news/security/hackers-compromise-3cx-desktop-app-in-a-supply-chain-attack/)

* March 31st, 2023 - Article - [10-year-old Windows bug with 'opt-in' fix exploited in 3CX attack](https://www.bleepingcomputer.com/news/microsoft/10-year-old-windows-bug-with-opt-in-fix-exploited-in-3cx-attack/)

* April 3rd, 2023 - Article - [Cryptocurrency companies backdoored in 3CX supply chain attack](https://www.bleepingcomputer.com/news/security/cryptocurrency-companies-backdoored-in-3cx-supply-chain-attack/)

* April 11th, 2023 - Article - [3CX confirms North Korean hackers behind supply chain attack](https://www.bleepingcomputer.com/news/security/3cx-confirms-north-korean-hackers-behind-supply-chain-attack/)
</details>



<details>
<summary>CrowdStrike</summary>
<p>

* March 29th, 2023 - Article - [CrowdStrike Falcon Platform Detects and Prevents Active Intrusion Campaign Targeting 3CXDesktopApp Customers](https://www.crowdstrike.com/blog/crowdstrike-detects-and-prevents-active-intrusion-campaign-targeting-3cxdesktopapp-customers/)
</p>
</details>



<details>
<summary>CISA</summary>
<p>

* March 30rd, 2023 - Alert - [Supply Chain Attack Against 3CXDesktopApp](https://www.cisa.gov/news-events/alerts/2023/03/30/supply-chain-attack-against-3cxdesktopapp)
</p>
</details>
