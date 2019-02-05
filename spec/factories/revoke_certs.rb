FactoryBot.define do
  factory :revoke_cert do
    issuer_dn { 'CN=ManagementCA,O=EJBCA Sample,C=SE' }
    certificate_sn { '7FEDD0CA5B31BF08' }
    reason { RevokeStatus::CERTIFICATEHOLD }
  end
end
