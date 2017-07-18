# Activerecord::Relation::Exec2hash

`ActiveRecord::Relation.exec_to_hash` is getting the query result as a hash, does not instantiate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-relation-exec2hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-relation-exec2hash

## Usage

```ruby
AwesomeModel.all.exec_to_hash
#=> [{id: 1, key: 'value1'}, {id: 2, key: 'value2'}, {id: 3, key: 'value3'}, ...]

AwesomeModel.where(id: [1,2]).exec_to_hash
#=> [{id: 1, key: 'value1'}, {id: 2, key: 'value2'}]

# Error!
# Becouse `exec to hash` method implemented in ActiveRecord::Relation.
# As a similar case of `where.exec_to_hash`, and more.
AwesomeModel.find_by(id: 2).exec_to_hash
NoMethodError: undefined method `exec_to_hash' for #<AwesomeModel:0x007fa0c321ae10>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/activerecord-relation-exec2hash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Activerecord::Relation::Exec2hash project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/activerecord-relation-exec2hash/blob/master/CODE_OF_CONDUCT.md).
