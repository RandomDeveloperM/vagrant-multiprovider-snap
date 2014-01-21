## 0.0.8 (January 21, 2014)

 - Fixed bug in handling of multiple snapshots on both providers.

## 0.0.7 (October 23, 2013)

 - Fixed bug preventing rollback on aborted VirtualBox VMs.

## 0.0.6 (September 24, 2013)

 - Fixed bug preventing rollback on halted Virtualbox VMs.

## 0.0.5 (August 30, 2013)

 - Fixed error when listing snapshots from un-created VMs

## 0.0.4 (July 26, 2013)

 - Handle ordering of plugin dependencies better - deprecate the 'zz' name component.
 - Tested working with latest vagrant (1.2.5) and vmware fusion plugin (0.8.3)

## 0.0.3 (July 1, 2013)

 - Adds snapshot methods to VirtualBox::Driver::Meta for use outside of
   the plugin

## 0.0.2 (June 27, 2013)

 - Adds has_snapshot? method to drivers
 - Uses proper error messages when attempting to rollback on VMs with no snapshots
 - Makes sure VirtualBox driver only deals with its own snapshots.

## 0.0.1 (June 12, 2013)

Initial release - supports Virtualbox and VMWare Fusion
