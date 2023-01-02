//
//  Constants.swift
//  Youtube-App
//
//  Created by Paritosh on 26/11/22.
//

import Foundation

struct Constants{
    
    static var API_KEY = "AIzaSyB1If1ZtIzPnxMeP7JvTgZbEhs12dimc2g"
    static var PLAYLIST_ID = "PLy1bC-662HHKXOVHInxvhSRReDz0d4xCI"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VideoCell = "VideoCell"
}
