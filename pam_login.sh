#!/bin/sh
[ "$PAM_TYPE" = "open_session" ] || exit 420
/usr/bin/python3 /usr/bin/pam_login.py $PAM_USER $PAM_SERVICE $PAM $PAM_RHOST
