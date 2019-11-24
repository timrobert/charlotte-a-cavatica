# Description:
#   Send message to chatroom using HTTP POST
#   https://leanpub.com/automation-and-monitoring-with-hubot/read#leanpub-auto-serving-http-requests
# URLS:
#   POST /hubot/notify/<room> (message=<message>)

module.exports = (robot) ->
 robot.router.post '/hubot/notify/:room', (req, res) ->
   room = req.params.room
   message = req.body.message
   console.log 'req: ' + req.body.message

   #robot.messageRoom room, message
   res.end("Thanks for the note")
