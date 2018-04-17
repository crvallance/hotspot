# Getting a 4G modem working on pi-star
## Parts

* Unlocked Huawei E3276s-500  
   _Mine was supposed to come unlocked (but ebay... so it wasn't).  I chose the modem initally to use with a Meraki router but that served it's temporary purpose so I reused it for this project.  YMMV on something else, this just worked for me.  I paid $4.80 (€4.00 EUR) to a [sketchy unlock company](https://www.dc-unlocker.com/ "Sketchy Unlock"). I had to get 4 "credits" to get through the proccess.  This **did** actually work but I certainly ran the software from a throwaway machine since god knows why nasty stuff might have been in that program._

* Freeddom pop SIM card   
   _I got a [data only sim](https://shop.freedompop.com/product/lte-sim-kit-3-in-1-data-only-bundle/ZMP-USIM-DOTRIDOKT01) and signed up for the "Basic GSM 200" which allows 200 MB/mo for free.  Protip: make sure you also cancel the "service" they will attach to your plan.  I think mine was the data rollover service which then got me for $3.99 for the first month._

* [Raspberry Pi Zero W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/)   

* Flash drive 

* ZUMspot-rpi   
   _I got mine directly from Bruce (VE2GZI) though I think there has been some directional change in aquiring these boards.  [HRO's product page](https://www.hamradio.com/detail.cfm?pid=H0-015993) as of 4/17/18 has a comment on production._      

## Software
* [Pi-Star](https://www.pistar.uk/)
* [Pi-Star](https://www.pistar.uk/)

### Notes
The E3276 modem is one of those tricky bastards that comes up as a drive in order to install it's cient software.  In Windows this is great since you're essentially able to it in to any machine, install, and go.  In Linux on the other hand it is a pain as you need to do a mode change to get things working.  For me this was accomplished using the command `usb_modeswitch -v 12d1 -p 14fe -M '55534243123456780000000000000011062000000101000100000000000000'`.  [Here]() is a link to someone else's blog post that has a lot more information on this piece.  I *did* slightly modify their commands as my product ID was different.  I was able to find the correct value by using `llusb`.
