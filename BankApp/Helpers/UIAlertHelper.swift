import UIKit

class UIAlertHelper {
    static func alert(title: String, message: String) -> UIAlertController {
            let alert: UIAlertController
            alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(alertAction)
            
            return alert
        }
        
        static func actionSheet(title: String, message: String) -> UIAlertController {
            let alert: UIAlertController
            alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            let confirmAction = UIAlertAction(title: "Confirm", style: .destructive, handler: nil)
            
            alert.addAction(cancelAction)
            alert.addAction(confirmAction)
            
            return alert
        }
}
