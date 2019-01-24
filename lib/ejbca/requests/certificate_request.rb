class CertificateRequest < Base
  xml_accessor :user, from: 'arg0', as: User
  xml_accessor :request_data, from: 'arg1'
  xml_accessor :request_type, from: 'arg2', as: Integer
  xml_accessor :hard_token_sn, from: 'arg3'
  xml_accessor :response_type, from: 'arg4'

  def initialize
    @hard_token_sn = 'null'
  end
end
