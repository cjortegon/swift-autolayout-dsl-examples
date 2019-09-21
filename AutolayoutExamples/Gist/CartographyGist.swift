constrain(view, box) { view, box in
    box.top == view.safeAreaLayoutGuide.top + 10
    box.right == view.right - 10
    box.bottom == view.bottom - 25
    box.left == view.left + 10
}

constrain(box, header) { box, header in
    header.height == box.height / 4
    header.top == box.top
    header.right == box.right
    header.left == box.left
}

constrain(header, logo) { header, logo in
    logo.height == header.height / 2
    logo.center == header.center
}

constrain(box, button) { box, button in
    button.height == 50
    button.right == box.right
    button.bottom == box.bottom
    button.left == box.left
}
