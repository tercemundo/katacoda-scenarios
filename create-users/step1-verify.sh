OUT=$( grep mguazzardo /etc/shadow | cut -d: -f1) && [[ $OUT == mguazzardo ]] && echo done
