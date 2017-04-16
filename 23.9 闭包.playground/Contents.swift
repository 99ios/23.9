//: Playground - noun: a place where people can play

import UIKit

/*****************1.闭包表达式*****************/
var names = ["Baby","Kitty","Amy","Clida","Emick"]
//闭包完整写法
names.sorted(by:{(s1: String, s2: String)->Bool in return s1 > s2 })
//根据上下文类型推断
let newNames = names.sorted(by:{s1,s2 in return s1 < s2})
print(newNames)
//打印：["Amy", "Baby", "Clida", "Emick", "Kitty"]


/*****************2.后置闭包*****************/

let nums = [41,56,92,13,84,]
let allNums = ["壹","贰","叁","肆","伍","陆","柒","捌","玖","拾"]
let strs = nums.map{ (num)->String in
    var number = num
    var output = ""
    repeat {
        output = allNums[number % 10] + output
        number /= 10
    } while number > 0
    return output
}
print(strs)
//打印结果：["伍贰", "陆柒", "拾叁", "贰肆", "玖伍"]


/*****************3.捕获值*****************/
func createMulti(base amount: Int)->()-> Int {
    var total = 1
    func multi()-> Int{
        total *= amount
        return total
    }
    return multi
}
let multiF = createMulti(base:2)
print(multiF())
//打印：2
print(multiF())
//打印：4
print(multiF())
//打印：8
let multiT = createMulti(base:10)
print(multiT())
//打印：10
print(multiF())
//打印:16
