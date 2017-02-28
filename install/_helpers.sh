#!/bin/bash

# http://stackoverflow.com/a/6508977
####################################################################
# Bash v3 does not support associative arrays
# and we cannot use ksh since all generic scripts are on bash
# Usage: map_put map_name key value
#
function map_put
{
  alias "${1}$2"="$3"
}

# map_get map_name key
# @return value
#
function map_get
{
  alias "${1}$2" | awk -F"'" '{ print $2; }'
}

# map_keys map_name
# @return map keys
#
function map_keys
{
  alias -p | grep $1 | cut -d'=' -f1 | awk -F"$1" '{print $2; }'
}

scriptsMap=$(basename $0)scripts_map_
function script
{
  map_put $scriptsMap "$1" "$2"
}
