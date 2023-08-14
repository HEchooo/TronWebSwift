//
//  TronSigner.swift
//  
//
//  Created by math on 2021/12/27.
//

import Foundation
import secp256k1

public struct TronSigner: CustomStringConvertible {
    public var privateKey: Data
    public var publicKey: Data
    
    public var address: TronAddress {
        return TronAddress(publicKey: publicKey)!
    }
    
    public init(privateKey: Data) throws {
        guard TronSigner.isValidPrivateKey(privateKey), let publicKey = SECP256K1.privateToPublic(privateKey: privateKey, compressed: false) else {
            throw Error.invalidPrivateKey
        }
        
        self.privateKey = privateKey
        self.publicKey = publicKey
    }
    
    public static func generate() throws -> TronSigner {
        guard let pri = SECP256K1.generatePrivateKey() else {
            throw Error.invalidPrivateKey
        }
        return try TronSigner(privateKey: pri)
    }
    
    public static func isValidPrivateKey(_ privateKey: Data) -> Bool{
        return SECP256K1.verifyPrivateKey(privateKey: privateKey)
    }
    
    public var description: String {
        return """
            address: \(address.address),
            publicKey: \(publicKey.toHexString())
            privateKey: \(privateKey.toHexString())
        """
    }
}

extension TronSigner {
    public func signDigest(_ hash: Data) -> Data? {
        let signedData = SECP256K1.signForRecovery(hash: hash, privateKey: privateKey, useExtraVer: false)
        return signedData.serializedSignature
    }
    
    public func signPersonalMessage(_ personalMessage: Data, useTronHeader: Bool = true) -> Data? {
        let prefix = useTronHeader ? "\u{19}TRON Signed Message:\n32" : "\u{19}Ethereum Signed Message:\n32"
        
        guard let prefixData = prefix.data(using: .ascii) else { return nil }
        
        var data = Data()
        if personalMessage.count >= prefixData.count && prefixData == personalMessage[0 ..< prefixData.count] {
            data.append(personalMessage)
        } else {
            data.append(prefixData)
            data.append(personalMessage)
        }
        let hash = data.sha3(.keccak256)
        return signDigest(hash)
    }
}

extension TronSigner {
    public enum Error: String, LocalizedError {
        case invalidPrivateKey
        
        public var errorDescription: String? {
            return "TronWeb.Signer.Error.\(rawValue)"
        }
    }
}
