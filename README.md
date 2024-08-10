# TCP Serial Redirect Add-on for Home Assistant

This Home Assistant add-on provides a simple way to redirect serial communication over TCP using a custom Python script. It is particularly useful for situations where you need to make a serial device (e.g., connected via `/dev/ttyUSB0`) accessible over the network.

## Features

- Redirects serial communication from `/dev/ttyUSB0` to a TCP port (`7777`).
- Supports setting RTS and DTR signals.
- Runs automatically on Home Assistant startup.
- Restart policy to ensure continuous operation.

## Installation

### Step 1: Add the Repository

1. Go to the **Supervisor** panel in Home Assistant.
2. Click on the **Add-on Store** tab.
3. In the bottom right corner, click **Repositories**.
4. Add the URL of the GitHub repository hosting this add-on. (https://github.com/breniii/USB-Serial-Russound)

### Step 2: Install the Add-on

1. After adding the repository, locate the `TCP Serial Redirect` add-on in the store.
2. Click on the add-on, then click the **Install** button.
3. Once installed, you can optionally configure the add-on under the **Configuration** tab. (if you need to redirect to a different port)

### Step 3: Start the Add-on

1. Go to the **Info** tab of the `TCP Serial Redirect` add-on.
2. Click **Start** to launch the add-on.
3. Ensure that the add-on is set to start automatically by toggling the **Start on boot** option.

## Usage

This add-on redirects serial communication from a device connected to `/dev/ttyUSB0` to TCP port `7777`. The Python script included in the add-on manages the communication, setting RTS and DTR to `1` and operating at a baud rate of `19200`.

### Accessing the Serial Data

You can access the redirected serial data by connecting to your Home Assistant instance's IP on port `7777` using any TCP client.

### Russoiund Config to Connect to USB to Serial Adapter
media_player:
  - platform: russound_rnet
    host: 127.1.1.1
    port: 7777
    name: Russound
    zones:
      1:
        name: Living Room
      2:
        name: Office
      3:
        name: Master Bedroom
      4:
        name: Kitchen
      5:
        name: Dining Room
      6:
        name: Exercise
    sources:
      - name: Tuner 1
      - name: Tuner 2
      - name: GoogleCast
      - name: Sonos Connect
      - name: Sonos Port
      - name: Computer Audio

