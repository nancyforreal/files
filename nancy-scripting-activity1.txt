#! /bin/bash




echo "username: $(echo $USER)"
echo "current date: `date +"%Y-%m-%d"`"
echo "current time: `date +"%T"`"
echo "current working directory: $PWD"
echo "How many files in that directory: $(ls -la | wc -l)"
echo "What is the biggest file in the current directory: `du -a | sort -n -r | head `"

