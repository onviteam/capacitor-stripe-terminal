
  Pod::Spec.new do |s|
    s.name = 'OnvitechCapacitorStripeTerminal'
    s.version = '2.1.1'
    s.summary = 'Capacitor plugin for Stripe Terminal (credit card readers).'
    s.license = 'MIT'
    s.homepage = 'https://github.com/onviteam/capacitor-stripe-terminal'
    s.author = 'Joe Smalley <joe@onvi.com>'
    s.source = { :git => 'https://github.com/onviteam/capacitor-stripe-terminal', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '12.0'
    s.dependency 'Capacitor'
    s.dependency 'StripeTerminal', '2.11.0'
  end