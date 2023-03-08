# Battery charge limiter for Apple Silicon Macbook devices

<!--toc:start-->
- [📃 Description](#description)
- [⬇️  Installation](#installation)
  - [🍺 Homebrew](#homebrew)
  - [📦 Standalone](#standalone)
- [▶️  Usage](#usage)
- [❓ FAQ & Troubleshooting](#faq-troubleshooting)
  - [Why does this exist?](#why-does-this-exist)
- [🌐  Network](#network)
- [👥 Contribution](#contribution)
<!--toc:end-->


> Fork of the awesome [Battery App](https://github.com/actuallymentor/battery) that offer  also a **GUI** (User Interface).

## Description

The CLI is used for managing the battery charging status for Apple Silicon Macbooks.\
Can be used to enable/disable the Macbook from charging the battery when plugged into power.

### Installation

#### Homebrew

  ```bash
  brew install kevinm6/battery-cli/battery-cli
  ```
  *or*

  ```bash
  brew tap kevinm6/battery-cli
  brew install battery-cli
  ```

#### Standalone

**One-line** installation:

  ```bash
  curl -s https://raw.githubusercontent.com/kevinm6/battery-cli/main/setup.sh | bash
  ```

This will:

1. Download the precompiled `smc` tool in this repo (built from the [hholtmann/smcFanControl]( https://github.com/hholtmann/smcFanControl.git ) repository)
2. Install `smc` to `/usr/local/bin`
3. Install `battery` to `/usr/local/bin`

---

### Usage

Example usage:

```shell
# This will enable charging when your battery dips under 80, and disable it when it exceeds 80
battery maintain 80
```

After running a command like `battery charging off` you can verify the change visually by looking at the battery icon:

![Battery not charging](./screenshots/not-charging-screenshot.png)

After running `battery charging on` you will see it change to this:

![Battery charging](./screenshots/charging-screenshot.png)


For help, run `battery` without parameters:

```
Battery CLI utility v1.0.2

Usage:

  battery status
    output battery SMC status, % and time remaining

  battery maintain LEVEL[1-100,stop]
    reboot-persistent battery level maintenance: turn off charging above, and on below a certain value
    eg: battery maintain 80
    eg: battery maintain stop

  battery charging SETTING[on/off]
    manually set the battery to (not) charge
    eg: battery charging on

  battery adapter SETTING[on/off]
    manually set the adapter to (not) charge even when plugged in
    eg: battery adapter off

  battery charge LEVEL[1-100]
    charge the battery to a certain percentage, and disable charging when that percentage is reached
    eg: battery charge 90

  battery discharge LEVEL[1-100]
    block power input from the adapter until battery falls to this level
    eg: battery discharge 90

  battery visudo
    ensure you don't need to call battery with sudo
    This is already used in the setup script, so you should't need it.

The following are only for installation without Homebrew, DON'T USE them if you installed
battery-cli with homebrew ( brew install battery-cli ):

  battery update
    update the battery utility to the latest version

  battery reinstall
    reinstall the battery utility to the latest version (reruns the installation script)

  battery uninstall
    enable charging, remove the smc tool, and the battery script
```

## FAQ & Troubleshooting

### Why does this exist?

This is the Fork of awesome [battery](https://github.com/actuallymentor/battery).
I create this version because I don't like at all Electron and I use it only for scrict
necessary app. Since the original version use Electron only as wrapper for the cli version,
I've made the cli only version.

For now it will be only a tap, since from [homebrew docs](https://docs.brew.sh) they probably
won't accept a cli-only version of a cask.

---

### Network

A Internet Connection is required to download the version and keep it update

### Contribution

Do you know how to code? Open a pull-request for a feature with the label [help wanted (PR welcome)](https://github.com/kevinm6/battery-cli/labels/help%20wanted%20%28PR%20welcome%29).

Do you have an awesome feature idea? [Add a feature request](https://github.com/kevinm6/battery-cli/issues/new/choose)
