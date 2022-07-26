#
#  Be sure to run `pod spec lint CheckVersionApp.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "CheckVersionApp"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  Informs about the new available in the AppStore
  Fethces the JSON from the AppStore, compares correctly the latest version with the local bundle.
  DESC

  spec.homepage     = "https://github.com/HoangTuEch/CheckVersionApp"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "DatND" => "datnd2@rikkeisoft.com" }

  spec.swift_versions = '4.2'
  spec.ios.deployment_target = "13.0"

  spec.source       = { :git => "https://github.com/HoangTuEch/CheckVersionApp.git", :tag => "#{spec.version}" }

  spec.source_files  = "CheckVersionApp/**/*.{h,m,swift}"


end
