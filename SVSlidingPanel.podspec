
Pod::Spec.new do |spec|

  spec.name         = "SVSlidingPanel"
  spec.version      = "1.1.1"
  spec.summary      = "SVSlidingPanel is a UIViewController container designed for center panel with revealable side panels."

  spec.description  = <<-DESC
			SVSlidingPanel is a UIViewController container designed for presenting a center panel with revealable side panels - one to the left and one to the right. It supports iOS 8 or later and using Swift 3.0.
                   DESC

  spec.homepage     = "https://github.com/sachin21v/SlidingPanel"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author    = "Sachin Verma"
  # spec.social_media_url   = "https://twitter.com/sachin_happy"

  spec.platform     = :ios, "8.0"

  spec.source       = { :git => "https://github.com/sachin21v/SlidingPanel.git", :tag => "1.1.1" }

  spec.source_files  = "Sources/"
  # spec.exclude_files = "Classes/Exclude"

  spec.requires_arc = true
  spec.swift_version = "5.0"
end
