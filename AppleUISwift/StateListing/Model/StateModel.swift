//
//  StateModel.swift
//  AppleUISwift
//
//  Created by Mac on 04/05/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

struct ResponseBody: Decodable
{
    var lastRefreshed: String
    var data: ParentDataContent
    var lastOriginUpdate: String
    
    var success :Bool
    
    
    enum CodingKeys: String, CodingKey
    {
        case lastRefreshed = "lastRefreshed"
        case data = "data"
        case lastOriginUpdate = "lastOriginUpdate"
        case success = "success"
    }
}



struct ParentDataContent: Decodable
{
    var regional: [States]
 
    init(regional: [States]) {
        self.regional = regional
     }
    
    enum CodingKeys: String, CodingKey {
        case regional
    }
}



struct States : Decodable
{
    var loc = String()
    var confirmedCasesIndian = Int()
    var discharged = Int()
    var deaths = Int()
    var confirmedCasesForeign = Int()
    var totalConfirmed = Int()

    
    enum MyStructKeys: String, CodingKey
    { // declaring our keys
      case loc = "loc"
      case confirmedCasesIndian = "confirmedCasesIndian"
      case discharged = "discharged"
      case deaths = "deaths"
      case confirmedCasesForeign = "confirmedCasesForeign"
      case totalConfirmed = "totalConfirmed"
    }
    
  
}
 
/*
  This is the response that we are parsing.
 {
     "success": true,
     "data": {
         "summary": {
             "total": 26917,
             "confirmedCasesIndian": 26494,
             "confirmedCasesForeign": 111,
             "discharged": 5914,
             "deaths": 826,
             "confirmedButLocationUnidentified": 312
         },
         "unofficial-summary": [{
             "source": "covid19india.org",
             "total": 27551,
             "recovered": 6399,
             "deaths": 875,
             "active": 20277
         }],
         "regional": [{
                 "loc": "Andaman and Nicobar Islands",
                 "confirmedCasesIndian": 33,
                 "discharged": 11,
                 "deaths": 0,
                 "confirmedCasesForeign": 0,
                 "totalConfirmed": 33
             },
             {
                 "loc": "Andhra Pradesh",
                 "confirmedCasesIndian": 1097,
                 "discharged": 231,
                 "deaths": 31,
                 "confirmedCasesForeign": 0,
                 "totalConfirmed": 1097
             }
         ]
     },
     "lastRefreshed": "2020-04-26T16:30:01.940Z",
     "lastOriginUpdate": "2020-04-26T11:30:00.000Z"
 }
 */



  
