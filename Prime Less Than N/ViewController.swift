//
//  ViewController.swift
//  Prime Less Than N
//
//  Created by Liyi Wu on 3/6/18.
//  Copyright © 2018 Liyi Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var primeList = [2,3]
    
    //Find all the primes less than a given number
    func findAllPrime(ranNum: Int){
        var newPrime = 3
        var primeListLength = primeList.count
        while ranNum > primeList[primeListLength-1] {
            newPrime += 2
            if newPrime > ranNum{
                break
            }else{
                var checkPrime = false
                for i in primeList {
                    if newPrime%i == 0{
                        break
                    }else{
                        if newPrime < i * i {
                            checkPrime = true
                        }
                    }
                }
                if checkPrime == true {
                    primeList.append(newPrime)
                    primeListLength += 1
                }else{
                }
            }
        }
        print(primeList)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        findAllPrime(ranNum: 499999)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

