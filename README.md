
<h1 align="center">HoverAwareView</h1>

<p align="center">
    <img src="https://img.shields.io/badge/macOS-10.15+-brightgreen.svg" />
    <img src="https://img.shields.io/badge/Swift-5.2-orange.svg" />
    <img src="https://img.shields.io/badge/License-MIT-green.svg" />
</p>

<p align="center">
This repository introduces SwiftUI's onHover modifier substitute View which is a wrapper of NSView.
</p>

## Why do you need this?

- As of **Swift 5.2** and **Xcode 11.6 / 12.0 beta 4**, in certain circumstances, just attatching a `onHover` modifier **triggers memory leak** — preventing `ObservedObject` in a view to be deallocated. It seems like a bug.
- The issue is disscussed here:
    - https://forums.swift.org/t/leaks-using-onhover-modifier/31671

## Example

```swift
import SwiftUI
import HoverAwareView

struct ContentView: View {

    @State private var opacity: Double = 1.0

    var body: some View {
        ZStack {
            HoverAwareView { (hovering: Bool) in
                withAnimation(Animation.spring()) {
                    self.opacity = hovering ? 0.5 : 1.0
                }
            }

            Color.black.opacity(opacity)
        }
    }
}
```

## License

```
MIT License

Copyright © 2020 github.com/aerobounce.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
