FactoryBot.define do
  factory :user do
    ca_name { 'ManagementCA' }
    subject_dn { 'CN=Foo Bar,O=Acme,C=BR' }
    certificate_profile_name  { 'ENDUSER' }
    end_entity_profile_name { 'EMPTY' }
    password { '123456' }
    username { 'foobar' }
    clear_pwd { false }
  end
end
