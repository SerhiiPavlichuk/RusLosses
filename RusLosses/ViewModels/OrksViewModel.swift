//
//  OrksViewModel.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import Foundation

class OrksViewModel {

    var orks: [Orks] = []

    func loadGoodOrks(completion: @escaping(() -> ())) {
        NetworkManager.shared.performOrksRequest(completion: { orks in
            self.orks = orks
            completion()
        })
    }
}
