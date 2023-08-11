# [iStat Menus][istat] Setup

[istat]: https://bjango.com/mac/istatmenus/

## [Intel Power Gadget][intel-power-gadget]

[intel-power-gadget]: https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html

## Global

* License

## Notifications

These are all alerts; do the other sections first

* No weather
* Daylight Saving Change: 2 days before
* Battery Time Remaining: 10 minutes (default)
* Low Battery: 10% (default)
* Bluetooth Battery: 5% (default)
* Any Temperature Above: 100C for 30 sec (lower on Apple Silicon?) (banner?)
    * Default is 75C for 10 sec
* CPU Usage Above: 75% for 10 sec (default time) (banner (?))
* Memory Pressure Above: 80% for 10 sec (default)
* 'Macintosh HD' Used Percentage Above: 90% (default)
* Internet Status Changed?

## Weather

* Off

## CPU

* Active: label, cores (and GPU stuff?)
* App usage format: 100%
* Processes: 10 (?)
* Hide HT cores

## Memory

* Active: label, bar graph (pressure, or if memory, don't show breakdowns)
* Processes: 10 (?)
* App format: size
* Don't hide inactive memory (?)

## Disks

* Active:
    * label, disk space, (?)activity num (show label),
    * ?activity graph (show bg)
* Activity mode: detailed (per disk)
* Processes: 10

## Network

* Active: net label, arrow label, (?)bandwidth num
* Decimals (KB): 1(?) 2?
* Processes: 10
* Combine bandwidth
* Show BSD names

## Sensors

* Active: label, ?single num
* Degrees: C
* Sensors: CPU PECI / Core Avg (show units), ?CPU frequency (show units)

## Battery

* Active: ?label, horizontal color batt (with icons), time
* Bluetooth: symbol, vertical graph
* Airpods: symbol, vertical graph
* Don't disable Bluetooth monitoring
* Batteries: internal, mouse [others?]

## Time

* On
* Menu bar: outline date icon (or clock icon, or `EE hh:mm a`)
* World Clocks: `ZZZ __RELATIVE_OFFSET__ EE HH:mm`
    * (e.g. -0400 +0 Wed 14:40; default 06:05 AM)
* Hotkey: `ctrl-opt-cmd-T`
* World clocks:
    * UTC
    * No Moon?
    * No Current Location? (else give location access)
    * (other locations)
* Open dropdown:
    * hide request box
    * current -> request

## Combined

* Off

## -> System Preferences

* Control Center:
    * Battery (Menu Bar): off
    * Clock Options:
        * Show date: Never (if using date icon)
