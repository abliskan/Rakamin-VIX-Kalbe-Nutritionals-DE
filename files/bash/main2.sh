#! /bin/bash 
path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/amrket"
target_dir="${path} / ${name_of_directory}"

# This check if the directory is exists
if [ -d "${full_path}" ] ; then
  echo "There is $full_path Directory Exists!"  

  # Copy file from source to target directory
  cp "${source_dir}" "${target_dir}"

  # Create a log file inside the same path
  echo "File Moved Successfully" >> ${target_dir}/report.log
  # When you redirect using > | >>, the contents of the target file are overwritten

else
  echo "$full_path Directory Not Exists!"

  # create directory inside the path
  mkdir -p "${full_path}"

  exit
fi