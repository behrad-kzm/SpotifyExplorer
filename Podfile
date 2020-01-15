# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Domain' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
     pod 'RxSwift'
  # Pods for Domain

end

target 'NetworkPlatform' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
    pod 'RxSwift'
    pod 'RxCocoa'
    pod 'Alamofire'
    pod 'RxAlamofire'
  # Pods for NetworkPlatform

  target 'NetworkPlatformTests' do
    pod 'RxNimble', subspecs: ['RxBlocking', 'RxTest']
  end

end

target 'SpotifyExplorer' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
      pod 'RxCocoa'
      pod 'RxSwift'
      #UIPods
      pod 'IQKeyboardManagerSwift'
      pod 'RxDataSources'
      pod 'Hero'
      pod 'Stellar', :git => 'https://github.com/AugustRush/Stellar.git'
      pod 'BEKCurveTabbar', :git => 'https://github.com/behrad-kzm/BEKCurveTabbar.git'
      pod 'lottie-ios'
  # Pods for SpotifyExplorer

  target 'SpotifyExplorerTests' do
    inherit! :search_paths
    pod 'RxNimble', subspecs: ['RxBlocking', 'RxTest']
  end

  target 'SpotifyExplorerUITests' do
    # Pods for testing
  end

end
