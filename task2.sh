#!/bin/bash


if ! data=$(cat plik.json 2>/dev/null); then
  echo "Błąd odczytu pliku."
  exit 1
fi

if ! jq . >/dev/null 2>&1 <<< "$data"; then
  echo "Nieprawidłowa składnia pliku JSON."
  exit 1
fi

echo "Plik JSON jest poprawny."

