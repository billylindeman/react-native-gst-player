require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-gst-player"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-gst-player
                   DESC
  s.homepage     = "https://github.com/quartzco/react-native-gst-player"
  s.license      = "MIT"
  s.authors      = { "Billy Lindeman" => "billy@quartz.co" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/quartzco/react-native-gst-player.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"$(USER_LIBRARY_DIR)/Developer/GStreamer/iPhone.sdk/GStreamer.framework/Headers"' }
  # s.vendored_frameworks = '~/Library/Developer/GStreamer/iPhone.sdk/GStreamer.framework'

  s.dependency "React"

  # ...
  # s.dependency "..."
end

