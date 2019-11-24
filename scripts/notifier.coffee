# Description:
#   Send message to chatroom using HTTP POST
#   https://leanpub.com/automation-and-monitoring-with-hubot/read#leanpub-auto-serving-http-requests
# URLS:
#   POST /hubot/notify/<room> (message=<message>)

module.exports = (robot) ->
 robot.router.post '/hubot/notify/:room', (req, res) ->

#Theres some stuff where I can change this to a get for processing, wonder if a page would reply

   room = req.params.room
   message = req.body.message
   console.log 'req: ' + req.body.message

   #robot.messageRoom room, message
   res.end("Thanks for the note:" + req.body.message)



   #TODO: HTTPS IS NOT WORKING.
