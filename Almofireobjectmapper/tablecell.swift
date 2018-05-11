
import UIKit

class tablecell: UITableViewCell {
    @IBOutlet weak var imageMy: UIImageView!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblheight: UILabel!
    @IBOutlet weak var lblcountry: UILabel!
    @IBOutlet weak var lblspouse: UILabel!
    @IBOutlet weak var lblchildren: UILabel!
    @IBOutlet weak var lblDOB: UILabel!
    @IBOutlet weak var lblDescrption: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
