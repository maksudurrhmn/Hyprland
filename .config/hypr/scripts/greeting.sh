#!/bin/bash

get_greeting() {
    hour=$(date +%H)

    if [ "$hour" -lt 12 ]; then
        echo "Good Morning"
    elif [ "$hour" -lt 18 ]; then
        echo "Good Afternoon"
    else
        echo "Good Evening"
    fi
}

name='<span color="#dc8a78">Maksudur Rahman</span>'

echo "Hi, :)"
echo "$name"
echo "$(get_greeting)"