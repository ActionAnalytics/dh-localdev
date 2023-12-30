DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
source "$DIR/shell_helper.sh";

checkDependencies(){
  if [[ ! code --version ]]
  then
      echo -e \\n"Prerequisites not installed.\\nPlease run the prerequisites script per the README.md in the root folder of this repository.\\n"\\n;
      exit 1;
  fi
  #check for podman here
}
