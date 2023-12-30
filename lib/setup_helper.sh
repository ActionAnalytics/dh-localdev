DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
source "$DIR/shell_helper.sh";

checkDependencies(){
  if [[ ! "${IDE}" --version ]]
  then
      echo -e \\n"Prerequisites IDE "${IDE}" not installed.\\nPlease run the prerequisites script per the README.md in the root folder of this repository.\\n"\\n;
      exit 1;
  fi
  if [[ ! podman info ]]
  then
      echo -e \\n"Prerequisite container service podman not installed.\\nPlease run the prerequisites script per the README.md in the root folder of this repository.\\n"\\n;
      exit 1;
  fi
}
