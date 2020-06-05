//
//  FOverviewViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 5/30/20.
//  Copyright © 2020 The Matthiessen Group, LLC. All rights reserved.
//

import UIKit
import Kingfisher
import Photos


class FOverviewViewController: UIViewController {

    var screenshot = UIImage()
    
    
  @IBOutlet weak var tapstart: UIButton!
    
    func getDataFromUrl(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
          URLSession.shared.dataTask(with: url) { data, response, error in
              completion(data, response, error)
          }.resume()
      }

 
    
        @IBAction func tapStart(_ sender: Any) {
            
//            if didpurchase {
//
//                self.performSegue(withIdentifier: "FilterOverviewToSale", sender: self)
//
//            } else {
            
//            var yourImageURLString = UIImage(named: "Summer1")

//           let dngFileURL = URL(string: yourImageURLString)
//
//                let dngData = photo.fileDataRepresentation()!
//                do {
//                    try dngData.write(to: dngFileURL, options: [])
//                } catch {
//                    print("Unable to write DNG file.")
//                    return
//                }
//
//  PHPhotoLibrary.shared().performChanges({
//                    // Add the compressed (HEIF) data as the main resource for the Photos asset.
//                    let creationRequest = PHAssetCreationRequest.forAsset()
//                    creationRequest.addResource(with: .photo, data: compressedData, options: nil)
//
//                    // Add the RAW (DNG) file as an altenate resource.
//                    let options = PHAssetResourceCreationOptions()
//                    options.shouldMoveFile = true
//                    creationRequest.addResource(with: .alternatePhoto, fileURL: rawURL, options: options)
//                }, completionHandler: self.handlePhotoLibraryError)
//
//
//                //
//                //                             let myWebsite = NSURL(string: "https://motivationapp.page.link/share")
//
//                guard let yourImageURL = URL(string: yourImageURLString) else { return }
//
//                getDataFromUrl(url: yourImageURL) { (data, response, error) in
//
//                    guard let data = data, let imageFromData = UIImage(data: data) else { return }
//
//                    DispatchQueue.main.async() {
//                        UIImageWriteToSavedPhotosAlbum(imageFromData, nil, nil, nil)
//
//                        let alert = UIAlertController(title: "Saved", message: "Your image has been saved", preferredStyle: .alert)
//                        let okAction = UIAlertAction(title: "Ok", style: .default)
//                        alert.addAction(okAction)
//                        self.present(alert, animated: true)
//                    }
//                }
            
//            var photo = UIImage(named: "Summer1").da
//
//            let dir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! as String
//            let formatter = DateFormatter()
//            formatter.dateFormat = "yyyyMMddHHmmss"
//            formatter.locale = Locale.init(identifier: "en_US_POSIX")
//            let filePath =  dir.appending(String(format: "/%@.dng", formatter.string(from: Date())))
//            let dngFileURL = URL(fileURLWithPath: filePath)
//
//            let dngData = photo.fileDataRepresentation()!
//            do {
//                try dngData.write(to: dngFileURL, options: [])
//            } catch {
//                print("Unable to write DNG file.")
//                return
//            }
//
//            PHPhotoLibrary.shared().performChanges({
//                // Add the compressed (HEIF) data as the main resource for the Photos asset.
//                let creationRequest = PHAssetCreationRequest.forAsset()
//                creationRequest.addResource(with: .photo, data: compressedData, options: nil)
//
//                // Add the RAW (DNG) file as an altenate resource.
//                let options = PHAssetResourceCreationOptions()
//                options.shouldMoveFile = true
//                creationRequest.addResource(with: .alternatePhoto, fileURL: rawURL, options: options)
//            }, completionHandler: nil)
    
//            var image =  UIImage(named: "Summer1")
         //
         //                             let myWebsite = NSURL(string: "https://motivationapp.page.link/share")
         
//         let shareAll : Array = [image] as [Any]
//
//
//         let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
//
//         activityViewController.excludedActivityTypes = [UIActivity.ActivityType.print, UIActivity.ActivityType.postToWeibo, UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.postToVimeo, UIActivity.ActivityType.saveToCameraRoll, UIActivity.ActivityType.assignToContact]
//
//         activityViewController.popoverPresentationController?.sourceView = self.view
//         self.present(activityViewController, animated: true, completion: nil)

//            }
            
//            var downloadimage = UIImage(named: "Summer1")!
            
            
//            var activityItems = [Array<Any>]()
//
//            if let resourcePath = Bundle.main.resourcePath {
//                let imgName = "Summer1"
//                let path = resourcePath + "/" + imgName
//            }
//
////            let asset = assetsFetchResults[Int(image_number)] as? PHAsset
//
//            let asset = PHAsset.fetchAssets(withLocalIdentifiers: "Summer1", options: <#T##PHFetchOptions?#>)
//
//            let options = PHImageRequestOptions()
//            options.isSynchronous = false
////            options.version() = PHImageRequestOptionsVersion.current.rawValue
//            options.deliveryMode = .opportunistic
//            options.resizeMode = .none
//            options.isNetworkAccessAllowed = false //HAS TO BE YES TO DOWNLOAD FROM THE CLOUD AND PROGRESS TO SHOW
//            /*options.progressHandler =  ^(double progress,NSError *error,BOOL* stop, NSDictionary* dict) {
//                NSLog(@"progress %lf",progress);  //never gets called
//            };*/
//
//            PHImageManager.default().requestImageData(for: asset, options: options, resultHandler: { imageData, dataUTI, imageOrientation, info in
//
//                let assetURL = info?["PHImageFileURLKey"] as? URL
//                let photoFormat = assetURL?.pathExtension
//
//                var temporaryDNGFileURL: URL?
//
//                let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).map(\.path)
//                let documentsDirectory = paths[0]
//                let format = DateFormatter()
//                format.dateFormat = "MMddyyyyHHmmss"
//                let assetDateString = format.string(from: Date())
//                let assetPath = URL(fileURLWithPath: documentsDirectory).appendingPathComponent(assetDateString + (".dng")).absoluteString
//                temporaryDNGFileURL = URL(fileURLWithPath: assetPath)
//                imageData.write(to: temporaryDNGFileURL, atomically: true)
//
//                activityItems = [temporaryDNGFileURL] as [Any]
//
//                  let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
//
//                //                     activityViewController.excludedActivityTypes = [UIActivity.ActivityType.print, UIActivity.ActivityType.postToWeibo, UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.postToVimeo, UIActivity.ActivityType.saveToCameraRoll, UIActivity.ActivityType.assignToContact]
//
//                                     activityViewController.popoverPresentationController?.sourceView = self.view
//                                     self.present(activityViewController, animated: true, completion: nil)
//
//            })
            
                   
            
            var path = String()
//
            if let resourcePath = Bundle.main.resourcePath {
                let imgName = "Summer1"
                path = resourcePath + "/" + imgName
            }
            let imageFileName = "Summer1"

            if let audioFilePath = Bundle.main.path(forResource: imageFileName, ofType: "dng", inDirectory: nil) {
                print(audioFilePath)
                path = audioFilePath;
            }
            

//            let fileURL = NSURL(fileURLWithPath: path)
//
//            // Create the Array which includes the files you want to share
//            var filesToShare = [Any]()
//
//            // Add the path of the file to the Array
//            filesToShare.append(fileURL)
//
//            // Make the activityViewContoller which shows the share-view
//            let activityViewController = UIActivityViewController(activityItems: filesToShare, applicationActivities: nil)
//
//            // Show the share-view
//            self.present(activityViewController, animated: true, completion: nil)
//            let fileURL = URL(fileURLWithPath: path)
//            let phasset = PHAssetForFileURL(url: fileURL as NSURL)!;
            
           
            var assetObj:PHFetchResult<PHAsset>!
            
            DispatchQueue.global(qos: .userInitiated).async {
                let options = PHFetchOptions()
                options.sortDescriptors = [NSSortDescriptor.init(key: "creationDate", ascending: false)]
                options.predicate = NSPredicate(format: "mediaType = %d || mediaType = %d", PHAssetMediaType.image.rawValue, PHAssetMediaType.video.rawValue)
                options.includeAllBurstAssets = false
                let fetchResults = PHAsset.fetchAssets(with: options)
                DispatchQueue.main.async {
                    assetObj = fetchResults
                    print("Loaded \(fetchResults.count) images.")
                    
                    if(assetObj != nil){
                        let temporaryDNGFileURL = URL(fileURLWithPath: path)
                                    
                                    let options = PHImageRequestOptions()

                                    options.isSynchronous = false
                                    options.version = .current
                                    options.deliveryMode = .opportunistic
                                    options.resizeMode = .none
                                    options.isNetworkAccessAllowed = false
                                    
                                    guard assetObj.count > 0 else { return }
                                    PHImageManager.default().requestImageData(for: assetObj.lastObject!, options: options, resultHandler: {
                                        imageData, dataUTI, imageOrientation, info in

                                        let assetURL = temporaryDNGFileURL
                                        _ = assetURL.pathExtension
                                                
                                        try? imageData?.write(to: temporaryDNGFileURL)
                        
                                        })
                                    
                                     let shareAll = [temporaryDNGFileURL] as [Any]
                                    
                                     let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
                                    
                                    activityViewController.popoverPresentationController?.sourceView = self.view
                                    self.present(activityViewController, animated: true, completion: nil)
                    }

                }
            }
            
            
            
    }
    
    var image: UIImage!
    var assetCollection: PHAssetCollection!
    var albumFound : Bool = false
    var photosAsset: PHFetchResult<AnyObject>!
    var assetThumbnailSize:CGSize!
    var collection: PHAssetCollection!
    var assetCollectionPlaceholder: PHObjectPlaceholder!
    
 func saveImage(){
    PHPhotoLibrary.shared().performChanges({
        
        let assetRequest = PHAssetChangeRequest.creationRequestForAsset(from: UIImage(named: "Summer1")!)
            let assetPlaceholder = assetRequest.placeholderForCreatedAsset
        let albumChangeRequest = PHAssetCollectionChangeRequest(for: self.assetCollection, assets: self.photosAsset as! PHFetchResult<PHAsset>)
        
            albumChangeRequest!.addAssets([assetPlaceholder!] as NSArray)
        
            }, completionHandler: { success, error in
                print("added image to album")
                print(error)

        })
    }
    
    func createAlbum() {
        //Get PHFetch Options
        let fetchOptions = PHFetchOptions()
        fetchOptions.predicate = NSPredicate(format: "title = %@", "camcam")
        let collection : PHFetchResult = PHAssetCollection.fetchAssetCollections(with: .album, subtype: .any, options: fetchOptions)
        //Check return value - If found, then get the first album out
        if let _: AnyObject = collection.firstObject {
            self.albumFound = true
            assetCollection = collection.firstObject as! PHAssetCollection
        } else {
            //If not found - Then create a new album
            PHPhotoLibrary.shared().performChanges({
                let createAlbumRequest : PHAssetCollectionChangeRequest = PHAssetCollectionChangeRequest.creationRequestForAssetCollection(withTitle: "camcam")
                self.assetCollectionPlaceholder = createAlbumRequest.placeholderForCreatedAssetCollection
                }, completionHandler: { success, error in
                    self.albumFound = success

                    if (success) {
                        let collectionFetchResult = PHAssetCollection.fetchAssetCollections(withLocalIdentifiers: [self.assetCollectionPlaceholder.localIdentifier], options: nil)
                        print(collectionFetchResult)
                        self.assetCollection = collectionFetchResult.firstObject as! PHAssetCollection
                    }
            })
        }
    }
    
    @IBOutlet weak var bigafterimage: UIImageView!
    @IBOutlet weak var afterimage: UIImageView!
    @IBOutlet weak var beforeimage: UIImageView!
    @IBOutlet weak var authorimage: UIImageView!
        @IBOutlet weak var blurredimage: UIImageView!
        @IBOutlet weak var descriptionlabel: UILabel!
        @IBOutlet weak var professionlabel: UILabel!
        @IBOutlet weak var backimagel: UIImageView!
        @IBOutlet weak var titlelabel: UILabel!
        @IBOutlet weak var authorlabel: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tapstart.layer.cornerRadius = 5.0
            tapstart.clipsToBounds = true

            
            
            authorimage.layer.cornerRadius = authorimage.frame.size.width / 2
            authorimage.clipsToBounds = true
            
            var imageURLString = selectedbeforeimage
            
            var imageUrl = URL(string: imageURLString)
            
            
            beforeimage.kf.setImage(with: imageUrl)
            
            var imageURLString2 = selectedafterimage
              
            var imageUrl2 = URL(string: imageURLString2)
              
              afterimage.kf.setImage(with: imageUrl2)
            
            bigafterimage.kf.setImage(with: imageUrl2)
            
            var authorURL = selectedauthorimage
            
            var imageUrl3 = URL(string: authorURL)
            authorimage.kf.setImage(with: imageUrl3)


            
            let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
                let blurEffectView = UIVisualEffectView(effect: blurEffect)
                blurEffectView.frame = bigafterimage.bounds
                blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                bigafterimage.addSubview(blurEffectView)
            
            authorlabel.text = selectedauthorname
            titlelabel.text = selectedtitle
//            professionlabel.text = selectedprofession
            descriptionlabel.text = selecteddescription
     

            // Do any additional setup after loading the view.
        }
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

        @IBAction func tapBack(_ sender: Any) {
            
            self.dismiss(animated: true, completion: nil)
        }
    }
