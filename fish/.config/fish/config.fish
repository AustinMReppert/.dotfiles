set -x PATH $PATH ~/.emacs.d/bin

set -x QT_QPA_PLATFORMTHEME dolphin

alias fix-time "sudo ntpd -qg; sudo hwclock -w"

if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- -keeptty
  end
end

function fish_greeting
end
