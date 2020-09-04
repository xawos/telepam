
# TelePAM

> Based on [Visheng](https://github.com/vysheng/tg)'s work 

TelePAM is a little unicorn that sends you messages when someone opens a new session in your Linux machine through PAM's pam_exec.


The idea started while playing with PAM for reasons that i do not recall.

> Instructions

0. Follow [Visheng](https://github.com/vysheng/tg)'s instructions to setup the bot.
1. Place "common-session" in /etc/pam.d/ OR modify your file according to the one provided;
The only change is the added line:
    session optional        pam_exec.so     /usr/bin/pam_login.sh
Be sure to use "optional", otherwise if the Telegram client is not working PAM will not let you in. 
2. Place the file pam_login.sh in /usr/bin and you're good to go.
3. Put "action.lua" in the same folder as telegram-cli.
4. Start the bot with the "start_tg.sh" shell script

TelePAM also does a couple more helpful things, like:
 - Reply to "Ping" with "Pong"
 - Execute shell commands if the message starts with "!" and you're authorized
 - Executes a PHP page and return the output (file not provided) 
 - Greetings in italian replying to "Ciao"

