#!/bin/sh

if [ ! -f env.dart ]; then
  echo "env.dart not found, exiting"
  exit 1
fi

if [ -z "$1" ]; then
  echo "Please provide the Google Maps API key as the first argument"
  exit 1
fi

echo "Updating env.dart with API key $1"

sed -i "s/'YOUR_API_KEY'/'$1'/" env.dart
