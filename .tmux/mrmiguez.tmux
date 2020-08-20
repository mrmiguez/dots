# scrollback size
set -g history-limit 10000
set-option -g default-shell /bin/zsh

################################
# Keybinds
###############################

# Changing ctrl b to ctrl a as the command button
unbind C-b
set -g prefix C-a

# set first window to index 1 (not 0) to map more to the keyboard layout
set -g base-index 1
set -g pane-base-index 1

# pass through xterm keys
set -g xterm-keys on

# Keep your finger on ctrl, or don't, same result
bind-key C-d detach-client
bind-key C-p paste-buffer

# Redraw the client (if interrupted by wall, etc)
bind R refresh-client

# reload tmux config with ctrl + a + r
 unbind r
 bind r \
     source-file ~/.tmux.conf \;\
         display 'Reloaded tmux config.'

# Vertical splits with g or C-g
unbind g 
unbind C-g
bind-key g split-window -h
bind-key C-g split-window -h

# Horizontal splits with v or C-h
unbind h
unbind C-h
bind-key h split-window
bind-key C-h split-window

# Ctrl + a + o rename window
# unbind o
# unbind C-o
# bind-key C-o rename-window

# Using the mouse to switch panes
set -g mouse-utf8 on
set -g mouse on

# Ctrl - t or t new window
unbind t
unbind C-t
bind-key t new-window
bind-key C-t new-window

# Ctrl - w or w to kill panes
unbind w
unbind C-w
bind-key w kill-pane
bind-key C-w kill-pane

# C + control q to kill session
unbind q
unbind C-q
bind-key q kill-session
bind-key C-q kill-session

# Switching panes with alt
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Ctrl + a + n : New session
unbind n
unbind C-n
bind-key n new-session
bind-key C-n new-session

# Ctrl + a + Pagedown : Next window
#unbind Pagedown
unbind Pagedown
bind-key Pagedown next-window

# Ctrl + a + Pagup : Previous window
#unbind Pageup
unbind Pageup
bind-key Pageup previous-window

# Zoom with ctrl + a + ctrl + '+'
#unbind C-+
#bind C-+ \
#new-window -d -n tmux-zoom 'clear && echo TMUX ZOOM && read'\;\
#swap-pane -s tmux-zoom.0 \;\
#select-window -t tmux-zoom

# Zoom back ctrl + a + ctrl + '-'
#unbind C--
#bind C-- \
#	last-window \;\
#	swap-pane -s tmux-zoom.0 \;\
#	kill-window -t tmux-zoom

# Visual Activity Monitoring between windows
setw -g monitor-activity on
set -g visual-activity on

# Show tmux positions in titles
set -g set-titles on

# Set up a basic panel structure for command + ctr D
bind D source-file ~/.tmux/dev

# Attach to a session if runs otherwise create a new one
new-session -n $HOST

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'egel/tmux-gruvbox'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
