# Phonewords

Phonewords is (at this point) a toy app for translating phone numbers to words, and words to phone numbers.

## Getting Started

Clone the repository  
  `git clone git://github.com/landongrindheim/phonewords ~/phonewords`  

From `~/phonewords/` issue `bin/console`. This should start an interactive Ruby console session.  

Once you have a prompt, issue `Phonewords.start`. You'll be able to start translating. 🤞 You'll find a meaningful translation for your phone number!  

```Ruby
 ~/phonewords $ bin/console
 2.4.0 :001 > Phonewords.start
 what would you like to translate?
 > 7899536368
 The following words match your phone number:
  * puzzlement

 > pizzazz
 749-9299
```

## Usage

Currently, this project is a console app. You can run the console (from ~/phonewords) by issuing `bin/console`  

## Development

There's a lot of work to do still, but you can see where this is going. See the issues for more info.  

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests.  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/landongrindheim/phonewords.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

