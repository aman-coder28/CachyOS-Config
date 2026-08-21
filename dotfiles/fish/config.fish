if status is-interactive
# Commands to run in interactive sessions can go here
end

zoxide init fish | source
starship init fish | source
### bling.fish source start
test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
### bling.fish source end
