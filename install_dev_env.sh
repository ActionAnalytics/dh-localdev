#!/bin/bash
CALLER_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
source "$CALLER_DIR/lib/setup_helper.sh";
source "$CALLER_DIR/lib/dependency_tools_install.sh";

checkDependencies;

source "${PROFILE_FILE}";
source "${RC_FILE}";
