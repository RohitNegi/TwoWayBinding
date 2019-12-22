
Pod::Spec.new do |spec|
  spec.name         = "TwoWayBinding"
  spec.version      = "1.0.0"
  spec.summary      = "A small framework for two way binding."
  spec.description  = <<-DESC
                    TwoWayBinding is a small and lightweight Swift framework that is useful for two way binding!
                   DESC
  spec.homepage     = "https://google.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Rohit Negi" => "rohitnegi017@gmail.com" }
  spec.platform     = :ios, "12.0"
  #spec.source       = { :http => 'file:' + __dir__ + "/" }
  spec.source       = { :git => "https://github.com/RohitNegi/TwoWayBinding.git", :tag => "#{spec.version}" }
  spec.source_files = "TwoWayBinding/Binding/*.{swift,m,h}"
  spec.swift_version = "5.0"
end
