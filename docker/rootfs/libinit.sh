#!/bin/bash
#
# spark custom library

# Load Generic Libraries
. /liblog.sh

# Constants
BOLD='\033[1m'

# Functions

########################
# Print the welcome page
# Globals:
#   DISABLE_WELCOME_MESSAGE
#   APP_NAME
# Arguments:
#   None
# Returns:
#   None
#########################
print_welcome_page() {
    if [[ -z "${DISABLE_WELCOME_MESSAGE:-}" ]]; then
        if [[ -n "$APP_NAME" ]]; then
            print_image_welcome_page
        fi
    fi
}

########################
# Print the welcome page for a spark Docker image
# Globals:
#   APP_NAME
# Arguments:
#   None
# Returns:
#   None
#########################
print_image_welcome_page() {

    log ""
    log "${BOLD}Welcome to the ${APP_NAME} container${RESET}"
    log "Prepared by ${BOLD}Shubham Gupta${BOLD}"
    log ""
}
