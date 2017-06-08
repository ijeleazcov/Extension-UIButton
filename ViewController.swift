import UIKit

let DefaultFont = "Avenir-Book"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testButton = UIButton()
        testButton.CustomButton(Title: "Login", TitleColor: .black, FontSize: 20, ButtonColor: .clear, Width: 315, Height: 56, CornerRadius: 28, BorderWidth: 1, BorderColor: .black)
        testButton.frame.origin.x = (self.view.frame.size.width-315)/2
        testButton.frame.origin.y = 200
        
        let anotherButton = UIButton()
        anotherButton.CustomButton(Title: "Password Reset", TitleColor: .purple, FontSize: 20, ButtonColor: .orange, Width: 315, Height: 56, CornerRadius: 28, BorderWidth: 1, BorderColor: .black)
        anotherButton.frame.origin.x = (self.view.frame.size.width-315)/2
        anotherButton.frame.origin.y = 300
        
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(testButton)
        self.view.addSubview(anotherButton)

    }
}
extension UIButton {
    
    func CustomButton(Title: String, TitleColor: UIColor, FontSize: CGFloat, ButtonColor: UIColor, Width: CGFloat, Height: CGFloat, CornerRadius: CGFloat, BorderWidth: CGFloat, BorderColor: UIColor) {
        
        
        self.setTitle(Title, for: .normal)
        self.setTitleColor(TitleColor, for: .normal)
        self.titleLabel?.font = UIFont(name: DefaultFont, size: FontSize)
        self.backgroundColor = ButtonColor
        self.frame.size = CGSize(width: Width, height: Height)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = CornerRadius
        self.layer.borderColor = BorderColor.cgColor
        self.layer.borderWidth = BorderWidth
    }
}
