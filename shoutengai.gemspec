Gem::Specification.new do |s|
  s.name                     = 'shoutengai'
  s.version                  = '0.0.1'
  s.required_ruby_version    = '>=2.2.6'
  s.date                     = Time.now.strftime('%Y-%m-%d')
  s.summary                  = 'ruby e-commercial business model gem'
  s.description              = 'ruby e-commercial business model gem'
  s.authors                  = ['Tallty']
  s.email                    = 'dsh0416@gmail.com'
  s.require_paths            = ['lib']
  s.files                    = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|.resources)/}) } \
    - %w(README.md CONTRIBUTOR_COVENANT_CODE_OF_CONDUCT.md Gemfile Rakefile hanabi.gemspec .gitignore .rspec .codeclimate.yml .rubocop.yml .travis.yml logo.png Rakefile Gemfile)
  s.homepage                 = 'https://github.com/tallty/shoutengai'
  s.license                  = 'MIT'
end
