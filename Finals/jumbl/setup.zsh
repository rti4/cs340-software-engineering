#
# Source this file to set up your paths to use the JUMBL.
# 2 October 2000 by Stacy Prowell (sprowell@cs.utk.edu)
#
# This script assumes you are using a shell like bash.

#JUMBLHOME="/ash/homes/jumbl"
JUMBLHOME="/research/cs340/jumbl"

# Add the bin directory to the user's path.
if [ -z "$PATH" ] ; then
	PATH=$JUMBLHOME/bin
else
	PATH=$JUMBLHOME/bin:$PATH
fi

# Export the environment variables (if they aren't already
# exported).
export JUMBLHOME PATH

# Now the system is set up to use the JUMBL by directly executing
# the scripts in the bin directory.
if [ ! -e $HOME/.sqrlrc ] ; then
        cat <<EOF
 
This appears to be the first time you've run the JUMBL setup.
You should source this file every time you want to use the
routines in the JUMBL.  For more information about the JUMBL,
see:
http://www.cs.utk.edu/sqrl/esp/jumbl.html
EOF
        touch $HOME/.sqrlrc
fi

