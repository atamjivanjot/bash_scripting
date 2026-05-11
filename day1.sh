#!/bin/bash

name="SRE Learner"

echo "Hello $name"

read -p "Enter your city: " city

echo "You are from $city"

if [ "$city" = "Delhi" ]
then
    echo "Big tech city!"
else
    echo "Nice place!"
fi