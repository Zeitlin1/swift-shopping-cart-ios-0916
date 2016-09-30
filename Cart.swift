//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items = [Item]()

    func totalPriceInCents() -> Int {
        var totalPrice = 0
        
        for Item in items {
            totalPrice += Item.priceInCents
        }
        return totalPrice
    }
    
  //
    
    func add(item: Item){
        items.append(item)
    }

  //
    
    func remove(item argItem: Item){
        for (index, item) in items.enumerated() {
            if (argItem.name == item.name) {
                items.remove(at: index)
    }
        }
    }
    
    
  //
    
    
    func items(withName name: String) -> [Item] {
        var withNameArray = [Item]()
        
        for piece in items {
            if name == piece.name {
                withNameArray.append(piece)
            }
        }
        return withNameArray
    }

    
  //
    
    func items(withMinPrice price: Int) -> [Item] {
        var minPrice = [Item]()
        
        for piece in Array(items) {
            if price <= piece.priceInCents {
                minPrice.append(piece)
            }
        }
        return minPrice
    }

    
   //
    
    
    func items(withMaxPrice price: Int) -> [Item] {
        var withMaxPrice = [Item]()
        
        for piece in Array(items) {
            if price >= piece.priceInCents {
                withMaxPrice.append(piece)
            }
        }
        return withMaxPrice
    }
    
   //








}
