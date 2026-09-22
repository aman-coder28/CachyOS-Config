zoxide init fish | source
starship init fish | source
atuin init fish | source

source /usr/share/cachyos-fish-config/cachyos-config.fish

# pnpm
set -gx PNPM_HOME "/home/zeamanuel/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
