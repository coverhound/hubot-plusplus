HubotCron = require 'hubot-cronjob'
fetchRestaurantMenu = require 'my-restaurant-api'
ScoreKeeper = require('./scorekeeper')
_ = require('underscore')
clark = require('clark')

module.exports = (robot) ->
  scoreKeeper = new ScoreKeeper(robot)
  # monday to friday, 11am
  pattern = '*/5 * * * *'
  timezone = 'Europe/Prague'
  fn = resetScores.bind null, (err) ->
    if err
      return console.error err
    scoreKeeper.add('colin', 'colin', 'bot-testing', 'testing-porpoises')
  new HubotCron pattern, timezone, fn
