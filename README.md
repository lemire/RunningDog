# RunningDog

<a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/Swift4-compatible-green.svg?style=flat" alt="Swift 3 compatible" /></a>
<a href="https://github.com/apple/swift-package-manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg"/></a>

Fast and accurate running statistics in Swift. This library can help
you keep track of the the standard deviation, variance and mean of
a set of a set of values.

Basic usage:

```swift
import RunningDog

var rd = RunningDog()
rd.add(1)
rd.add(2)
rd.add(3)

print(rd.mean)
print(rd.variance)
print(rd.maximum)
print(rd.minimum)
print(rd.standardDeviation)
```


## Complete example for library users

Create a directory where you will create your application:

```bash
mkdir fun
cd fun
swift package init --type executable
```

Then edit ``Package.swift`` so that it reads:


```swift
import PackageDescription

let package = Package(
    name: "fun",
    dependencies: [
   .Package(url: "https://github.com/lemire/RunningDog.git",  majorVersion: 0)
    ]
)
```

Edit ``Sources/main.swift`` so that it looks something like this :

```swift
import RunningDog

var rd = RunningDog()
rd.add(1)
rd.add(2)
rd.add(3)

print(rd.mean)
print(rd.variance)
print(rd.maximum)
print(rd.minimum)
print(rd.standardDeviation)
```


You can run your example as follows:

```bash
swift build  -Xcc -march=native  --configuration
.build/release/fun
```

## For Xcode users (Mac Only)

```bash
$ swift package generate-xcodeproj
generated: ./RunningDog.xcodeproj
$ open ./RunningDog.xcodeproj
```

## Licensing

Apache 2.0
