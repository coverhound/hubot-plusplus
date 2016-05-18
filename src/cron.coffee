HubotCron = require 'hubot-cronjob'
ScoreKeeper = require('./scorekeeper')

module.exports = (robot) ->
  scoreKeeper = new ScoreKeeper(robot)
  # monday to friday, 11am
  pattern = '* * * * *'
  timezone = 'America/Los_Angeles'
  robot.messageRoom 'bot-testing', 'working0'
  fn = ->
    robot.messageRoom 'bot-testing', 'working1'
    scoreKeeper.add('colin', 'colin', 'bot-testing', 'testing-porpoises')
  new HubotCron pattern, timezone, fn
