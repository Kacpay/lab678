#!/bin/bash

if ! data=$(cat plik.yml 2>/dev/null); then
  echo "Błąd odczytu pliku."
  exit 1
fi

if ! yamllint plik.yml >/dev/null 2>&1; then
  echo "Nieprawidłowa składnia pliku YAML."
  exit 1
fi

echo "Plik YAML jest poprawny."

