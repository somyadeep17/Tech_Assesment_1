# Tech_Assesment_1

This repository contains a simple **Shell Script** to monitor running processes, log them, and check for high memory usage.  

---

##  Features
- Lists all currently running processes.  
- Saves the process list to a log file (`process_monitor.log`).  
- Checks for processes exceeding a given memory usage threshold.  
- Logs a warning if any process crosses the threshold.  

---

##  Files
- `process_check.sh` → Main shell script.  
- `process_$(date +%F_%H-%M-%S).log` → Log file where output and warnings are stored.  

---
##  Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/somyadeep17/Tech_Assesment_1.git
   cd Tech_Assesment_1
   ./process_check.sh
    
