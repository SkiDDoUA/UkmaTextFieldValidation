Pod::Spec.new do |spec|
  spec.name         = "UkmaTextFieldValidation"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of UkmaTextFieldValidation."

  spec.homepage     = "https://github.com/SkiDDoUA/UkmaTextFieldValidation"

  spec.license      = "MIT"
  spec.author       = { "Anton" => "antonlena516@gmail.com" }

  spec.swift_version = "5.7"
  spec.platform = :ios, "13.0"

  spec.source       = { :git => "https://github.com/SkiDDoUA/UkmaTextFieldValidation.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/UkmaTextFieldValidation/*"

end
