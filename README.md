# Live Geo IP Lookup Script
This simple script allows you to check all the live connections to the server and fetch all of the geo information regarding that IP.

## Installation
1. Clone this repo to your server.
2. Enable the file to be executed using ```sudo chmod +x liveIPCheck.sh```
3. Run the script using ```./liveIPCheck.sh```

## Usage
Once you have set the script up on your server all you need to do is run the script, and you will be given a result with all the information formatted like the example below.

(NUMBER OF CONNECTIONS) (IP) - (ISP) (REGION) (CITY) (COUNTRY)

## Net-Tools
> [!NOTE]  
> This script uses the net-tools library.
```sudo apt install net-tools```
