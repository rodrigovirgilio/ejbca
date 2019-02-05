class RevokeCert < Base
  xml_accessor :issuer_dn, from: 'arg0'
  xml_accessor :certificate_sn, from: 'arg1'
  xml_accessor :reason, from: 'arg2', as: Integer
end
