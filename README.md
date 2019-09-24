# Swift Auto-layout DSL examples

This project has been written using 4 of the most known DSL to Auto-layout in code to see the differences between them. The libraries are:
* [SnapKit/SnapKit](https://github.com/SnapKit/SnapKit) (5.0.0)
* [robb/Cartography](https://github.com/robb/Cartography) (3.0)
* [PureLayout/PureLayout](https://github.com/PureLayout/PureLayout) (3.1.4)
* [Mortar/Core_NoCreatable](https://github.com/jmfieldman/Mortar) (1.6)

The project contains 4 different ViewControllers with the same design using the each of the libraries. The UIKit components can be found [here](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/BaseGist.swift). And the layouts for each application are this:
* Example using [SnapKit](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/SnapkitGist.swift)
* Example using [Cartography](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/CartographyGist.swift)
* Example using [PureLayout](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/PurelayoutGist.swift)
* Example using [Mortar](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/MortarGist.swift)

## Analysis

PureLayout I would totally discard because is very verbose and the advantages of writing constraints instead of setting them in `xib` is wasted learning all the extra variables. My very favorite is [Mortar](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/MortarGist.swift), but considering that it has a very limited community, I would not recommend using it in a project that requires strong support. Between [SnapKit](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/SnapkitGist.swift) and [Cartography](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/Gist/CartographyGist.swift), I choose SnapKit, because even that Cartography has better syntax using custom operators like `==` and allowing to subtract or append points to constrains, instead of calling verbose code like `.offset()`, when it comes to using the most updated tools like `safeAreaLayoutGuide` it requires adding more code to support previous versions of iOS.

My recommendation is to use `Snapkit` but using the following bonus extension.

### Bonus

To develop this bonus I took the best from Cartography and Mortar to extend the functionality of SnapKit and make it more simple to write. The previous example would be written like this:

```
header.snp.makeConstraints {
  $0.height   |=| (box.s_height * 0.25)
  $0.top      |=| box.s_top
  $0.right    |=| (box.s_right - 10)
  $0.left     |=| (box.s_left + 10)
}
```

Instead of calling `maker.top.equalTo(ohterView.snp.top)`, a much simpler operator `|=|` does the same.
In the same way, offset is replaced by `+` and `-`. And `multiplyBy()` or `divideBy()` are replaced by `*`.

The `anyView.snp.top` is replaced by `anyView.s_top` to extend the functionality and allow it to be operated using `(+,-,*)`, but if you still want the original syntax, it is still supported.

To extend this syntax, refer to [Snapkit+Layout.swift](https://github.com/cjortegon/swift-autolayout-dsl-examples/blob/master/AutolayoutExamples/GLayout/Snapkit%2BLayout.swift).

## Preview of the built layout

![](https://github.com/cjortegon/swift-autolayout-dsl-examples/raw/master/screenshots.png)
