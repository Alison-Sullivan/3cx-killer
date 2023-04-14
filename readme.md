#3CX Nuker

A complete uninstaller in response to the 3CX desktop app security incident In March/April 2023. At the time of the incident my current work environment found a need to push a mass uninstall of the 3CX desktop app across multiple machines. However, we soon discovered the uninstaller would leave behind multiple residual files and registry entries some of which were the known source of the security incident, ffmpeg.dll and d3dcompiler_47.dll.

The entirety of this script was originally sourced from the following comment on reddit below and reworked from it's state as we found more and more needs to ensure 3CX was truly gone or as the title suggests, nuked;
[Reddit - r/msp - 3CX likely comprised, take action - crashdodson's comment](https://www.reddit.com/r/msp/comments/125sxuo/comment/je8gg87/)


Additional information about the security incident;
March 29th, 2023 - https://www.bleepingcomputer.com/news/security/hackers-compromise-3cx-desktop-app-in-a-supply-chain-attack/
March 30th, 2023 - https://www.3cx.com/blog/news/desktopapp-security-alert/
March 30th, 2023 - https://www.3cx.com/blog/news/desktopapp-security-alert-updates/
March 31st, 2023 - https://www.3cx.com/blog/news/chrome-blocks-latest-msi/
April 1st, 2023  - https://www.3cx.com/blog/news/uninstalling-the-desktop-app/
April 1st, 2023  - https://www.3cx.com/blog/news/security-incident-updates/
April 7th, 2023  - https://www.3cx.com/blog/docs/secure-admin-console/
April 11th, 2023 - https://www.3cx.com/blog/news/mandiant-initial-results/
April 11th, 2023 - https://www.3cx.com/blog/releases/v18u7a-security-update/
April 14th, 2023 - https://community.isc2.org/t5/Industry-News/Supply-Chain-Risk-Management-SCRM-The-Recipe-for-Resilience/m-p/58497
