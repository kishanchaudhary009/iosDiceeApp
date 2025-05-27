import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceViewImageOne: UIImageView!
    @IBOutlet weak var diceViewIMageTwo: UIImageView!
    var currone = 0
    var currtwo = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceViewImageOne.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceViewIMageTwo.image = UIImage(imageLiteralResourceName: "DiceSix")
        
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       let dices = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
        currone = Int.random(in: 0...5)
        currtwo = Int.random(in: 0...5)
        diceViewImageOne.image = UIImage(imageLiteralResourceName: dices[currone])
        diceViewIMageTwo.image = UIImage(imageLiteralResourceName: dices.randomElement()!)
    }
}
