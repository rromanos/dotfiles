# .bashrc

# On Debian, Bullseye 11
# alias zokhMth='systemctl start poweroff.target'
# alias zokhTokh='systemctl start reboot.target'
# alias zokhDmakh='systemctl start hibernate.target'
# alias zokhLo='systemctl start sleep.target'

alias zokhMth='shutdown -h now'
alias zokhTokh='shutdown -r now'
alias zokhDmakh='systemctl hibernate'
alias zokhLo='systemctl suspend'

# To use when SWAP is used while enough RAM is free
alias fuckSwap='sudo echo "Swap: turning off..." && sudo swapoff -a && echo "Swap: turning on..." && sudo swapon -a && echo "Swap: OK"'

# TODO write a script to enable mysqld when needed 

# quick cli, you know
alias pvpn='protonvpn-cli'

# Neovim is better ("vi" still get classic vim)
alias vim='nvim'
alias vifz='nvim -o `fzf`'

# Personal commands/scripts
alias psOuser="export PS1='\[\033[01;32m\]\u\[\033[00m\]$ '"
alias showDeps="~/Sources/scripts/showDep.sh"
alias stopwatch="~/Sources/scripts/stopwatch.sh"
alias meinDownload="~/Sources/scripts/meinDownloadSkript.sh"
alias meinLayoutSyriac="~/Sources/scripts/meinLayout.sh syriac"
alias meinLayoutNoSyriac="~/Sources/scripts/meinLayout.sh nosyriac"
alias meinPlayerctl="~/Sources/scripts/meinPlayerCtl.sh"

# NVM setup
# alias oldSchool="~/Sources/scripts/nvm_setup.sh"

# GNOME-friendly
alias gnomeSwCapEsc="gsettings set org.gnome.desktop.input-sources xkb-options \"['caps:escape']\""

source ~/Sources/ssh-aliases/ssh-aliases.sh
