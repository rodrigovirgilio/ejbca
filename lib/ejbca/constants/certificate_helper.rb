module CertificateHelper
  REQUEST_TYPE_CRMF = 1
  REQUEST_TYPE_PKCS10 = 0
  REQUEST_TYPE_PUBLICKEY = 3
  REQUEST_TYPE_SPKAC = 2

  RESPONSE_TYPE_CERTIFICATE = 'CERTIFICATE'.freeze
  RESPONSE_TYPE_PKCS7 = 'PKCS7'.freeze
  RESPONSE_TYPE_PKCS7WITHCHAIN = 'PKCS7WITHCHAIN'.freeze

  def certificate(certificate_data)
    data = ['-----BEGIN CERTIFICATE-----']
    data << Base64.decode64(certificate_data)
    data << '-----END CERTIFICATE-----'
    OpenSSL::X509::Certificate.new(data.join("\n"))
  end
end
