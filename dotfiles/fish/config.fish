zoxide init fish | source
starship init fish | source
atuin init fish | source

mise activate fish | source

if status is-interactive
# Commands to run in interactive sessions can go here
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

# pnpm
set -gx PNPM_HOME "/home/zeaman/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
