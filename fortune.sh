#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

function GET_FORTUNE() {
  # Если аргумент у функции отсутствует
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi

  read QUESTION
}

GET_FORTUNE

# До тех пор пока вопрос не заканчивается "?"
until [[ $QUESTION =~ \?$ ]]
do
  # again тут - это аргумент для срабатывание ветки else в функции
  GET_FORTUNE again
done

echo -e "\n"${RESPONSES[$N]}
