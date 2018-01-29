This addon is made to control the hyperion ambilight over Network (JSON-RPC) with for example Browser or Apps

Installation:
- copy the folder "script.hyperioncontrol" to "/storage/.kodi/addons/" on Raspberry Pi
	or create a zip file and install Addon from zip file
SSH: (copy folder script.hyperioncontrol to downloads)
mkdir .kodi/addons/script.hyperioncontrol
cp downloads/script.hyperioncontrol/*.* .kodi/addons/

- copy the folder "scripts" to "userdata/hyperion/scripts/" folder
	it contains scripts for hyperion

- copy autostart.sh to configfiles

- activate the json server in Hyperion by uncommenting or adding this lines:
	"jsonServer" : 
{
 "port" : 19444
 },

Usage:
call command with JSON-RPC
{"jsonrpc":"2.0","id":1,"method":"Addons.ExecuteAddon" ,"params":{"addonid":"script.hyperioncontrol","params":{"cmd":"power_toggle"}}}

for example: 	power_toggle calls the script power_toggle.sh
		effect_knight_rider calls effect_knight_rider.sh
		and so on

there is only one exception, if you call color_FF0000 it will light up the red LEDs
so you can choose all available colors

effect_off turns all effects off ;-)


if you want to use a relay to switch the ambilight power supply please ad this lines to autostart.sh:
echo "X" > /sys/class/gpio/export

echo "out" > /sys/class/gpio/gpioX/direction

echo "1" > /sys/class/gpio/gpioX/value

X is the Number of the GPIO Port used to control the Relay and should be replaced!
in th files power_toggle.sh and power_off.sh the number must be changed too!
