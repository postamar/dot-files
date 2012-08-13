COMMON_SHELL_FILES="$SHELL_FILES/../common"
ENV_SHELL_FILES="$SHELL_FILES/../environments"

# TODO: Remove duplicates from the PATH
PATH="/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/usr/bin:/usr/sbin:/bin:/sbin:${PATH}"
CDPATH=".:${HOME}"

source "$SHELL_FILES"/config.*sh

files=`ls -1 "$COMMON_SHELL_FILES"/*.sh "$ENV_SHELL_FILES"/*.sh "$SHELL_FILES"/lib/*.*sh`
for file in $files; do
  source $file
done
