# [iStat Menus][istat] Setup

(Don't install from App Store: [differences][istat-differences])

The [iStat Helper][istat-helper] should be installed as part of the main installation process, but if not (or if you installed the App Store version), you can download it separately.

[istat]: https://bjango.com/mac/istatmenus/
[istat-differences]: https://bjango.com/help/istatmenus7/macappstore/
[istat-helper]: https://bjango.com/mas/istatmenus/helper/

## [Intel Power Gadget][intel-power-gadget]

(On Intel; discontinued; still needed?)

[intel-power-gadget]: https://www.intel.com/content/www/us/en/developer/archive/tools/power-gadget.html

## Registration

* License

## Config

### Global

I _think_ the light/dark switch here sets colors for when the menu bar color is light vs. dark.

* Colors: System Accent Color / System Appearance (in each mode)
* Menu Bar Spacing: Standard (when using compact in Bartender; else Compact (?))

### Rules

These are all alerts (except the hotkey); do the other sections first

* Follow prompts to turn on notifications and set to alerts
* No weather
* Daylight saving changes: 2 days before
    * (current location probably needs access)
    * Can also add for other locations, e.g. European company offices
* Battery time remaining: 10 minutes (default is 30)
* Battery level: 10% while draining (default is 20%)
* Bluetooth battery level: 5% (default)
* Any temperature above: 100C for 30 sec (lower on Apple Silicon?) (banner?)
    * Default is 75C for 30 sec
* CPU usage above: 75% for 10 sec (default is 50% / 30) (banner (?))
* GPU?
* Memory pressure above: 80% for 10 sec (default is 50% / 30)
* Percentage used: 90% (default) for any disk
* Internet status changes?
* Show time menu when [`ctrl-opt-cmd-T`][hotkeys-ctrl-opt-cmd] is pressed

[hotkeys-ctrl-opt-cmd]: hotkeys.md#controloptioncommand-ctrl-opt-cmd--

### Weather

* Off

### CPU & GPU

* Menu Bar: label and single bar graph for CPU and (?)GPU (or cores for CPU?)
* Hyper-Threading Cores: Hide (?)
* Process format: 0-100% (default)
* Process Count: 10 (?) (default is 5)

### Memory

* Menu Bar: label, bar graph (pressure)
* Process Format: Size (default)
* Process Count: 10 (?) (default is 5)

### Disks

* Menu Bar:
    * label, bar graph, (?)activity num (w/labels), ?activity graph (show bg)
* Process Count: 10 (default is 5)
* Activity: Separate

### Network

* Menu Bar: net label, (?)bandwidth num (w/arrows; Decimals: 2)
* Bandwidth Format: KB/s, MB/s
* Process Count: 10 (default is 5)
* Bandwidth: Combined (?)

### Sensors

* Menu Bar: label, (?)single num
* Temperature: Celsius
* Display Mode: Simple (?) (can change from the dropdown)

### Power

* On
* Request Bluetooth Access
* Menu Bar:
    * Battery: ?label, horizontal color batt (Color: green), time
        * Set the color for both light and dark
    * Bluetooth: icon, vertical graph
    * Airpods: icon, vertical graph
* Items: internal, mouse, (others?)

### Time

* On
* Menu bar: outline date icon (or clock icon, or `EE hh:mm a`)
* Clock format (in dropdown config): `ZZZ __RELATIVE_OFFSET__ EE HH:mm`
    * (e.g. -0400 +0 Wed 14:40; default: 6 hours ahead)
* Calendar Settings:
    * Display: Month
* Clocks:
    * UTC
    * No Moon?
    * No Current Location? (else give location access)
    * NYC
    * (other locations, e.g. European company offices)
* Open dropdown:
    * Dismiss calendar request
    * Current Location -> Request

### Combined

* Off

### Export

* File -> Export Settings (?)

### -> System Preferences

* Menu Bar:
    * Menu Bar Controls:
        * Clock -> Clock Options...:
            * Date:
                * Show date: off (if using date icon)
    * Battery: off
