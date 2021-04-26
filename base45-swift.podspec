Pod::Spec.new do |spec|

  spec.name         = "base45-swift"
  spec.version      = "0.0.2"
  spec.summary      = "Simple base45 encoder/decoder."
  
  spec.description  = <<-DESC
  Qr and Aztec code have a specific, highly efficient, method for storing alphanumeric characters (MODE 2/0010). In particular compared to UTF-8 (where the first 32 characters are essentially unused; and successive non-latin characters loose an additional 128 values as the topbit needs to be set).

Details of this 11 bits per two characters can be found at

https://www.thonky.com/qr-code-tutorial/alphanumeric-mode-encoding
https://raw.githubusercontent.com/yansikeim/QR-Code/master/ISO%20IEC%2018004%202015%20Standard.pdf - section 7.44 on page 26
For this reason - the industry generally encodes these in base45. A document for this defacto standard is in flight:

```https://datatracker.ietf.org/doc/draft-faltstrom-base45/```
                   DESC

  spec.homepage     = "https://github.com/ehn-digital-green-development/base45-swift"
  spec.license      = "Apache License"
  spec.authors      = { "Hannes Van den Berghe" => "hannes.vandenberghe@icapps.com", "Dirk-Willem van Gulik" => "dirkx@webweaving.org" }
  spec.ios.deployment_target = "12.0"
  spec.swift_version = '4.0'
  spec.source       = { :git => "https://github.com/ehn-digital-green-development/base45-swift.git", :tag => "#{spec.version}" }
  spec.source_files  = "Base45-Swift/*.{swift}"

end
