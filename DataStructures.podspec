Pod::Spec.new do |s|
  s.name             = "DataStructures"
  s.version          = "0.1.3"
  s.summary          = "Basic Implementation of DataStructures."
  s.description      = <<-DESC
                       Contains Implementation of following type of DataStructures:

                       * Linked List
                       * Double Linked List
		       * Binary Tree
		       * Factory class to generate various nodes.
		       * Stack
		       * Queue
		       * Factory class to generate Data Structures
                       DESC
  s.homepage         = "https://github.com/harishkashyap/DataStructures"
  s.license          = 'MIT'
  s.author           = { "Harish Kashyap" => "harish.k.kashyap@gmail.com" }
  s.source           = { :git => "https://github.com/harishkashyap/DataStructures.git", :tag => "0.1.3" }
  s.social_media_url = 'https://twitter.com/hkashyap'

  # s.platform     = :ios, '7.0'
  # s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/DataStructures.h'
end
