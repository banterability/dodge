# Dodge
---

A simple [Foursquare API][foursquare-api] client for fetching venue data.

[foursquare-api]: https://developer.foursquare.com/

## Endpoints

Dodge is currently working on support for endpoints that are part of Foursquare's [Venue Platform][venue-platform] and do not require user authentication.

[venue-platform]: https://developer.foursquare.com/overview/venues

### General Endpoints

| Endpoint                 | Description                                                     | Supported?             |
| ------------------------ | --------------------------------------------------------------- | ---------------------- |
| venues/categories        | Venue Categories [(docs)][venues/categories]                    | Yes :white_check_mark: |
| venues/explore           | Explore Recommended and Popular Venues [(docs)][venues/explore] | No :x:                 |
| venues/search            | Search Venues [(docs)][venues/search]                           | Yes :white_check_mark: |
| venues/suggestcompletion | Suggest Completion Venues [(docs)][venues/suggestcompletion]    | No :x:                 |
| venues/trending          | Trending Venues [(docs)][venues/trending]                       | No :x:                 |

[venues/categories]: https://developer.foursquare.com/docs/venues/categories
[venues/explore]: https://developer.foursquare.com/docs/venues/explore
[venues/search]: https://developer.foursquare.com/docs/venues/search
[venues/suggestcompletion]: https://developer.foursquare.com/docs/venues/suggestcompletion
[venues/trending]: https://developer.foursquare.com/docs/venues/trending

### Venue-specific Endpoints

| Endpoint                    | Description                                               | Supported?             |
| --------------------------- | --------------------------------------------------------- | ---------------------- |
| venues/`<venue>`            | Venue Details [(docs)][venues/venue]                      | No :x:                 |
| venues/`<venue>`/events     | Venue Events [(docs)][venues/venue/events]                | No :x:                 |
| venues/`<venue>`/hours      | Venue Hours [(docs)][venues/venue/hours]                  | No :x:                 |
| venues/`<venue>`/likes      | Users who have liked a venue [(docs)][venues/venue/likes] | No :x:                 |
| venues/`<venue>`/links      | Links For a Venue [(docs)][venues/venue/links]            | No :x:                 |
| venues/`<venue>`/listed     | Lists [(docs)][venues/venue/listed]                       | No :x:                 |
| venues/`<venue>`/menu       | Venue Menu [(docs)][venues/venue/menu]                    | No :x:                 |
| venues/`<venue>`/nextvenues | Next Venues [(docs)][venues/venue/nextvenues]             | No :x:                 |
| venues/`<venue>`/photos     | Photos from a Venue [(docs)][venues/venue/photos]         | No :x:                 |
| venues/`<venue>`/tips       | Tips from a Venue [(docs)][venues/venue/tips]             | No :x:                 |

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
