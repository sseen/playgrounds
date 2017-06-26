//: Playground - noun: a place where people can play

func he(ok:String, helo:String)
    -> Bool{
        return false
}

func she(ok:String)
    -> (String,String) -> Bool {
        return {o,k in
            print("")
            if 2>1 {
                print("3")
            }
            return false
        }
}

func they(ok:String)
    -> (String) -> (String, String) -> Bool {
        return she
}

func all(ok:String)
    -> (_ o:String) -> (_ p:String) -> (_ p:String,_ o:String) -> Bool {
        // return they
        return { o in
            return {p in
                return { (p,o) in
                    return false
                    }
                }
            }
}

func all2(ok:String)
    -> (String) -> (String) -> (String,String) -> Bool {
        // return they
        return { o in {p in { $0>$1 }
            }
        }
}

func they2(ok:String)
    -> (String) -> (@escaping ((String) -> String)) -> Bool {
        return { o in
            return { helo in
                
                return true
            }
        }
}

func they3(ok:String)-> (_ hel:@escaping ((String) -> String)) -> Bool {
        return { helo in
                
                return true
        }
    
}

// 奇数个 -> 说明，第一个 -> 后面是一个整体
// 偶数个 -> 说明，还想总结来着，看来不用了，第一个后面都是整体来看

print(he(ok: "", helo: ""))
let ok = she(ok: "2")
print(ok("",""))
print(all(ok: "")("")("")("",""))
print ( (they3(ok: "")){o in ""} )
(they2(ok: "")("")){o in ""}
