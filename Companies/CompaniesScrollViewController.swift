//Design of Info Programming Showcase

import UIKit

class CompaniesSrollViewController: UIViewController {

   
    @IBOutlet var companyNameLabel: UILabel!
    
    @IBOutlet var companyLogo: UIImageView!
    
    
    
    
    
    @IBOutlet var companyAddressButton: UIButton!
    
    var addressButtonChecked = false;
    let checkedImg = UIImage(named: "checked")
    let uncheckedImg = UIImage(named: "unchecked")
    
    
    
    
    @IBOutlet var companyPhoneButton: UIButton!
    
    @IBOutlet var companyEmailButton: UIButton!
    
    @IBOutlet var companyWebsiteButton: UIButton!
    
    @IBOutlet var companyJobsButton: UIButton!
    
    @IBOutlet var companyAboutButton: UIButton!
    
    @IBOutlet var companyWikiButton: UIButton!
    
    @IBOutlet var companyNameNavItem: UINavigationItem!
    
    
    
    var dataPassed = [String]()
    
    var companyURLToPass: URL?
    
    var companyAddress: String?
    
 
    @IBAction func goToCompanyWebsite(_ sender: UIButton) {
        companyURLToPass = URL(string :dataPassed[1]) ///dataPassed[1]...7 before
        performSegue(withIdentifier: "CompanySites", sender: self)
    }
   
    
    @IBAction func goToCompanyJobsWebsite(_ sender: UIButton) {
        companyURLToPass = URL(string: dataPassed[2]) ///dataPassed[2].....8 before
        performSegue(withIdentifier: "CompanySites", sender: self)
       

    }


    @IBAction func goToCompanyAboutWebsite(_ sender: UIButton) {
        companyURLToPass = URL(string: dataPassed[3])  //dataPassed[3]...9 before
        performSegue(withIdentifier: "CompanySites", sender: self)

    }
    
    ///wanted to implement but didn't get to it
    
//    @IBAction func goToCompanyWikiWebsite(_ sender: UIButton) {
//        companyURLToPass = URL(string: dataPassed[10])
//        performSegue(withIdentifier: "CompanySites", sender: self)
//
//    }
    
//    @IBAction func goToMap(_ sender: UIButton) {
//        
//        if (!addressButtonChecked){
//            print("not checked")
//
//            companyAddressButton.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .normal)
//            addressButtonChecked = true;
//
//        }
//        else {
//            print("checked already")
//            companyAddressButton.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
//            addressButtonChecked = false;
//        }
//        
//    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        companyNameNavItem.title = dataPassed[4]  ///dataPassed[4]..11 before
        companyNameLabel.text = dataPassed[4]  ////dataPassed[4]..same

        
        companyLogo.image = UIImage(named: dataPassed[0])
        
        //companyWebsiteButton.setTitle(dataPassed[1], for: .normal) //dataPassed[1]...7
        companyWebsiteButton.setTitle("Home", for: .normal) //wont display URL
        //companyJobsButton.setTitle(dataPassed[2], for: .normal) //dataPassed[2]....8
        companyJobsButton.setTitle("Careers", for: .normal) 
        //companyAboutButton.setTitle(dataPassed[3], for: .normal) ///dataPassed[3]....9
        companyAboutButton.setTitle("About Us", for: .normal) //

        
        

        
        
        companyWebsiteButton.backgroundColor = UIColor.clear
        
        companyWebsiteButton.layer.cornerRadius = 15
        
        companyWebsiteButton.layer.borderWidth = 1
        
        companyWebsiteButton.layer.borderColor = UIColor.blue.cgColor
        
        
        
        companyJobsButton.backgroundColor = UIColor.clear
        
        companyJobsButton.layer.cornerRadius = 15
        
        companyJobsButton.layer.borderWidth = 1
        
        companyJobsButton.layer.borderColor = UIColor.blue.cgColor
        
        
        
        companyAboutButton.backgroundColor = UIColor.clear
        
        companyAboutButton.layer.cornerRadius = 15
        
        companyAboutButton.layer.borderWidth = 1
        
        companyAboutButton.layer.borderColor = UIColor.blue.cgColor
        
        
        companyWikiButton.backgroundColor = UIColor.clear
        
        companyWikiButton.layer.cornerRadius = 15
        
        companyWikiButton.layer.borderWidth = 1
        
        companyWikiButton.layer.borderColor = UIColor.blue.cgColor
        
        
        
        
        
    }
    
    
    ///gives info to web view
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "CompanySites" {
            let companyWebViewController = segue.destination as! CompaniesWebViewController
            
            companyWebViewController.companyName.title = dataPassed[4] //dataPassed[4]
            companyWebViewController.companyURL = companyURLToPass
        }
        else
        {
            let companyMapViewController = segue.destination as! CompanyMapViewController
            companyMapViewController.companyAddressPassed = companyAddress
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
