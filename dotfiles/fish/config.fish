<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> 3095346 (Copy Dotfiles)
zoxide init fish | source
starship init fish | source
atuin init fish | source

mise activate fish | source

<<<<<<< HEAD
=======
>>>>>>> bcd7ef6 (Copy Dotfiles)
>>>>>>> 3095346 (Copy Dotfiles)
if status is-interactive
# Commands to run in interactive sessions can go here
end

<<<<<<< HEAD
=======
<<<<<<< HEAD
zoxide init fish | source
starship init fish | source
### bling.fish source start
test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
### bling.fish source end
=======
>>>>>>> 3095346 (Copy Dotfiles)
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

# pnpm
set -gx PNPM_HOME "/home/zeaman/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
<<<<<<< HEAD
=======
>>>>>>> bcd7ef6 (Copy Dotfiles)
>>>>>>> 3095346 (Copy Dotfiles)
