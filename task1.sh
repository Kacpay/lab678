#!/bin/bash

while getopts ":a:b:c:" opt; do
  case $opt in
    a)
      argument_a="$OPTARG"
      ;;
    b)
      argument_b="$OPTARG"
      ;;
    c)
      argument_c="$OPTARG"
      ;;
    \?)
      echo "Nieprawidłowy argument: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Opcja -$OPTARG wymaga argumentu." >&2
      exit 1
      ;;
  esac
done

echo "Argument a: $argument_a"
echo "Argument b: $argument_b"
echo "Argument c: $argument_c"

