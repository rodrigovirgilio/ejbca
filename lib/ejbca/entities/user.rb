class User < Base
  xml_accessor :ca_name
  xml_accessor :card_number
  xml_accessor :certificate_profile_name
  xml_accessor :certificate_serial_number
  xml_accessor :clear_pwd?, from: 'clearPwd'
  xml_accessor :email
  xml_accessor :end_entity_profile_name
  xml_accessor :end_time
  xml_accessor :hard_token_issuer_name
  xml_accessor :key_recoverable
  xml_accessor :password
  xml_accessor :send_notification
  xml_accessor :start_time
  xml_accessor :status, as: Integer
  xml_accessor :subject_alt_name
  xml_accessor :subject_dn, from: 'subjectDN'
  xml_accessor :token_type
  xml_accessor :username
  xml_accessor :extendedInformation, as: [ExtendedInformation]
end
