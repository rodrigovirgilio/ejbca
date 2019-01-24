require 'bundler/setup'
require 'ejbca'
require 'factory_bot'
require 'support/eq_xml_spec'

support_dir = File.join(File.dirname(__FILE__), 'support', '**', '*.rb')
Dir[File.expand_path(support_dir)].each { |f| require f }

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end
