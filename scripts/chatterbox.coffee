module.exports = (robot) ->

  robot.hear /chatterbox wake up/i, (res) ->
    res.send "You need something fool ?"

  robot.respond /help/i, (res) ->
    res.send "If you want me to diss YO MOMMA say; 'yo momma' "

  robot.respond /yo momma/i, (msg) ->
    msg.http("http://api.yomomma.info/")
      .get() (err, res, data) ->
        response = JSON.parse data
        msg.send response.joke


