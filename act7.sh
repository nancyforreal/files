# Create a 10 question true or false quiz, on topic of "linux"
#
# Usage: quiz.sh
#


# Set the number of questions
NUM_QUESTIONS=10


# Set the number of correct answers
NUM_CORRECT=0


# Define the questions array
questions=(
    "Eating your bread crusts makes your hair go curly"
    "Fish included in your diet is known as brain food?"
    "If you eat to many carrots your skin can turn orange?"
    "Linux is a free and open source operating system."
    "Cracking your knuckles will give you arthritis?"
    "If you swallow chewing gum it will stay in your stomach for 7 years?"
    "Sharks are mammals"
    "Bubble wrap was originally designed to be used as wallpaper."
    "GNU is a set of free software programs used to create a Linux operating system."
    "This is a fun game."
)

# Define answers array
answers=(
    "False"
    "True"
    "True"
    "True"
    "False"
    "False"
    "False"
    "True"
    "True"
    "True"
)

# ask user to answer questions
for i in $(seq 1 $NUM_QUESTIONS); do # loop through questions
    echo "Question $i of $NUM_QUESTIONS" # print question number
    echo "${questions[$i-1]}" # print question
    read -p "Your answer (True/False): " answer # get user answer
    if [ "$answer" = "${answers[$i-1]}" ]; then # check if answer is correct
        echo "Correct!" # print correct
        NUM_CORRECT=$((NUM_CORRECT+1)) # increment correct answers
    else # if answer is incorrect
        echo "Incorrect!" # print incorrect
    fi # end if
done # end for


# Print the number of correct answers
echo "You got $NUM_CORRECT correct out of $NUM_QUESTIONS"
