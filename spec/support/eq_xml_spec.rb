require 'rspec/expectations'

RSpec::Matchers.define :eq_xml do |expected|
  expected = Nokogiri::XML(expected, &:noblanks).canonicalize

  match do |actual|
    actual = Nokogiri::XML(actual.to_s, &:noblanks).canonicalize
    expected == actual
  end

  failure_message do |actual|
    actual = Nokogiri::XML(actual.to_s, &:noblanks).canonicalize
    "expected that #{actual} would be #{expected}"
  end
end
