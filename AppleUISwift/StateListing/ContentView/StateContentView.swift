//
//  StateContentView.swift
//  AppleUISwift
//
//  Created by Mac on 04/05/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import SwiftUI

struct  StateContentView: View {
    
    @ObservedObject private var trackingListVM = StateListViewModel()
    
    init() {
        self.trackingListVM.GetStatesData()
    }
    
    
    var body: some View {
        NavigationView {
            
            List(self.trackingListVM.arr_StatesData, id: \.loc) { tracking in
                
                VStack(alignment:.leading)
                    {
                        Text(tracking.loc)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .textContentType(.addressState)
                         .padding(10)
                         //   .foregroundColor(Color.blue)
                               .background(Color.blue)
                            //   .clipShape(Circle())
                        
                             .font(.custom("", size: 20))
                        HStack()
                            {
                            
                                
                            Text("Total:")
                                
                            Text("\(tracking.totalConfirmed)")
                                .padding(10)
                                
                             Text("Death:")

                            
                            Text("\(tracking.deaths)")
 
                            Text("Discharged:")

                            Text("\(tracking.discharged)")
                            
 
                            
                        }
                        
                        Spacer()
                }
                
                
                
                
            }
                
            .navigationBarTitle("Covid19 Tracking")
            
        }
    }
}

struct StateContentView_Previews: PreviewProvider {
    static var previews: some View {
        StateContentView()
    }
}
