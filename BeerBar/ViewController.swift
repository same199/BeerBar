//
//  ViewController.swift
//  BeerBar
//
//  Created by LizOk&Same on 21.10.25.
//

import UIKit

class ViewController: UIViewController {
    var totalPrice: Double = 0
    let firstBeer = Beer(beerName: "Heineken", beerPrice: 2.13)
    let secondBeer = Beer(beerName: "Alivariya", beerPrice: 2.50)
    let thirdBeer = Beer(beerName: "Obolon", beerPrice: 1.99)
    let manager = Managers(managerName: "Artsiom")
    
    //view
    var recieptView = UIView()
    var viewlWithBeerInformation = UIView()
    //welcome message
    private let welcomeMessage: UILabel = {
        let welcomeMessageLabel = UILabel()
        welcomeMessageLabel.textAlignment = .center
        welcomeMessageLabel.font = UIFont.systemFont(ofSize: 24)
        welcomeMessageLabel.textColor = .systemMint
        return welcomeMessageLabel}()
    
    private let openButton: UIButton = {
        let openWorkDayButton = UIButton()
        openWorkDayButton.setTitle("Открыть смену", for: .normal)
        openWorkDayButton.setTitleColor(.black, for: .normal)
        return openWorkDayButton
    }()
    
    private let closeButton: UIButton = {
        let closeWorkDayButton = UIButton()
        closeWorkDayButton.setTitle("Закрыть смену", for: .normal)
        closeWorkDayButton.setTitleColor(.black, for: .normal)
        return closeWorkDayButton
    }()
    private let sellButton: UIButton = {
        let sellBeerButton = UIButton()
        sellBeerButton.setTitle("Продать", for: .normal)
        sellBeerButton.setTitleColor(.black, for: .normal)
        return sellBeerButton
    }()
    
    private let firstBeerLabel: UILabel = {
        let firstBeerName = UILabel()
        firstBeerName.textAlignment = .center
        firstBeerName.font = UIFont.systemFont(ofSize: 24)
        firstBeerName.textColor = .systemMint
        return firstBeerName}()
    private let firstBeerCountLabel: UILabel = {
        let firstBeerCount = UILabel()
        firstBeerCount.textAlignment = .center
        firstBeerCount.font = UIFont.systemFont(ofSize: 24)
        firstBeerCount.textColor = .systemMint
        return firstBeerCount}()
    private let firstBeerMinusCountButton: UIButton = {
        let firstBeerMinusCount = UIButton()
        firstBeerMinusCount.setTitle("-", for: .normal)
        firstBeerMinusCount.setTitleColor(.black, for: .normal)
        return firstBeerMinusCount
    }()
    private let firstBeerPlusCountButton: UIButton = {
        let firstBeerPlusCount = UIButton()
        firstBeerPlusCount.setTitle("+", for: .normal)
        firstBeerPlusCount.setTitleColor(.black, for: .normal)
        return firstBeerPlusCount
    }()
    
    private let secondBeerLabel: UILabel = {
        let secondBeerName = UILabel()
        secondBeerName.textAlignment = .center
        secondBeerName.font = UIFont.systemFont(ofSize: 24)
        secondBeerName.textColor = .systemMint
        return secondBeerName}()
    private let secondBeerCountLabel: UILabel = {
        let secondBeerCount = UILabel()
        secondBeerCount.textAlignment = .center
        secondBeerCount.font = UIFont.systemFont(ofSize: 24)
        secondBeerCount.textColor = .systemMint
        return secondBeerCount}()
    private let secondBeerMinusCountButton: UIButton = {
        let secondBeerMinusCount = UIButton()
        secondBeerMinusCount.setTitle("-", for: .normal)
        secondBeerMinusCount.setTitleColor(.black, for: .normal)
        return secondBeerMinusCount
    }()
    private let secondBeerPlusCountButton: UIButton = {
        let secondBeerPlusCount = UIButton()
        secondBeerPlusCount.setTitle("+", for: .normal)
        secondBeerPlusCount.setTitleColor(.black, for: .normal)
        return secondBeerPlusCount
    }()
    private let thirdBeerLabel: UILabel = {
        let thirdBeerName = UILabel()
        thirdBeerName.textAlignment = .center
        thirdBeerName.font = UIFont.systemFont(ofSize: 24)
        thirdBeerName.textColor = .systemMint
        return thirdBeerName}()
    private let thirdBeerCountLabel: UILabel = {
        let thirdBeerCount = UILabel()
        thirdBeerCount.textAlignment = .center
        thirdBeerCount.font = UIFont.systemFont(ofSize: 24)
        thirdBeerCount.textColor = .systemMint
        return thirdBeerCount}()
    private let thirdBeerMinusCountButton: UIButton = {
        let thirdBeerMinusCount = UIButton()
        thirdBeerMinusCount.setTitle("-", for: .normal)
        thirdBeerMinusCount.setTitleColor(.black, for: .normal)
        return thirdBeerMinusCount
    }()
    private let thirdBeerPlusCountButton: UIButton = {
        let thirdBeerPlusCount = UIButton()
        thirdBeerPlusCount.setTitle("+", for: .normal)
        thirdBeerPlusCount.setTitleColor(.black, for: .normal)
        return thirdBeerPlusCount
    }()
    
    private let firstBeerRecieptLabel: UILabel = {
        let firstBeerReciept = UILabel()
        firstBeerReciept.textAlignment = .center
        firstBeerReciept.font = UIFont.systemFont(ofSize: 24)
        firstBeerReciept.textColor = .systemMint
        return firstBeerReciept}()
    private let firstBeerAllPriceLabel: UILabel = {
        let firstBeerAllPrice = UILabel()
        firstBeerAllPrice.textAlignment = .center
        firstBeerAllPrice.font = UIFont.systemFont(ofSize: 24)
        firstBeerAllPrice.textColor = .systemMint
        return firstBeerAllPrice}()
    private let secondBeerRecieptLabel: UILabel = {
        let secondBeerReciept = UILabel()
        secondBeerReciept.textAlignment = .center
        secondBeerReciept.font = UIFont.systemFont(ofSize: 24)
        secondBeerReciept.textColor = .systemMint
        return secondBeerReciept}()
    private let secondBeerAllPriceLabel: UILabel = {
        let secondBeerAllPrice = UILabel()
        secondBeerAllPrice.textAlignment = .center
        secondBeerAllPrice.font = UIFont.systemFont(ofSize: 24)
        secondBeerAllPrice.textColor = .systemMint
        return secondBeerAllPrice}()
    private let thirdBeerRecieptLabel: UILabel = {
        let thirdBeerReciept = UILabel()
        thirdBeerReciept.textAlignment = .center
        thirdBeerReciept.font = UIFont.systemFont(ofSize: 24)
        thirdBeerReciept.textColor = .systemMint
        return thirdBeerReciept}()
    private let thirdBeerAllPriceLabel: UILabel = {
        let thirdBeerAllPrice = UILabel()
        thirdBeerAllPrice.textAlignment = .center
        thirdBeerAllPrice.font = UIFont.systemFont(ofSize: 24)
        thirdBeerAllPrice.textColor = .systemMint
        return thirdBeerAllPrice}()
    
    private let infoMessageLabel: UILabel = {
        let infoMessage = UILabel()
        infoMessage.textAlignment = .center
        infoMessage.font = UIFont.systemFont(ofSize: 24)
        infoMessage.textColor = .systemMint
        return infoMessage}()
    
    private let allBeerPriceLabel: UILabel = {
        let allBeerPrice = UILabel()
        allBeerPrice.textAlignment = .center
        allBeerPrice.font = UIFont.systemFont(ofSize: 24)
        allBeerPrice.textColor = .systemMint
        return allBeerPrice}()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    func configurateUI(){
        view.backgroundColor = UIColor.white
        view.addSubview(welcomeMessage)
        welcomeMessage.frame = CGRect(x: (view.frame.width - WelcomeMessageSize.labelWidth.rawValue) / 2,
                                      y: 100,
                                      width: WelcomeMessageSize.labelWidth.rawValue,
                                      height: WelcomeMessageSize.labelHeight.rawValue)
        welcomeMessage.text = ""
        view.addSubview(viewlWithBeerInformation)
        viewlWithBeerInformation.frame = CGRect(x: (view.frame.width - BeerViewSize.beerViewWidth.rawValue) / 2,
                                                y: welcomeMessage.frame.origin.y + welcomeMessage.frame.height + Offset.allOffsets.rawValue,
                                                width: BeerViewSize.beerViewWidth.rawValue,
                                                height: BeerViewSize.beerViewHeight.rawValue)
        viewlWithBeerInformation.isHidden = true
        viewlWithBeerInformation.backgroundColor = UIColor.systemGray6
        viewlWithBeerInformation.addSubview(firstBeerLabel)
        firstBeerLabel.frame = CGRect(x: Offset.allOffsets.rawValue,
                                      y: Offset.allOffsets.rawValue,
                                      width: 150,
                                      height: 50)
        
        viewlWithBeerInformation.addSubview(firstBeerCountLabel)
        viewlWithBeerInformation.addSubview(firstBeerMinusCountButton)
        viewlWithBeerInformation.addSubview(firstBeerPlusCountButton)
        
        view.addSubview(recieptView)
        welcomeMessage.text = ""
        welcomeMessage.font = UIFont.boldSystemFont(ofSize: 28)
        viewlWithBeerInformation.layer.cornerRadius = 10
        
        firstBeerLabel.text = "\(firstBeer.beerName)"
        firstBeerCountLabel.font = UIFont.systemFont(ofSize: 22)
        firstBeerCountLabel.font = UIFont.boldSystemFont(ofSize: 22)
        firstBeerMinusCountButton.setTitle("—", for: .disabled)
        firstBeerPlusCountButton.setTitle("+", for: .disabled)
        firstBeerMinusCountButton.isEnabled = false
        firstBeerPlusCountButton.isEnabled = false
        
        secondBeerLabel.text = "\(secondBeer.beerName)"
        secondBeerCountLabel.font = UIFont.systemFont(ofSize: 22)
        secondBeerCountLabel.font = UIFont.boldSystemFont(ofSize: 22)
        secondBeerMinusCountButton.setTitle("-", for: .disabled)
        secondBeerPlusCountButton.setTitle("+", for: .disabled)
        secondBeerMinusCountButton.isEnabled = false
        secondBeerPlusCountButton.isEnabled = false
        
        thirdBeerLabel.text = "\(thirdBeer.beerName)"
        thirdBeerCountLabel.font = UIFont.systemFont(ofSize: 22)
        thirdBeerCountLabel.font = UIFont.boldSystemFont(ofSize: 22)
        thirdBeerMinusCountButton.setTitle("—", for: .disabled)
        thirdBeerPlusCountButton.setTitle("+", for: .disabled)
        thirdBeerMinusCountButton.isEnabled = false
        thirdBeerPlusCountButton.isEnabled = false
        
        recieptView.isHidden = true
        recieptView.layer.cornerRadius = 10
        firstBeerRecieptLabel.font = UIFont.systemFont(ofSize: 16)
        firstBeerRecieptLabel.font = UIFont.boldSystemFont(ofSize: 16)
        secondBeerRecieptLabel.font = UIFont.systemFont(ofSize: 16)
        secondBeerRecieptLabel.font = UIFont.boldSystemFont(ofSize: 16)
        thirdBeerRecieptLabel.font = UIFont.systemFont(ofSize: 16)
        thirdBeerRecieptLabel.font = UIFont.boldSystemFont(ofSize: 16)
        allBeerPriceLabel.font = UIFont.systemFont(ofSize: 24)
        allBeerPriceLabel.font = UIFont.boldSystemFont(ofSize: 24)
        allBeerPriceLabel.textColor = UIColor.systemGreen
        infoMessageLabel.isHidden = true
        
        view.addSubview(openButton)
        openButton.isEnabled = true
        openButton.frame = CGRect(x: (view.frame.width - ButtonSize.buttonWidth.rawValue) / 2,
                                  y: 650,
                                  width: ButtonSize.buttonWidth.rawValue,
                                  height: ButtonSize.buttonHeight.rawValue)
        let openDay = UIAction {_ in self.openWorkday()}
        openButton.addAction(openDay, for: .touchUpInside)
        
        view.addSubview(closeButton)
        closeButton.isEnabled = false
        closeButton.frame = CGRect(x: (view.frame.width - ButtonSize.buttonWidth.rawValue) / 2,
                                   y: openButton.frame.origin.y + ButtonSize.buttonHeight.rawValue + Offset.allOffsets.rawValue,
                                   width: ButtonSize.buttonWidth.rawValue,
                                   height: ButtonSize.buttonHeight.rawValue)
        let closeDay = UIAction {_ in self.closeWorkday()}
        closeButton.addAction(closeDay, for: .touchUpInside)
        view.addSubview(sellButton)
        sellButton.isEnabled = false
        sellButton.frame = CGRect(x: (view.frame.width - ButtonSize.buttonWidth.rawValue) / 2,
                                  y: closeButton.frame.origin.y + ButtonSize.buttonHeight.rawValue + Offset.allOffsets.rawValue,
                                  width: ButtonSize.buttonWidth.rawValue,
                                  height: ButtonSize.buttonHeight.rawValue)
        let sell = UIAction {_ in self.sellBeer()}
        sellButton.addAction(sell, for: .touchUpInside)
        
        
    }
    func openWorkday() {
        welcomeMessage.text = "Привет, \(manager.managerName)"
        welcomeMessage.textColor = UIColor.systemGreen
        openButton.isEnabled = false
        closeButton.isEnabled = true
        sellButton.isEnabled = true
        viewlWithBeerInformation.isHidden = false
        firstBeerPlusCountButton.isEnabled = true
        secondBeerPlusCountButton.isEnabled = true
        thirdBeerPlusCountButton.isEnabled = true
        recieptView.isHidden = true
        infoMessageLabel.isHidden = true
        firstBeerCountLabel.text = "\(firstBeer.minCountOfBottles)"
        secondBeerCountLabel.text = "\(secondBeer.minCountOfBottles)"
        thirdBeerCountLabel.text = "\(thirdBeer.minCountOfBottles)"
    }
    
    func closeWorkday() {
        welcomeMessage.text = "Всего хорошего!"
        welcomeMessage.textColor = UIColor.systemRed
        firstBeer.countOfBottles = 0
        firstBeerCountLabel.text = "\(firstBeer.countOfBottles)"
        secondBeer.countOfBottles = 0
        secondBeerCountLabel.text = "\(secondBeer.countOfBottles)"
        thirdBeer.countOfBottles = 0
        thirdBeerCountLabel.text = "\(thirdBeer.countOfBottles)"
        
        firstBeerAllPriceLabel.text = ""
        secondBeerAllPriceLabel.text = ""
        thirdBeerAllPriceLabel.text = ""
        allBeerPriceLabel.text = ""
        
        firstBeerRecieptLabel.text = ""
        secondBeerRecieptLabel.text = ""
        thirdBeerRecieptLabel.text = ""
        
        firstBeerMinusCountButton.isEnabled = false
        secondBeerMinusCountButton.isEnabled = false
        thirdBeerMinusCountButton.isEnabled = false
        firstBeerPlusCountButton.isEnabled = false
        secondBeerPlusCountButton.isEnabled = false
        thirdBeerPlusCountButton.isEnabled = false
        
        infoMessageLabel.isHidden = false
        infoMessageLabel.text = String(format:"""
                            Рабочий день закрыт.
                            
                            
                            Итоговая выручка за день: %.2f BYN
                            """, totalPrice)
        sellButton.isEnabled = false
        closeButton.isEnabled = false
        openButton.isEnabled = true
    }
    
    func sellBeer() {
        recieptView.isHidden = false
        firstBeerRecieptLabel.text = "\(firstBeer.beerName)"
        let firstPrice = firstBeer.sellBeer()
        firstBeerAllPriceLabel.text = String(format: "%.2f BYN", firstPrice)
        secondBeerRecieptLabel.text = "\(secondBeer.beerName)"
        let secondPrice = secondBeer.sellBeer()
        secondBeerAllPriceLabel.text = String(format: "%.2f BYN", secondPrice)
        thirdBeerRecieptLabel.text = "\(thirdBeer.beerName)"
        let thirdPrice = thirdBeer.sellBeer()
        thirdBeerAllPriceLabel.text = String(format: "%.2f BYN", thirdPrice)
        totalPrice += firstPrice + secondPrice + thirdPrice
        allBeerPriceLabel.text = String(format: "ИТОГО %.2f BYN", firstPrice + secondPrice + thirdPrice)
    }
    
    @IBAction func plusFirstBeer(_ sender: UIButton) {
        if firstBeer.countOfBottles < 100{
            firstBeerMinusCountButton.setTitle("-", for: .normal)
            firstBeerMinusCountButton.isEnabled = true
            firstBeer.plusBeer()
            firstBeerCountLabel.text = "\(firstBeer.countOfBottles)"
        }else{
            firstBeerPlusCountButton.isEnabled = false
            return
        }
    }
    
    @IBAction func minusFirstBeer(_ sender: UIButton) {
        if firstBeer.countOfBottles == 0{
            firstBeerMinusCountButton.isEnabled = false
            return
        }else{
            firstBeerPlusCountButton.isEnabled = true
            firstBeer.minusBeer()
            firstBeerCountLabel.text = "\(firstBeer.countOfBottles)"
        }
    }
    
    @IBAction func plusSecondBeer(_ sender: UIButton) {
        if secondBeer.countOfBottles < 100{
            secondBeerMinusCountButton.setTitle("-", for: .normal)
            secondBeerMinusCountButton.isEnabled = true
            secondBeer.plusBeer()
            secondBeerCountLabel.text = "\(secondBeer.countOfBottles)"
        }else{
            secondBeerPlusCountButton.isEnabled = false
            return
        }
    }
    
    @IBAction func minusSecondBeer(_ sender: UIButton) {
        if secondBeer.countOfBottles == 0{
            secondBeerMinusCountButton.isEnabled = false
            return
        }else{
            secondBeerPlusCountButton.isEnabled = true
            secondBeer.minusBeer()
            secondBeerCountLabel.text = "\(secondBeer.countOfBottles)"
        }
    }
    
    @IBAction func plusThirdBeer(_ sender: UIButton) {
        if thirdBeer.countOfBottles < 100{
            thirdBeerMinusCountButton.setTitle("-", for: .normal)
            thirdBeerMinusCountButton.isEnabled = true
            thirdBeer.plusBeer()
            thirdBeerCountLabel.text = "\(thirdBeer.countOfBottles)"
        }else{
            thirdBeerPlusCountButton.isEnabled = false
            return
        }
    }
    @IBAction func minusThirdBeer(_ sender: UIButton) {
        if thirdBeer.countOfBottles == 0{
            thirdBeerMinusCountButton.isEnabled = false
            return
        }else{
            thirdBeerPlusCountButton.isEnabled = true
            thirdBeer.minusBeer()
            thirdBeerCountLabel.text = "\(thirdBeer.countOfBottles)"
        }
    }
}



