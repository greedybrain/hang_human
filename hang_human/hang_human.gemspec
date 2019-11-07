lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "./lib/hang_human/version"

Gem::Specification.new do |spec|
  spec.name          = "hang_human"
  spec.version       = HangHuman::VERSION
  spec.date          = "2019-11-07"
  spec.authors       = ["Naya Willis"]
  spec.email         = ["greedybrain18@gmail.com"]
  spec.summary       = "Play a game of Hangman AKA HangHuman."
  spec.description   = "Play a game of Hangman AKA HangHuman. Guess letters and save the human!"
  spec.files         = ["lib/hang_human.rb", "lib/hang_human/cli.rb", "lib/hang_human/user.rb", "lib/hang_human/version.rb", "config/env.rb"]
  spec.homepage      = "https://github.com/greedybrain/hang_human"
  spec.license       = "MIT"
  spec.executables << 'hang_human'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
