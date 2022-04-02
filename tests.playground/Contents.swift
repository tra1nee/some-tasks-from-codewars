
// Задачи с Сode Wars

// Задача: дается массив чисел, нужно найти сумму квадратов каждого из чисел.
//
// Мое решение 01.04.22
//
//func squareSum(_ vals: [Int]) -> Int {
//    var res = 0
//    for i in vals {
//        res += i * i
//    }
//    return res
//}

// Best practices
//
//func squareSum(_ vals: [Int]) -> Int {
//  return vals.reduce(0) { $0 + $1 * $1 }
//}




// Задача: дается строка, нужно вывести каждый символ с заглавной буквы, а следующие маленькими, повторение символа в количестве == индексу данной буквы, буквы разделяются "-" (Пример: "aCv" -> "A-Cc-Vvv")
//
// Мое решение 01.04.22
//
//func accum(_ s: String) -> String {
//  var res = ""
//    var someNum = 0
//    for i in 0..<s.count {
//      someNum = i
//      let someIndex = s.index(s.startIndex, offsetBy: i)
//      res += "\(s[someIndex].uppercased())"
//      while someNum > 0 {
//          someNum -= 1
//          res += "\(s[someIndex].lowercased())"
//      }
//      if i == s.count - 1 {
//          res += ""
//      } else {
//          res += "-"
//      }
//  }
//    return res
//}
//
//
//accum("cdF")


// Best practices
//
//func accum(_ str: String) -> String {
//    return str.characters.enumerated().map {
//        repeatElement(String($1), count: $0 + 1)
//            .joined()
//            .capitalized
//    }
//        .joined(separator: "-")
//}


// Задача: дается число (Int), нужно найти сумму всех чисел от 0 до (Int), которые кратны 3 или 5.
//
// Мое решение. 02.04.22
//
//func findSum(_ n: Int) -> Int {
//    var someNum = [Int]()
//    for i in 0...n {
//        if (i % 3 == 0) || (i % 5 == 0) {
//            someNum.append(i)
//        }
//    }
//    return someNum.reduce(0, +)
//}
//
//findSum(10)

// Best practices
//
//func findSum(_ n: Int) -> Int {
//  return (0 ... n)
//    .filter { ($0 % 3) * ($0 % 5) == 0 }
//    .reduce(0, +)
//}
//
//findSum(10)


// Задача: дается массив [Int], нужно найти одно единственное нечетное число, если оно отсутствует, то вывести nil.
//
// Мое решение. 02.04.22
//
//func oddOne(_ arr: [Int]) -> Int? {
//  var res: Int? = nil
//    for i in 0..<arr.count {
//    if arr[i] % 2 != 0 {
//        res = i
//    }
//  }
//  return res
//}
//
//oddOne([2,16,98,10,13,78])

// Best practices
//
//func oddOne(_ arr: [Int]) -> Int? {
//  return arr.firstIndex { $0 % 2 != 0 }
//}


// Задача: дается входное значение Int, нужно сформировать из цифр этого Int максимально возможное число. (1232 -> 3221)
//
// Мое решение. 02.04.22
//
//func descendingOrder(of number: Int) -> Int {
//    var array = [Int]()
//    var newNum = number
//    var last = ""
//    for _ in 0..<number.description.count {
//        array.append(newNum % 10)
//        newNum /= 10
//    }
//    array.sort(by: {$0 > $1} )
//    for i in array {
//        last += String(i)
//    }
//    return Int(last) != nil ? Int(last)! : 0
//}
//
//descendingOrder(of: 23412)
//
// Best practices
//
//func descendingOrder(of number: Int) -> Int {
//    return Int(String(String(number).sorted(by: >)))!
//}




