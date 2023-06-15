#!/bin/bash

if ! data=$(cat plik.xml 2>/dev/null); then
  echo "Błąd odczytu pliku."
  exit 1
fi

if ! xmllint --noout plik.xml >/dev/null 2>&1; then
  echo "Nieprawidłowa składnia pliku XML."
  exit 1
fi

echo "Plik XML jest poprawny."

