import os
import sys
import telebot
import configparser

################################
mytoken="YOUR_TOKEN_WITH_QUOTES"
myid=YOUR_ID_WITHOUT_QUOTES
################################
bot = telebot.TeleBot(mytoken)
pam_login=sys.argv
user=sys.argv[1]
method=sys.argv[2]
source=sys.argv[3]
message="User "+user+" just logged in from "+source+" via "+method
bot.send_message(myid, message)
