import pexpect
from pexpect import popen_spawn

commands = "openvpn3 session-start --config ./profile-40.ovpn"
commands_list = commands.split(" ")
username = "---"
password = "---"

session = pexpect.popen_spawn.PopenSpawn(commands)
session.expect("Auth User name: ")
session.sendline(username)
session.expect("Auth Password: ")
session.sendline(password)
print("Connected...")
