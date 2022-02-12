if status is-interactive

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

	# path stuff
	fish_add_path /Users/liam/Library/Python/3.8/bin # macos
  fish_add_path /home/liam/.local/bin              # linux

end

