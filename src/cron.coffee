HubotCron = require 'hubot-cronjob'
ScoreKeeper = require('./scorekeeper')

module.exports = (robot) ->
  scoreKeeper = new ScoreKeeper(robot)
  # monday to friday, 11am
  pattern = '* * * * *'
  robot.messageRoom 'bot-testing', 'working1'
  fn = ->
    robot.messageRoom 'bot-testing', 'working1'
    scoreKeeper.add('colin', 'colin', 'bot-testing', 'testing-porpoises')
  new HubotCron pattern, fn
