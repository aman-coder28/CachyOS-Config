zoxide init fish | source
starship init fish | source
atuin init fish | source

fish_add_path ~/.local/state/nix/profiles/profile/bin
fish_add_path ~/.nix-profile/bin

if status is-interactive
   # Commands to run in interactive sessions can go here
end

mise activate fish | source
set -gx PATH $PATH /usr/lib/qt6/bin
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
