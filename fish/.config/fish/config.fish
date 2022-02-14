if status is-interactive

  # default editor
  set -gx EDITOR nvim

	# add vi key bindings to fish
	fish_vi_key_bindings

	# one-character aliases
	alias c="clear"
	alias l="exa --all --git --icons --long --tree --level=1 ."
	alias q="exit"
  alias v="nvim"

	# ssh aliases
	alias elra="ssh limu0834@elra-01.cs.colorado.edu"
	alias phdv="ssh limu0834@phet-server-dev.int.colorado.edu"
	alias phsv="ssh limu0834@phet-server.int.colorado.edu"
	alias nums="ssh limu0834@numberscope.colorado.edu"

	# cisco vpn aliases
	alias cvpn="/opt/cisco/anyconnect/bin/vpn connect vpn.colorado.edu"
	alias dvpn="/opt/cisco/anyconnect/bin/vpn disconnect"
	alias svpn="/opt/cisco/anyconnect/bin/vpn status"

	# python path stuff
	fish_add_path /Users/liam/Library/Python/3.8/bin # macos
  fish_add_path /home/liam/.local/bin              # linux

  # deno path stuff
  # what we're supposed to do \/
  # export DENO_INSTALL="/home/liam/.deno"
  # export PATH="$DENO_INSTALL/bin:$PATH"
  set DENO_INSTALL '/home/liam/.deno' # linux
  fish_add_path /home/liam/.deno/bin  # linux

end

