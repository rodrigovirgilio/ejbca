FactoryBot.define do
  factory :certificate_request do
    user { build :user }
    request_data { OpenSSL::X509::Request.new.to_pem }
    request_type { 0 }
    hard_token_sn { 'null' }
    response_type { CertificateHelper::RESPONSE_TYPE_CERTIFICATE }
  end
end
