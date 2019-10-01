# Set common environment variables
set normal (set_color normal)
set fish_greeting ""
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)
set PATH ~/matlab/bin $PATH
set_color -b black

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# Fish prompt function
function fish_prompt
  set last_status $status
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal
  printf '%s ' (__fish_git_prompt)
  set_color normal
end

# Aliases
alias f "feh --scale-down --auto-zoom"
alias v "nvim"
alias t "urxvtc & eval"
alias vimdiff "nvim -d"
alias z "zathura"
alias p "python3"
alias vm "/home/mattias/.vim/plugged/vim-matlab/scripts/vim-matlab-server.py"
alias bs "xrandr --output DP-1 --above eDP-1"
