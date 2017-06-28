//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

var str = "Hello, playground"
print("o");

// careful ip 
// get request just encode the special sign like = and + and so on
// post request 1 set content-type 2 httpBody
//let url = NSURL(string: "http://00.70.33.72:8088/zftal-mobile/webservice/newmobile/MobileLoginXMLService/getALLXtYwByUser?userName=UqyJWYEcnLQ%3d&apptoken=75367d5c389b4d0591a1853976562957")
let url = NSURL(string: "http://00.70.33.72:8088/zftal-mobile/webservice/newmobile/MobileLoginXMLService")
let requst = NSMutableURLRequest(url: url! as URL)
requst.httpMethod = "POST"
requst.setValue("text/xml; charset=utf-8", forHTTPHeaderField: "Content-Type")

let postString = "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body soap:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><ns1:CommonBrushFunction xmlns:ns1=\"http://service.login.newmobile.com/\"><userName>UqyJWYEcnLQ=</userName><moduletype>Q3uzQ7AQRyI=</moduletype><strKey>PGf+W+8rn9SCabgR9sm6Q5PuzYhBeI8ro03RWADw8iiIdZWC5t7HLA==</strKey><apptoken>75367d5c389b4d0591a1853976562957</apptoken></ns1:CommonBrushFunction></soap:Body></soap:Envelope>"
requst.httpBody = postString.data(using: .utf8)


NSURLConnection.sendAsynchronousRequest(requst as URLRequest, queue: OperationQueue.current!) { data, response, error in
    if let data = response {
        let contents = NSString(data:data, encoding:String.Encoding.utf8.rawValue)
        print("lol\(contents!)")
    } else {
        print(error?.localizedDescription as Any)
    }
}

class myRequest:NSObject,NSURLConnectionDataDelegate {
    
    func doo(url:NSURLRequest) {
        NSURLConnection(request: url as URLRequest, delegate: self)
    }
    
    func connection(_ connection: NSURLConnection, didReceive data: Data) {
        print("ssn\(NSString(data: data, encoding: String.Encoding.utf8.rawValue))")
    }
    
    func connection(_ connection: NSURLConnection, didFailWithError error: Error) {
        print("hello")
    }
    
    func connectionDidFinishLoading(_ connection: NSURLConnection) {
        print("done")
    }
}

let o = myRequest()
o.doo(url: requst)


