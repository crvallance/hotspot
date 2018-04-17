# Getting a 4G modem working on pi-star
## Parts

* Unlocked Huawei E3276s-500  
   _Mine was supposed to come unlocked (but ebay... so it wasn't).  I chose the modem initally to use with a Meraki router but that served it's temporary purpose so I reused it for this project.  YMMV on something else, this just worked for me.  I paid $4.80 (€4.00 EUR) to a [sketchy unlock company](https://www.dc-unlocker.com/ "Sketchy Unlock"). I had to get 4 "credits" to get through the proccess.  This **did** actually work but I certainly ran the software from a throwaway machine since FSM knows what nasty stuff might have been in that program._

* Freeddom pop SIM card   
   _I got a [data only sim](https://shop.freedompop.com/product/lte-sim-kit-3-in-1-data-only-bundle/ZMP-USIM-DOTRIDOKT01) and signed up for the "Basic GSM 200" which allows 200 MB/mo for free.  Protip: make sure you also cancel the "service" they will attach to your plan.  I think mine was the data rollover service which then got me for $3.99 for the first month._

* [Raspberry Pi Zero W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/)   

* MicroSD Flash Card 

* ZUMspot-rpi   
   _I got mine directly from Bruce (VE2GZI) though I think there has been some directional change in aquiring these boards.  [HRO's product page](https://www.hamradio.com/detail.cfm?pid=H0-015993) as of 4/17/18 has a comment on production._      

## Software
* [Pi-Star](https://www.pistar.uk/)
* WVDial   
* usb-modeswitch   
* ppp   

This should get them all installed: `sudo apt-get isntall wvdial usb-modeswitch ppp`

### Step-by-step
No promised but I might do this with a blank SD card just to give some step-by-step instructions from scratch.

### Notes
The E3276 modem is one of those tricky bastards that comes up as a drive in order to install it's cient software.  In Windows this is great since you're essentially able to it in to any machine, install, and go.  In Linux on the other hand it is a pain as you need to do a mode change to get things working.  For me this was accomplished using the command `usb_modeswitch -v 12d1 -p 14fe -M '55534243123456780000000000000011062000000101000100000000000000'`.  Below is a link to Nico's blog post that has a lot more information on this piece.  I *did* slightly modify their commands as my product ID was different.  I was able to find the correct value by using `llusb`.  Currently my setup is confusing as I have both a udev rule *and* a shell script that is trying to perform the same task at boot.  I know one of these works now, just not which one.  I'll clean things up and advise here later but for now the udev rule is in the repo.

### Sources
As usual, most of the hard stuff was already figured out by someone else.  Here are the two links that I took most of my information from.   
[FreedomPop Forum](https://forums.freedompop.com/us/discussion/8602/just-thought-i-would-share-complete-raspbian-setup-for-u301)   
[Nico van der Dussen](https://nicovddussen.wordpress.com/2014/11/12/setting-up-your-raspberry-pi-to-work-with-a-3g-dongle/)
