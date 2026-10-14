if test -x /home/linuxbrew/.linuxbrew/bin/brew
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
end

atuin init fish | source

zoxide init fish | source
starship init fish | source
atuin init fish | source

if status is-interactive
  # Commands to run in interactive sessions can go here
end
