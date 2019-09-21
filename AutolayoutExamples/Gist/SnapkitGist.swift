box.snp.makeConstraints { make in
    make.top.equalTo(topLayoutGuide.snp.bottom).offset(10)
    make.right.equalTo(view).offset(-10)
    make.bottom.equalTo(view).offset(-25)
    make.left.equalTo(view).offset(10)
}

header.snp.makeConstraints { make in
    make.height.equalTo(box.snp.height).dividedBy(4)
    make.top.equalTo(box.snp.top)
    make.right.equalTo(box.snp.right)
    make.left.equalTo(box.snp.left)
}

logo.snp.makeConstraints { make in
    make.height.equalTo(header.snp.height).dividedBy(2)
    make.center.equalTo(header.snp.center)
}

button.snp.makeConstraints { make in
    make.height.equalTo(50)
    make.right.equalTo(box.snp.right)
    make.bottom.equalTo(box.snp.bottom)
    make.left.equalTo(box.snp.left)
}
