
/*
 Here is a function that takes in an array of this along with a condition,
 and if the condition is met return true or false.
*/

typealias longComplicatedExpression = (Int) -> Bool

func hasAnyMatches(list: [Int], condition: longComplicatedExpression) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

/*
 Ready Player 1
 
 Write a function that returns true if any numbers are between 1 and 10 (indlusive).
 
 [20, 19, 7, 12] => true beacause of the 7
 [20, 19, 12]    => false
 */

func betweenOneAndTen(number: Int) -> Bool {
    return 1...10 ~= number
}

hasAnyMatches(list: [2, 3, 4], condition: betweenOneAndTen)
hasAnyMatches(list: [0, 11], condition: betweenOneAndTen)
hasAnyMatches(list: [1, 11], condition: betweenOneAndTen)
hasAnyMatches(list: [0, 10], condition: betweenOneAndTen)
