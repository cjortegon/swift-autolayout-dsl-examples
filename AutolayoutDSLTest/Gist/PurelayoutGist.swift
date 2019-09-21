box.autoPin(toTopLayoutGuideOf: self, withInset: 10)
box.autoPinEdge(ALEdge.right, to: ALEdge.right, of: view, withOffset: -10)
box.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: view, withOffset: -10)
box.autoPinEdge(ALEdge.left, to: ALEdge.left, of: view, withOffset: 10)

header.autoMatch(ALDimension.height, to: ALDimension.height, of: box, withMultiplier: 0.25)
header.autoPinEdge(ALEdge.top, to: ALEdge.top, of: box)
header.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
header.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)

logo.autoPinEdge(ALEdge.top, to: ALEdge.top, of: header, withOffset: 40)
logo.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: header, withOffset: -40)
logo.autoAlignAxis(ALAxis.horizontal, toSameAxisOf: header)
logo.autoAlignAxis(ALAxis.vertical, toSameAxisOf: header)

button.autoSetDimension(ALDimension.height, toSize: 50)
button.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
button.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: box)
button.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)
