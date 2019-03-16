//
//  FirebaseAPIHelper.swift
//  
//
//  Created by Will Oakley on 10/24/18.
//

import Foundation
import FirebaseStorage

class FirebaseAPIClient {
    
    static func getSnaps(completion: @escaping ([SnapImage]) -> ()) {
        /* PART 2A START */
        let snapImageList = [SnapImage]()
        let imagesRef = Storage.storage().reference().child("snapImages")
        let snapImage = imagesRef.child("imageURL")
    
        for image in snapImage {
            snapImageList.append(image)
        }
        
        return snapImageList
        /* PART 2A FINISH */
    }
}
