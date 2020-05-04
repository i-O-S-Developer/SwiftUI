//
//  StatesViewModel.swift
//  AppleUISwift
//
//  Created by Mac on 04/05/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

class StatesViewModel
{
    var state : States
    
    
    
    var loc : String
    {
        return state.loc
    }
    
    
    var totalConfirmed : Int
    {
        return state.totalConfirmed
    }
    
    
    var deaths : Int
    {
        return state.deaths
    }
    
    var discharged : Int
    {
        return state.discharged
    }
    
    var confirmedCasesForeign : Int
    {
        return state.confirmedCasesForeign
    }
    
    
    init(state:States)
    {
        self.state = state
    }
    
}




class StateListViewModel: ObservableObject
{
    @Published var arr_StatesData = [StatesViewModel]()

    func GetStatesData()
      {
         let WebAPIObj = WebAPI()
          WebAPIObj.GetApiResponse(Str_url: "https://api.rootnet.in/covid19-in/stats/latest")
          { (result) in
              
              if let data = result
              {
                  DispatchQueue.main.async
                  {
                      self.arr_StatesData =  data.map(StatesViewModel.init)
                   }
              }
          }
      }
      
      
}
 
 
