OUT=$( grep futbolistas /etc/group | cut -d: -f1) && [[ $OUT == futbolistas ]] && echo done
