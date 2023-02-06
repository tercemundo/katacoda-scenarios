#!/bin/bash
echo -e "Chequeando objetivos..."
OBJECTIVE_NUM=0
function printresult {
  ((OBJECTIVE_NUM+=1))
  echo -e "\n----- Chequeando objetivo $OBJECTIVE_NUM -----"
  echo -e "----- $1"
  if [ $2 -eq 0 ]; then
      echo -e "      \033[0;32m[COMPLETE]\033[0m Congrats! Terminaste este lab!"
  else
      echo -e "      \033[0;31m[INCOMPLETE]\033[0m OH NO. Este lab no esta terminado!"
  fi
}

expected="nginx"
actual=$(kubectl get deployment qqmelo -o jsonpath='{.spec.template.spec.containers[0].image}' 2>/dev/null)
[[ "$actual" = "$expected" ]]
printresult "Arregle la imagen." $?

