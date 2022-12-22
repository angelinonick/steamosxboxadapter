#######
PURPOSE
#######


This script is an easy way to install xone's xbox adapter drivers for Steam Deck (SteamOS). 


SteamOS has a read-only file system that will revert any changes made to it after an update. This script's goal is to make reinstalling this driver as easy as possible.


This will handle any of the configuration changes needed and dependancies required.




############
PREREQUISTIE
############


1. You will need git installed. To install type:

        pacman -S git


2. You will need to be able to run as root or sudo. This means you will need to have a password set up for sudo/root. Very important to remember this password. You will not see your password as you type it, so be precise. You will be prompted to type it once, and then again to confirm. To set the password type:

        passwd



##########
HOW TO USE
##########


1. Open Konsole
    
    
        Many ways to do this, you can go to the steam deck icon at the bottom left, click it, then search Konsole.
        Or alternatively it is under the "System" folder in the search menu.
    
    
2. Clone this repo


        git clone https://github.com/angelinonick/steamosxboxadapter.git


3. Navigate into the folder that just got cloned


        cd steamosxboxadapter


4. Set the installscript.sh permissions to be able to execute (it should already be set with 755 permissons, but in case it isn't)


        chmod 755 installscript.sh


5. Elevate your current permissions to root


        sudo su 
    
    
6. Execute the installation script
    
    
        ./installscript.sh
