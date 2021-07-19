# SoftButton

[![Platform](https://img.shields.io/cocoapods/p/SoftButton.svg?style=flat)](https://cocoapods.org/pods/SoftButton)
[![Version](https://img.shields.io/cocoapods/v/SoftButton.svg?style=flat)](https://cocoapods.org/pods/SoftButton)
[![Xcode](https://img.shields.io/badge/Framework-UIKit-blue.svg)](https://developer.apple.com/documentation/uikit/)
[![License](https://img.shields.io/cocoapods/l/SoftButton.svg?style=flat)](https://cocoapods.org/pods/SoftButton)


![](https://i.imgur.com/CqGblJd.gif)

## About
This pod allows you to add neumorphic design to your UIButton in Swift. It supports both dark and light mode, respond to taps, and also offers customization options for the button's corner radius and bevel. Usage details are outlined below and an example project is included in the repo.

## Requirements

- **iOS** 13.0+
- Swift 5.0+
- UIKit framework


## Installation

SoftButton is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SoftButton'
```


# Usage

`import SoftButton` at the top of your Swift file.

 ### 1. Storyboard Setup (If using storyboards)
1. Edit outlet to conform to SoftButton  
    `@IBOutlet weak var btn:`**`SoftButton!`**
2. Also ensure to provide SoftButton as the Custom Class in the storyboard file

**Otherwise:** `let btn = SoftButton()`

### 2. Setup the Button
Then, simply call in viewDidAppear():  
`btn.makeNeuromorphic(superView: self.view)`  

Passing the view is important since the background cannot be pure black/white for the effect to work. The pod will setup the view's background for you.

## Add Dark Mode Support
Add this block to dynamically change the button style based on light/dark mode. The pod will handle the rest.
```swift
override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)
    btn.makeNeuromorphic(superView: self.view) // Add this line
}
```

## Customization
You can also optionally specify the button's corner radius, setup the view individually, and provide the bevel amount

```swift
btn.bevel = 5 // Changes button's 'pop-out' amount
btn.makeNeuromorphic(cornerRadius: 25)

// Option 1:
btn.makeNeuromorphic(superView: self.view)
// Option 2:
btn.makeNeuromorphic()
self.view.backgroundColor = btnText.backgroundColor // Set view background manually
    
```
## Important Notes
1. `makeNeuromorphic()` has to be called from `viewDidAppear()` if any constraints are being used since `viewDidLoad()` does not have the button's bounds available to it. If the button has a fixed width and height however, then you may setup the button in `viewDidLoad()`.
2. Kindly ignore the misspelling of 'Neumorphic' in the function name. Thank you :)

## Example

To run the example project, clone the repo and test on Xcode, or view the [ViewController.swift](https://github.com/PallavAg/SoftButton/blob/main/Example/SoftButton/ViewController.swift) file.

## Author

Pallav Agarwal, agpallav@gmail.com

## License

SoftButton is available under the MIT license. See the [LICENSE](https://github.com/PallavAg/SoftButton/blob/main/LICENSE) file for more info.
