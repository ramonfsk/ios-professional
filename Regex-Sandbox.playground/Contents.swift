import UIKit

// @:?!()$#,./\
let text = "abc\\"
let specialCharacterRegex = "[@:@:?!()$#,./\\\\]+"
text.range(of: specialCharacterRegex, options: .regularExpression) != nil
