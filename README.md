# [Example Alexa Ruby/Sinatra app](https://github.com/drhuffman12/example_alexa_ruby_sinatra)

* Goal
    * Create an Amazon Alexa skill that gets triggered when user says: `Alexa log a movement activity on Health Hero for 30 minutes`.
    * Alexa should log the activity.

There are several setup steps involved. Click on the links below:

* [Local Development Server Setup](doc/1.LocalDevServerSetup.md)

* [Alexa Skill Setup](2.AlexaSkillSetup.md)

* [Alexa Skill Testing](3.AlexaSkillTesting.md)

* Sensor logger app
  * This would wait for a 'start' notification, then start gathering data, and eventually either speak near your Alexa-enabled device or post the sensor data to your server (which would in turn post the data to your Alexa Skill),

  * For this example, we will mock the sensor data and use a slightly different request (`ask example health hero log my movement`). (Maybe 'un-mock' later.)
  
  * However, you might want to create your own and/or use/mix existing apps. For example, see: 

    * [Android Barometer Logger: Acquiring Sensor Data](https://code.tutsplus.com/tutorials/android-barometer-logger-acquiring-sensor-data--mobile-10558)

    * [BigTalker](http://thingsthataresmart.wiki/index.php?title=BigTalker)

    * [LANAnnoucer](http://www.keybounce.com/LANdroidHowTo/SmartThingsInstallation.html)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/example_alexa_ruby_sinatra. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ExampleAlexaRubySinatra project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/example_alexa_ruby_sinatra/blob/master/CODE_OF_CONDUCT.md).
