# GoogleSheetsEngine
Extend your use of sheets with a dashboard. Add to any Rails app like a regular gem.

Eventual features:
* Search across all sheets.
* Create filtered views based on conditional logic.
* Create work stations based on views. These will allow a user to see one row at a time from a view and work on that row.
* Optionally change data in work stations, and feed it back to the view.
* Internationalization: Will support Spanish and English out of the box. Support for other languages to be quickly added.
* Accessibility: Will be a first-class feature. We want a score of 100 using Google's [accessibility developer tools](https://chrome.google.com/webstore/detail/accessibility-developer-t/fpkknkljclfencbdbgkenhalefipecmb) audit, and well-constructed UI.
* Responsive design.

Created after volunteering with Harvey/Irma recovery.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'google_sheets_engine'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install google_sheets_engine
```

## Contributing

1. Clone this repository

1. Set up postgres/database.yml

1. `$ bundle install`

1. `$ rake db:migrate`

1. `$ rails s`

1. Start working on issues. Prioritize issues in order (work on issue 1 before issue 2). 'Claim' an order by mentioning that you're working on it by leaving a comment on the issue.

1. Considerations: Strive for well-tested code. Pay close attention to i18n and a11y requirements.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
