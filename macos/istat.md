# [iStat Menus][istat] Setup

(Don't install from App Store: [differences][istat-differences])

[istat]: https://bjango.com/mac/istatmenus/
[istat-differences]: https://bjango.com/help/istatmenus6/macappstore/

## [Intel Power Gadget][intel-power-gadget]

(On Intel; still needed?)

[intel-power-gadget]: https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html

## Registration

* License

## Config

### Global

* Colors: System Accent Color / System Appearance
* Menu Bar Spacing: Standard (when using compact in Bartender; else Compact?)

### Rules

These are all alerts (except the hotkey); do the other sections first

* Follow prompts to turn on notifications and set to alerts
* No weather
* Daylight saving changes: 2 days before
    * (current location probably needs access)
* Battery time remaining: 10 minutes (default is 30)
* Battery level: 10% while draining (default is 20%)
* Bluetooth battery level: 5% (default)
* Any temperature above: 100C for 30 sec (lower on Apple Silicon?) (banner?)
    * Default is 75C for 30 sec
* CPU usage above: 75% for 10 sec (default is 50% / 30) (banner (?))
* Memory pressure above: 80% for 10 sec (default is 50% / 30)
* Percentage used: 90% (default) for any disk
* Internet status changes?
* Show time menu when `ctrl-opt-cmd-T` is pressed

### Weather

* Off

### CPU & GPU

* Menu Bar: label, single bar graph (or cores?) (and GPU stuff?)
* Hyper-Threading Cores: Hide (?)
* Process format: 0-100%
* Process Count: 10 (?)

### Memory

* Menu Bar: label, bar graph (pressure)
* Process Format: Size
* Process Count: 10 (?)

### Disks

* Menu Bar:
    * label, bar graph, (?)activity num (w/labels),
    * ?activity graph (show bg)
* Process Count: 10
* Activity: Separate

### Network

* Menu Bar: net label, (?)bandwidth num (w/arrows; Decimals: 2)
* Bandwidth Format: KB/s, MB/s
* Process Count: 10
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
    * Bluetooth: icon, vertical graph
    * Airpods: icon, vertical graph
* Items: internal, mouse, (others?)

### Time

* On
* Menu bar: outline date icon (or clock icon, or `EE hh:mm a`)
* Clock format (in dropdown config): `ZZZ __RELATIVE_OFFSET__ EE HH:mm`
    * (e.g. -0400 +0 Wed 14:40; default: 6 hours ahead)
* Display: Month
* Clocks:
    * UTC
    * No Moon?
    * No Current Location? (else give location access)
    * (other locations)
* Open dropdown:
    * Dismiss calendar request
    * Current Location -> Request

### Combined

* Off

### -> System Preferences

* Control Center:
    * Battery (Menu Bar): off
    * Clock Options:
        * Show date: Never (if using date icon)
