
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "example_alexa_ruby_sinatra/version"

Gem::Specification.new do |spec|
  spec.name          = "example_alexa_ruby_sinatra"
  spec.version       = ExampleAlexaRubySinatra::VERSION
  spec.authors       = ["Daniel Huffman"]
  spec.email         = ["drhuffman12@engineer.com"]

  spec.summary       = %q{Example Alexa Ruby/Sinatra app.}
  spec.description   = %q{
    ```
    * Create an Amazon Alexa skill that gets triggered when user says: "Alexa log a movement activity on Health Hero for 30 minutes"
    * Alexa should log the activity.
    ```
    }
  spec.homepage      = "https://github.com/drhuffman12/example_alexa_ruby_sinatra"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"

  spec.add_development_dependency 'rerun'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
