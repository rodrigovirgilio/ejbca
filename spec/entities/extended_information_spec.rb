RSpec.describe ExtendedInformation do
  let(:object) { build :extended_information }

  it '#to_xml' do
    result = <<-XML
      <extendedInformation>
        <name>foo</name>
        <value>bar</value>
      </extendedInformation>
    XML

    expect(object.to_xml).to eq_xml result
  end
end
