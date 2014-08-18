hasRequiredParamsForVenueSearch = (options) ->
  if options.intent == 'browse'
    (options.ll? && options.radius?) || (options.ne? && options.sw?) || (options.near? && options.radius?)
  else
    options.ll? || options.near?

getVenueId = (options) ->
  throw new Error "Missing required venueId" unless options.venueId
  options.venueId

module.exports = (client) ->
  return {
    venues:
      categories: (callback) ->
        client.fetch 'venues/categories', {}, (err, data) ->
          callback err, data?.response?.categories

      detail: (options = {}, callback) ->
        venueId = getVenueId options
        client.fetch "venues/#{venueId}", {}, (err, data) ->
          callback err, data?.response?.venue

      search: (options = {}, callback) ->
        throw new Error "Missing location parameter(s)" unless hasRequiredParamsForVenueSearch options
        client.fetch 'venues/search', options, (err, data) ->
          callback err, data?.response?.venues
  }
