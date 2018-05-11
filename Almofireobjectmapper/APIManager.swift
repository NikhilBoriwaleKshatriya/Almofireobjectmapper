import Foundation
import Alamofire
import PromiseKit

class APImanager {
    
    //Create Sinlge tone cLass
    static let shared  = APImanager()
   private init()
   {
    
    }
    func fetchActorfromApi() ->Promise<[Actor]>
    {
        return Promise<[Actor]> {
            fullfil,reject -> Void in
            return Alamofire.request(API_URL).responseString{
                response  in
                switch(response.result){
                case .success(let responsestring):
                    // here we print all response in responnse String
                    print(responsestring)
                    //This Line Convert All JsonResponse into Model classs
                    let actorResponse =  ActorAPIresponse (JSONString: "\(responsestring)")!
                    fullfil(actorResponse.actors!)
                    
                case .failure(let error):
                    print(error)
                    reject(error)
                    
                }
                
            }
        }
       
    }
    
}
