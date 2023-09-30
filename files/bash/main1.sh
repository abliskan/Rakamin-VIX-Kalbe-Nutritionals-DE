#! /bin/bash 
path="/hdfs/data/data1"
name_of_directory="data1"

full_path="${path} / ${name_of_directory}"

# This check if the directory is exists
if [ -d "${full_path}" ] ; then
  echo "There is $full_path Directory Exists!"  
## note: -d = list directories only, do not included files

else
then
  echo "$full_path Directory Not Exists!"
  
  # create directory inside the path
  mkdir -p "${full_path}"
## note: -p = tells mkdir to create the specified directory and, if necessary, any parent directories that don't exist
  exit
fi

# Schedule a crontab to run script at 07:00 AM Daily
0 7 * * * /path/to/script1.sh | crontab -l