eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
export PATH="/Users/liam/Library/Python/3.10/bin:$PATH"

##
# Your previous /Users/liam/.zprofile file was backed up as /Users/liam/.zprofile.macports-saved_2022-06-20_at_16:13:56
##

# MacPorts Installer addition on 2022-06-20_at_16:13:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2022-06-20_at_16:13:56: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.


# Created by `pipx` on 2022-06-22 17:38:44
export PATH="$PATH:/Users/liam/.local/bin"
