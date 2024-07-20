#!/bin/bash

generate_random_string() {
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c "$1" ; echo ''
}

generate_md5() {
    echo -n "$1" | openssl md5 | awk -F'= ' '{print $2}'
}

append_snehil() {
    echo "$1.aravind"
}

save_to_file() {
    echo "$1" > "$2"
}

random_user=$(generate_random_string 32)
user_flag=$(generate_md5 "$random_user")
user_flag=$(append_snehil "$user_flag")

output_file="/home/floki/user.txt"
save_to_file "$user_flag" "$output_file"

random_root=$(generate_random_string 32)
root_flag=$(generate_md5 "$random_root")
root_flag=$(append_snehil "$root_flag")

output_root="/root/root.txt"
save_to_file "$root_flag" "$output_root"

