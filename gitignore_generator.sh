#!/bin/bash


function get_gitignore {
  echo $option
  curl "https://www.toptal.com/developers/gitignore/api/$option" > .gitignore
}

case $1 in
  --option=*)
    option="${1#*=}"
    get_gitignore "$option" 
  ;;
  *)
    echo "Opción no válida: $1"
    ;;
esac
