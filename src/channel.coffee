class Channel
  constructor: (@_client, data = {}) ->
    @_history = {}

    for k of (data or {})
      @[k] = data[k]

  addMessage: (message) ->
    @_history[message.ts] = message

  getHistory: ->
    @_history

module.exports = Channel