#
# Source this file to set up your paths to use the JUMBL.
# 2 October 2000 by Stacy Prowell (sprowell@cs.utk.edu)
#
# This script assumes you are using a shell like csh.

#setenv JUMBLHOME "/ash/homes/jumbl"
setenv JUMBLHOME "/research/cs340/jumbl"

# Add the bin directory to the user's path.
if ($?PATH == 0) then
	setenv PATH $JUMBLHOME/bin
else
	setenv PATH $JUMBLHOME/bin:$PATH
endif

# Now the system is set up to use the JUMBL by directly executing
# the scripts in the bin directory.
if (! -e $HOME/.sqrlrc) then
	cat <<EOF

This appears to be the first time you've run the JUMBL setup.
You should source this file every time you want to use the
routines in the JUMBL.  For more information about the JUMBL,
see:
http://www.cs.utk.edu/sqrl/esp/jumbl.html
EOF
	touch $HOME/.sqrlrc
endif

