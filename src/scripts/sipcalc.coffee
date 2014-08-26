# Description:
#   Show the output of sipcalc command
#
# Commands:
#   hubot sipcalc <text> - Run sipcalc <text>

module.exports = (robot) ->
  exec = require("child_process").exec
  robot.respond /SIPCALC (.*)$/i, (msg) ->
    command = "sipcalc #{msg.match[1]}"
    exec command, (error, stdout, stderror) ->
      msg.reply error if error
      msg.reply stdout if stdout
      msg.reply stderror if stderror
