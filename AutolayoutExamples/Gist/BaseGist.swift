let box = UIView()
box.backgroundColor = UIColor.kBlue

let header = UIImageView()
header.image = UIImage(named: "bogota")

let logo = UIImageView()
logo.image = UIImage(named: "grability")
logo.contentMode = .scaleAspectFit

let button = UIButton()
button.setTitle("Go to list", for: .normal)
button.backgroundColor = UIColor.kGreen
button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)

view.addSubview(box)
view.addSubview(header)
view.addSubview(logo)
view.addSubview(button)
