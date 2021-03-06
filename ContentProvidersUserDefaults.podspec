# coding: utf-8
Pod::Spec.new do |s|

# MARK: - Description

  s.name                  = 'ContentProvidersUserDefaults'
  s.summary               = 'A content provider used for accessing and modifying data in UserDefaults.'
  s.version               = '1.2.4'

  s.platform              = :ios
  s.ios.deployment_target = '9.0'

  s.cocoapods_version     = '>= 1.4.0.beta.2'
  s.static_framework      = true

  s.homepage              = 'https://github.com/roxiemobile/content-providers.ios'
  s.authors               = { 'Roxie Mobile Ltd.' => 'sales@roxiemobile.com', 'Alexander Bragin' => 'bragin-av@roxiemobile.com' }
  s.license               = 'BSD-4-Clause'

# MARK: - Configuration

  s.source = {
    git: 'https://github.com/roxiemobile/content-providers.ios.git',
    tag: s.version.to_s
  }

  base_dir = 'Modules/RoxieMobile.ContentProviders/Sources/UserDefaults/'
  s.source_files = base_dir + '{Sources,Dependencies}/**/*.swift'

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => "$(inherited) CONTENTPROVIDERS_FRAMEWORK_VERSION=@\\\"#{s.version}\\\"",
    'SWIFT_VERSION' => '4.0'
  }
end
