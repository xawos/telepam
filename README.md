
# TelePAM

TelePAM is a little unicorn that sends you messages when someone opens a new session in your Linux machine through PAM's pam_exec.


> Instructions

0. Follow [this](https://blog.devgenius.io/how-to-set-up-your-telegram-bot-using-botfather-fd1896d68c02) instructions to create a Telegram bot and [this](https://botostore.com/c/getmyid_bot/) to get your ID.
1. Clone the repo and enter its folder.
2. Add the following line at the end of the file `/etc/pam.d/common-session`:
 `session optional        pam_exec.so     /usr/bin/pam_login.sh`
3. **Change** file pam_login.py with **your** id and token
4. Place the files pam_login.[py,sh] in /usr/bin
	`mv pam_login.* /usr/bin/`
5. `pip3 install telebot`

If everything goes correctly at the next login you will receive a message to your bot similar to:
![alt text](https://github.com/xawos/telepam/blob/master/test.png?raw=true)
Remember to send a message to the bot before setting this up, or Telegram will reject the request.

For any debugging purposes change the line we added in `/etc/pam.d/common-session` to:
- `session optional        pam_exec.so     debug   log=/tmp/pam_exec.log   /usr/bin/pam_login.sh`
- You'll have a file in `/tmp/pam_exec.log` with pam_exec's output to guide you in troubleshooting

The idea started while playing with PAM for reasons that i do not recall because:
![alt text](https://github.com/xawos/telepam/blob/master/notacleverman.jpg?raw=true)
