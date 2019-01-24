RSpec.describe User do
  let(:user) { build :user }

  it '#to_xml' do
    result = %(
      <user>
        <caName>ManagementCA</caName>
        <certificateProfileName>ENDUSER</certificateProfileName>
        <clearPwd>false</clearPwd>
        <endEntityProfileName>EMPTY</endEntityProfileName>
        <password>123456</password>
        <subjectDN>CN=Foo Bar,O=Acme,C=BR</subjectDN>
        <username>foobar</username>
      </user>
    )

    expect(user.to_xml).to eq_xml result
  end
end
