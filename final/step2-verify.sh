OUT=$( grep futbolistas /etc/group | cut -d: -f1) && [[ $OUT == starbuck ]] && echo done
