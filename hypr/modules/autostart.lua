local shell = "qs -c noctalia-shell"

hl.on("hyprland.start", function()
	hl.exec_cmd(shell)
end)
