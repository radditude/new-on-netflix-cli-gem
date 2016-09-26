# Whats On Netflix

What's On Netflix is a small web scraper with a CLI interface that tells you what's coming soon and leaving soon on Netflix, using data from Whats-On-Netflix.com and IMDB. Hat tip to [https://github.com/o-sam-o/yayimdbs](yayimdbs) for helping me work out the finer points of scraping IMDB info.

## Installation

Run the following command in your terminal:

    $ gem install whats-on-netflix

## Usage

Run `whats-on-netflix` to get started. Then run `coming-soon` or `leaving-soon` to see a list of what's being added or removed from Netflix this month. Enter the number of a particular movie or show to get information on its genre, cast, and plot.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/new_on_netflix. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

