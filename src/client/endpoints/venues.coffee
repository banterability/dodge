requireVenueId = (options) ->
  throw new Error "Missing required venueId" unless options.venueId
  options.venueId

module.exports = (client) ->
  return {
    venues:
      # General endpoints
      categories: (callback) ->
        client.fetch 'venues/categories', {}, (err, data) ->
          callback err, data?.response?.categories

      search: (options = {}, callback) ->
        hasRequiredParameters = ->
          if options.intent == 'browse'
            (options.ll? && options.radius?) || (options.ne? && options.sw?) || (options.near? && options.radius?)
          else
            options.ll? || options.near?

        throw new Error "Missing location parameters" unless hasRequiredParameters()
        client.fetch 'venues/search', options, (err, data) ->
          callback err, data?.response?.venues

      # Venue-specific endpoints

      detail: (options = {}, callback) ->
        venueId = requireVenueId options
        client.fetch "venues/#{venueId}", {}, (err, data) ->
          callback err, data?.response?.venue

      events: (options = {}, callback) ->
        venueId = requireVenueId options
        client.fetch "venues/#{venueId}/events", {}, (err, data) ->
          callback err, data?.response?.events

      hours: (options = {}, callback) ->
        venueId = requireVenueId options
        client.fetch "venues/#{venueId}/hours", {}, (err, data) ->
          callback err, data?.response

      likes: (options = {}, callback) ->
        venueId = requireVenueId options
        client.fetch "venues/#{venueId}/likes", {}, (err, data) ->
          callback err, data?.response?.likes

      links: (options = {}, callback) ->
        venueId = requireVenueId options
        client.fetch "venues/#{venueId}/links", {}, (err, data) ->
          callback err, data?.response?.links

      nextvenues: (options = {}, callback) ->
        venueId = requireVenueId options
        client.fetch "venues/#{venueId}/nextvenues", {}, (err, data) ->
          callback err, data?.response?.nextVenues
  }
