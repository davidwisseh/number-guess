#!/bin/bash
while [[ -z $USERNAME ]] || (( ${#USERNAME} > 22 ))
do
echo Enter your username:
read USERNAME
done

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
if [[ -z $USER_ID ]]
then
INSERT_RESPONSE=$($PSQL "INSERT INTO users(username) values('$USERNAME')")
USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
echo Welcome, $USERNAME! It looks like this is your first time here.
else
GAMES="$($PSQL "select guesses from games where user_id=$USER_ID")"


ARRAY=()

for i in $GAMES; do 
ARRAY+=("$i")
done







MINGUESSES=${ARRAY[0]} 

if [[ -z $MINGUESSES ]]
then 
MINGUESSES=0
fi


for i in "${ARRAY[@]}"; do
if [[ $i -lt $MINGUESSES ]]
then
$MINGUESSES=$i
fi
done



echo Welcome back, $USERNAME! You have played ${#ARRAY[@]} games, and your best game took $MINGUESSES guesses.
fi
NUMBER=$(( (RANDOM % 1000) + 1 ))
echo $NUMBER
GUESSES=0
echo "Guess the secret number between 1 and 1000:"


while [[ -z $GUESS ]] || [[ $GUESS -ne $NUMBER ]] 
do
GUESSES=$(( $GUESSES + 1 ))
read GUESS 

if ! [[ $GUESS =~ ^[0-9]+$ ]]
then
echo "That is not an integer, guess again:"
else if [[ $GUESS -gt $NUMBER ]]
then
echo "It's lower than that, guess again:"
else  if [[ $GUESS -lt $NUMBER ]]
then
echo "It's higher than that, guess again:"
else 
POSTSCORE=$($PSQL "iNSERT INTO games(user_id,guesses) values($USER_ID,$GUESSES)")


fi
fi

fi
done

echo You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!


