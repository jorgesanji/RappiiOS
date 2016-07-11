//
//  RestEntry.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/11/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

class RestEntry {
    
    //@SerializedName("im:name")
    var name: Name!
    
    //@SerializedName("im:image")
    var image: [Image]!
    
    //@SerializedName("summary")
    var  summary:Summary!
    
    //@SerializedName("im:price")
    var price:Price!
    //
    //@SerializedName("im:contentType")
    var contentType:ContentType!
    
    //@SerializedName("rights")
    var rights:Rights!
    
    //@SerializedName("title")
    var title:Title!
    
    //@SerializedName("link")
    var link:Link!
    
    //@SerializedName("id")
    var id:Id!
    
    //@SerializedName("im:artist")
    var artist:Artist!
    
    //@SerializedName("category")
    var category:Category!
    
    //@SerializedName("im:releaseDate")
    var releaseDate:ReleaseDate!
    
    class Name {
        //    @SerializedName("label")
        var label: String!
        
    }
    
    class Image {
        
        //        @SerializedName("label")
        var label:String!
        
        //        @SerializedName("attributes")
        var attributes:Attributes!
        
        class Attributes {
            
            //            @SerializedName("height")
            var height: String!
            
        }
    }
    
    class Summary {
        
        //        @SerializedName("label")
        var label:String!;
        
    }
    
    class Price {
        
        //        @SerializedName("label")
        var label: String!
        
        //        @SerializedName("attributes")
        var attributes:Attributes!
        
        
        class Attributes {
            
            //            @SerializedName("amount")
            var amount:String!
            
            //            @SerializedName("currency")
            var currency:String!
            
        }
    }
    
    class ContentType {
        
        //        @SerializedName("attributes")
        var attributes: Attributes! ;
        
        class Attributes {
            
            //            @SerializedName("term")
            var term:String!
            
            //            @SerializedName("label")
            var label: String!
            
            
        }
    }
    
    class Rights {
        
        //        @SerializedName("label")
        var label:String!
        
    }
    
    class Title {
        
        //        @SerializedName("label")
        var label:String!
        
        
    }
    
    class Link {
        
        //        @SerializedName("attributes")
        var attributes: Attributes!
        
        class Attributes {
            
            //            @SerializedName("rel")
            var rel:String!
            
            //            @SerializedName("type")
            var type:String!
            
            //            @SerializedName("href")
            var href:String!
            
        }
    }
    
    class Id {
        
        //        @SerializedName("label")
        var label:String!
        
        //        @SerializedName("attributes")
        var attributes:Attributes!
        
        class Attributes {
            
            //            @SerializedName("im:id")
            var id:String!
            
            //            @SerializedName("im:bundleId")
            var bundleId:String!
            
        }
    }
    
    class Artist {
        
        //        @SerializedName("label")
        var label:String!
        
        //        @SerializedName("attributes")
        var attributes: Attributes ;
        
        class Attributes {
            
            //            @SerializedName("href")
            var href:String!
            
        }
    }
    
    class Category {
        
        //        @SerializedName("attributes")
        var attributes: Attributes!
        
        class Attributes {
            
            //            @SerializedName("im:id")
            var id:String!
            
            //            @SerializedName("term")
            var term: String!
            
            //            @SerializedName("scheme")
            var scheme: String!
            
            //            @SerializedName("label")
            var label:String!
            
            
        }
    }
    
    class ReleaseDate {
        
        //        @SerializedName("label")
        var label:String!
        
        //        @SerializedName("attributes")
        var attributes: Attributes!
        
        class Attributes {
            
            //            @SerializedName("label")
            var label: String!
            
        }
    }
}