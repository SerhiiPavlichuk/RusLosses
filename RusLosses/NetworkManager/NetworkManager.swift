//
//  NetworkManager.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import Foundation

struct NetworkManager {

    static let shared = NetworkManager()

    func performEquipmentRequest(completion: @escaping(([Equipment]) -> ())) {
        if let url = URL(string: Constants.Network.equipmentURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let unwrapedData = data {
                    let decoder = JSONDecoder()
                    do {
                        let jsonString = String(data: unwrapedData, encoding: .utf8)
                        let converted = self.convertNilPropertyToString(string: jsonString)
                        guard let parsedData = converted.data(using: .utf8) else {
                            return print("Parced Data Error")

                        }
                        let decodeData = try decoder.decode([Equipment].self, from: parsedData)
                        completion(decodeData)
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }

    func performOrksRequest(completion: @escaping(([Orks]) -> ())) {
        if let url = URL(string: Constants.Network.orksURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let unwrapedData = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodeData = try decoder.decode([Orks].self, from: unwrapedData)
                        DispatchQueue.main.async {
                            completion(decodeData)
                        }
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }

    private func convertNilPropertyToString(string: String?) -> String {
        guard let string = string else {
            return "Convert String Error"

        }
        return string.replacingOccurrences(of: "NaN", with: "300")
    }
}

