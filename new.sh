#!/bin/bash
read -p "Enter your favorite color: " color

if [[ -z "$color" ]]; then
   echo "You didn't enter anything !"
else 
   echo "Great, you entered $color"
fi

