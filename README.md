# Dodge

A simple [Foursquare API][foursquare-api] client for fetching venue data.

[foursquare-api]: https://developer.foursquare.com/

## Endpoints

Dodge is currently working on support for endpoints that are part of Foursquare's [Venue Platform][venue-platform] and do not require user authentication.

[venue-platform]: https://developer.foursquare.com/overview/venues

### General Endpoints

| Endpoint                   | Description (link to API documentation)                  | Supported?             |
| -------------------------- | -------------------------------------------------------- | ---------------------- |
| `venues/categories`        | [Venue Categories][venues/categories]                    | Yes :white_check_mark: |
| `venues/explore`           | [Explore Recommended and Popular Venues][venues/explore] | No :x:                 |
| `venues/search`            | [Search Venues][venues/search]                           | Yes :white_check_mark: |
| `venues/suggestcompletion` | [Suggest Completion Venues][venues/suggestcompletion]    | No :x:                 |
| `venues/trending`          | [Trending Venues][venues/trending]                       | No :x:                 |

[venues/categories]: https://developer.foursquare.com/docs/venues/categories
[venues/explore]: https://developer.foursquare.com/docs/venues/explore
[venues/search]: https://developer.foursquare.com/docs/venues/search
[venues/suggestcompletion]: https://developer.foursquare.com/docs/venues/suggestcompletion
[venues/trending]: https://developer.foursquare.com/docs/venues/trending

### Venue-specific Endpoints

| Endpoint                     | Description (link to API documentation)            | Supported?             |
| ---------------------------- | -------------------------------------------------- | ---------------------- |
| `venues/<venue>`             | [Venue Details][venues/venue]                      | Yes :white_check_mark: |
| `venues/<venue>/events`      | [Venue Events][venues/venue/events]                | Yes :white_check_mark: |
| `venues/<venue>/hours`       | [Venue Hours][venues/venue/hours]                  | Yes :white_check_mark: |
| `venues/<venue>/likes`       | [Users who have liked a venue][venues/venue/likes] | Yes :white_check_mark: |
| `venues/<venue>/links`       | [Links For a Venue][venues/venue/links]            | Yes :white_check_mark: |
| `venues/<venue>/listed`      | [Lists][venues/venue/listed]                       | No :x:                 |
| `venues/<venue>/menu`        | [Venue Menu][venues/venue/menu]                    | No :x:                 |
| `venues/<venue>/nextvenues`  | [Next Venues][venues/venue/nextvenues]             | Yes :white_check_mark: |
| `venues/<venue>/photos`      | [Photos from a Venue][venues/venue/photos]         | No :x:                 |
| `venues/<venue>/tips`        | [Tips from a Venue][venues/venue/tips]             | No :x:                 |

[venues/venue]: https://developer.foursquare.com/docs/venues/venues
[venues/venue/events]: https://developer.foursquare.com/docs/venues/events
[venues/venue/hours]: https://developer.foursquare.com/docs/venues/hours
[venues/venue/likes]: https://developer.foursquare.com/docs/venues/likes
[venues/venue/links]: https://developer.foursquare.com/docs/venues/links
[venues/venue/listed]: https://developer.foursquare.com/docs/venues/listed
[venues/venue/menu]: https://developer.foursquare.com/docs/venues/menu
[venues/venue/nextvenues]: https://developer.foursquare.com/docs/venues/nextvenues
[venues/venue/photos]: https://developer.foursquare.com/docs/venues/photos
[venues/venue/tips]: https://developer.foursquare.com/docs/venues/tips
