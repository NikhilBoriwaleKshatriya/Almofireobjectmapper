
import Foundation
import ObjectMapper



class ActorAPIresponse:Mappable{
    
    var actors : [Actor]?
    required init?(map: Map) {
        
    }
    func  mapping(map:Map)  {
        actors <- map["actors"]
        
    }
}

class Actor:Mappable{
    
    var name : String?
    var description : String?
    var dob : String?
    var country : String?
    var spouse : String?
    var children : String?
    var height : String?
    var imageurl : String?
    required init?(map: Map) {
        
    }
    func mapping(map: Map) {
        name <- map["name"]
        description <- map["description"]
        dob <- map ["dob"]
        country <- map["country"]
        height <- map["height"]
        spouse <- map["spouse"]
        children <- map["children"]
        imageurl <- map["image"]
        
        
    }
    
    
}
