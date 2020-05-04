//
//  StateModel.swift
//  AppleUISwift
//
//  Created by Mac on 04/05/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

class WebAPI: NSObject
{
    
    func GetApiResponse(Str_url: String, completion: @escaping (_ result: [States]?) -> Void)
    {
        
        let url = URL(string: Str_url)!
        
        
        let _ = URLSession.shared.dataTask(with: url)
        { data,task,error in
            
            if let data = data
            {
                
                print(data.count)
                
                let Response = try? JSONDecoder().decode(ResponseBody.self, from: data)
                if let response = Response
                {
                    completion(response.data.regional)
                }
                else
                {
                    completion([])
                }
            }
            else
            {
                completion([])
            }
            
        }.resume()
        
 
    }
    
}


 
