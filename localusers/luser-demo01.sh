#!/bin/bash

# My first script
echo  "edson"
echo  'edson'
#assign a value to a variable
WORD="script"

#display that variable
echo "$WORD"

#Demostrate that single quote cause variables to not get expanded
echo "$WORD"
echo '$WORD'

#hardcoded text
echo "This is an shell $WORD"

#Alternative
echo "This is an shell ${WORD}"

#append text
echo "${WORD}ing is fun!" #scripting is fun!
echo "$WORD ing is fun!" #script ing is fun!

#new variable
ENDING='ed'

#combining
echo "${WORD}${ENDING}"

#change the variable content (reassigment. )
ENDING='ing'

#combining
echo "${WORD}${ENDING}"
