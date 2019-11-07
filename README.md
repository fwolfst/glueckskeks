# Glueckskeks

Use 'corpus' files specified in `corpus/` to create random phrases (or other things) on the command line.

To experiment with that code, run `bin/console` for an interactive prompt.

Licensed under the GPLv3+ (see the `COPYING` file included) , Copyright 2017,2019 Felix Wolfsteller.

## Installation

To install the gem (to use its executable):

    $ gem install glueckskeks

To play with its functionality from your own (ruby) code add this line to your application's Gemfile:

```ruby
gem 'glueckskeks'
```

And then execute:

    $ bundle

## Usage

Put files in `corpus/` that list possible values (one per line), e.g.

```
$ cat corpus/base.corpus
<adj> <noun>
$ cat corpus/adj.corpus
black
white
$ cat corpus/noun.corpus
cat
dog
```

. That example should show that there are three files, `corpus/base.corpus`, `corpus/adj.corpus` and `corpus/noun.corpus` with the respective content.
The `base.corpus` file will be read first and stuff in dangerous brackets (`<stuff>`) will be replaced by **one of the values (== lines) of the respective file** (`corpus/stuff.corpus`, or in the example above, `adj.corpus` and `noun.corpus` respectively).  Note that thes "variable"-names do not include the file ending `.corpus`.

To produce a random selection, execute `glueckskeks` (depending on your setup this might be `bundle exec exe/glueckskeks`), e.g.

```
$ glueckskeks
black cat
-> bc
```

The last line ("bc" in that example) will be your phrase in passwordish-abbreviation.

Note that the starting node ('base') and the directory where the corpus files are located can be changed.  Run `glueckskeks --help` to get this or a similar output:

    $ glueckskeks --help
    Usage: exe/glueckskeks
    
    Generate phrase from files (default: in corpus/).
    
        -b, --base=BASE                  Start extension from BASE file (default: 'base')
        -c, --corpus=DIRECTORY           Read .corpus files from DIRECTORY (default: './corpus')
        -d, --debug                      Print debug messages to STDOUT
            --[no-]capitalize            Capitalize first letter of output (default: true)
        -h, --help                       Show this help and exit.
            --version                    Show version and exit.


## "Gluckskeks" wtf - where are the vowels

"Glueckskeks" is the German term for the wisdom-containing thing that you get served e.g. in chinese restaurants (in Germany).  Like, remember the internet-meme "That wasn't chicken"".

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fwolfst/glueckskeks. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

