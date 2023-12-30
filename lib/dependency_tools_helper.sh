DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
source "$DIR/shell_helper.sh";

envProfileSettings(){
    local _profile_file=$1;
    if [[ ! -e "$_profile_file" ]]; then
        touch "$_profile_file";
    fi
    local _profile_file_before=$(date -r "$_profile_file" "+%m-%d-%Y %H:%M:%S");
    if ! grep "export SOME_TERRAFORM_SETTING=" "$_profile_file"; then
        echo "export SOME_TERRAFORM_SETTING=\"some_value\"" >> "$_profile_file";
    fi

    local _profile_file_after=$(date -r "$_profile_file" "+%m-%d-%Y %H:%M:%S");
    if [[ "$_profile_file_before" != "$_profile_file_after" ]]; then source "$_profile_file"; fi
}
