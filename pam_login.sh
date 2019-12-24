#!/bin/sh
[ "$PAM_TYPE" = "open_session" ] || exit 0
/home/null/tg/bin/telegram-cli -W -e "msg CHANGE_ME_TO_YOUR_USER User $PAM_USER just logged in through $PAM_SERVICE:$PAM:TTY from IP $PAM_RHOST"
