#
# Be sure to run `pod lib lint SoftButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SoftButton'
  s.version          = '0.1.0'
  s.summary          = 'Simple Soft UI Neumorphic effect for UIButtons in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'SoftButton is a simple UIButton extension that gives buttons a beautiful Soft UI Neumorphic effect with support for both light mode and dark mode.'
                       DESC

  s.homepage         = 'https://github.com/PallavAg/SoftButton'
  s.screenshots      = 'https://i.imgur.com/CqGblJd.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pallav Agarwal' => 'agpallav@gmail.com' }
  s.source           = { :git => 'https://github.com/PallavAg/SoftButton.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pallavmac'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Source/**/*.swift'

  s.frameworks = 'UIKit'
  
end
