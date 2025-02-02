#!/bin/bash

#Recursive function to check for keyword in files
search_files() {
    local dir=$1
    local keyword=$2
    local match_found=0
    
    for file in "$dir"/*; do
        if [ -d "$file" ]; then
            search_files "$file" "$keyword"
        elif [ -f "$file" ]; then
            if grep -q "$keyword" "$file"; then
                echo "Found '$keyword' in $file"
                match_found=1  
            fi
        fi
    done
    
    if [ $match_found -eq 0 ]; then
        echo "No match found for '$keyword' in any files at $dir"
    fi
}


#Display help menu using here document
show_help() {
    cat << EOF
Usage: $0 [options]

Options:

  -d <directory> Directory to search for the keyword
  -k <keyword> Keyword to search for
  -f <file>  File to search directly for the keyword
  --help   Display help menu
EOF
}

#Validating input using regular expressions
validate_input() {
    if [[ ! -d $1 && ! -f $1 ]]; then
        echo "Error: '$1' is not a valid file or directory." | tee -a errors.log
        return 1
    fi

    # Validate keyword
    if [[ -z $2 || ! $2 =~ ^[a-zA-Z0-9_]+$ ]]; then
        echo "Error: Invalid keyword. Only alphanumeric characters are allowed." | tee -a errors.log
        return 1
    fi

    return 0
}

directory=""
keyword=""
file=""
valid_input=0

#checking if --help is passed first
if [[ "$1" == "--help" ]]; then
    show_help
    exit 0
fi

#Parsing command-line options using getopts
while getopts "d:k:f:" opt; do
    case $opt in
        d) directory=$OPTARG ;;
        k) keyword=$OPTARG ;;
        f) file=$OPTARG ;;
        *) echo "Invalid option"; show_help; exit 1 ;;
    esac
done

#Cheking if both -d and -f are passed:
if [[ -n "$directory" && -n "$file" ]]; then
    echo "Error! Cannot specify both -d and -f options" | tee -a errors.log
    exit 1
fi

# If no argument is provided
if [[ $# -eq 0 ]]; then
    echo "Error! No arguments provided" | tee -a errors.log
    show_help
    exit 1
fi

# If -d option is used
if [[ -n "$directory" ]]; then
    if validate_input "$directory" "$keyword"; then
        search_files "$directory" "$keyword"
    else
        valid_input=1
    fi
fi

# If -f option is used
if [[ -n "$file" ]]; then
    if validate_input "$file" "$keyword"; then
        if grep -q "$keyword" "$file"; then
            echo "Found '$keyword' in $file"
	fi        
    else
        valid_input=1
    fi
fi

#Exiting with status 1 if the input is invalid
if [[ $valid_input -eq 1 ]]; then
    exit 1
fi

#Finally displaying the exit status
echo "Exit status: $?"

