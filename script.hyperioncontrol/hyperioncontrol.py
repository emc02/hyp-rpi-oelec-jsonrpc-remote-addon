import os
import sys
import urlparse

params=sys.argv[1]
cmd=params.split('=')
cmd1=cmd[1].split('_')

if cmd1[0]=='color':
        os.system('/storage/hyperion/bin/hyperion-remote.sh --color '+cmd1[1])
else:
	os.system('/storage/.kodi/userdata/hyperion/scripts/'+cmd[1]+'.sh')

