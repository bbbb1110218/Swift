---
layout: post
author: "大西瓜"
title: "String And Characters"
date:   2024-05-24 10:29:07 +0800
categories: [update,Swift] 
---

## 1.字符串和字符
字符串是一系列字符，例如 "hello, world" 或 "albatross" 。 Swift 字符串由 String 类型表示。 String 的内容可以通过多种方式访问​​，包括作为 Character 值的集合。

Swift 的 String 和 Character 类型提供了一种快速且符合 Unicode 的方式来处理代码中的文本。字符串创建和操作的语法是轻量级且可读的，具有类似于 C 的字符串文字语法。字符串连接就像使用 + 运算符组合两个字符串一样简单，并且通过在之间进行选择来管理字符串可变性常量或变量，就像 Swift 中的任何其他值一样。您还可以使用字符串将常量、变量、文字和表达式插入较长的字符串中，这一过程称为字符串插值。

这使得创建用于显示、存储和打印的自定义字符串值变得容易。

尽管语法很简单，但 Swift 的 String 类型是一种快速、现代的字符串实现。每个字符串都由与编码无关的 Unicode 字符组成，并提供对以各种 Unicode 表示形式访问这些字符的支持。

**Note：**
Swift 的 String 类型与 Foundation 的 NSString 类桥接。 Foundation 还扩展了 String 以公开 NSString 定义的方法。这意味着，如果您导入 Foundation，您可以访问 String 上的那些 NSString 方法，而无需进行强制转换。







### 1.1 字符串文字

您可以在代码中包含预定义的 String 值作为字符串文字。字符串文字是用双引号 ( " ) 括起来的字符序列。
使用字符串文字作为常量或变量的初始值：

```swift
let someString = "Some string literal value"
```





### 1.2 多行字符串
如果您需要跨多行的字符串，请使用多行字符串文字 - 由**三个双引号**括起来的字符序列：

**NOTE:**
"""要占用单独的一行 包含在字符在两个"""之间的一行

```swift
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
```
多行字符串文字包括其左引号和右引号之间的所有行。该字符串从左引号 (**"""** ) 之后的第一行开始，到右引号之前的行结束，这意味着下面的字符串都不以换行符开头或结尾：

```swift
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""
```

当源代码在多行字符串文字中包含换行符时，该换行符也会出现在字符串的值中。
如果您想使用换行符使源代码更易于阅读，但又不希望换行符成为字符串值的一部分，请在这些换行符的末尾写入反斜杠 ( \ )线路：

```swift
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
```
要制作以换行符开头或结尾的多行字符串文字，请编写一个空行作为第一行或最后一行。例如：

```swift
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
```
多行字符串可以缩进以匹配周围的代码。右引号 ( """ ) 之前的空格告诉 Swift 在所有其他行之前忽略哪些空格。但是，如果除了右引号之前的内容之外，还在行首写入空格，则该空格也会包含在内。


![图](https://docs.swift.org/swift-book/images/multilineStringWhitespace@2x.png)

在上面的示例中，即使整个多行字符串文字都是缩进的，字符串中的第一行和最后一行也不以任何空格开头。中间的行比右引号有更多的缩进，因此它以额外的四个空格缩进开始。







### 1.3 字符串中的特殊字符

字符串文字可以包含以下特殊字符：
- 转义特殊字符 \0 （空字符）、 \\ （反斜杠）、 \t （水平制表符）、 \n （换行符） 、 \r （回车）、 \" （双引号）和 \' （单引号）
- 任意 Unicode 标量值，写作 \u{ n } ，其中 n 是 1-8 位十六进制数（Unicode 在下面的 Unicode 中讨论）

下面的代码显示了这些特殊字符的四个示例。 wiseWords 常量包含两个转义双引号。 dollarSign 、 blackHeart 和 sparklingHeart 常量演示了 Unicode 标量格式：


```swift
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
```

由于多行字符串文字使用三个双引号而不是一个，因此您可以在多行字符串文字内包含双引号 ( " )，而无需转义它。要在多行字符串中包含文本 """ ，请转义至少一个引号。例如：



```swift
let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
```







### 1.4 扩展字符串分隔符

不转义字符串内容
```swift
let str:String = #"""  //#"""开始
content                 //换行符 之类的控制字符不转义
"""#                    //“”“#结束
```


您可以将字符串文字放在扩展分隔符内，以在字符串中包含特殊字符，而不调用它们的效果。您将字符串放在引号 ( " ) 内，并用数字符号 ( # ) 括起来。例如，打印字符串文字 #"Line 1\nLine 2"# 会打印换行转义序列 ( \n )，而不是跨两行打印字符串。

如果您需要字符串文字中字符的特殊效果，请匹配转义字符 ( \ ) 后面的字符串中的数字符号数量。例如，如果您的字符串是 #"Line 1\nLine 2"# 并且您想要换行，则可以使用 #"Line 1\#nLine 2"# 代替。同样， ###"Line1\###nLine2"### 也会断行。



使用扩展分隔符创建的字符串文字也可以是多行字符串文字。您可以使用扩展分隔符将文本 """ 包含在多行字符串中，从而覆盖结束文字的默认行为。例如：

```swift

let str:String = """
hello\nkitty
"""
//output:
hello
kitty
```

```swift
let str2:String = #"""
hello\nkitty
"""#

//output:
hello\nkitty
```











### 1.5 初始化空字符串

要创建空 String 值作为构建较长字符串的起点，请将空字符串文字分配给变量或使用初始化语法初始化新的 String 实例：


```swift
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
```

通过检查布尔 isEmpty 属性来确定 String 值是否为空：

```swift
if emptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"
```







### 1.6 字符串可变性

您可以通过将特定的 String 分配给变量（在这种情况下可以修改）或常量（在这种情况下无法修改）来指示是否可以修改（或变异）特定的 String :


```swift
var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"


let constantString = "Highlander"
constantString += " and another Highlander"
//编译错误 常量不可以被修改
// this reports a compile-time error - a constant string cannot be modified
```







### 1.7 String的类型

Swift 的 String 类型是值类型。如果您创建新的 String 值，则该 String 值在传递给函数或方法或分配给常量或变量时会被复制。在每种情况下，都会创建现有 String 值的新副本，并传递或分配新副本，而不是原始版本。结构和枚举是值类型中描述了值类型。

**函数调用只是拷贝**

Swift 的默认复制 String 行为确保当函数或方法向您传递 String 值时，很明显您拥有该确切的 String 值，无论它来自哪里。您可以确信，除非您自己修改，否则您传递的字符串不会被修改。

在幕后，Swift 的编译器优化了字符串的使用，以便仅在绝对必要时才进行实际复制。这意味着当使用字符串作为值类型时，您始终可以获得出色的性能。









### 1.8 使用字符

可以使用for-in循环迭代字符串来访问String的各个Character的值

```swift
for ch in "Hello小🐶" {
    print(ch)
}
```

或者，您可以通过提供 Character 类型注释从单字符字符串文字创建独立的 Character 常量或变量：

```swift
let exclamationMark: Character = "!"
```

String 值可以通过将 Character 值数组作为参数传递给其初始值设定项来构造：

```swift
//声明字符数组
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"
```







### 1.9 链接字符串和字符

String 值可以使用加法运算符 ( + ) 添加在一起（或连接）以创建新的 String 值：

```swift
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"
```
您还可以使用加法赋值运算符 ( += ) 将 String 值附加到现有 String 变量：

```swift
var instruction = "look over"
instruction += string2
// instruction now equals "look over there"
```
您可以使用 String 类型的 append() 方法将 Character 值附加到 String 变量：

```swift
let exclamationMark: Character = "!"
welcome.append(exclamationMark)
//添加字符不能用 操作符+号 用append方法 
// welcome now equals "hello there!"
```

**Note:**
不能把字符串添加到字符变量中，因为字符值能包含单个字符


如果您使用多行字符串文字来构建较长字符串的行，则您希望字符串中的每一行都以换行符结尾，包括最后一行。例如：

```swift
let badStart = """
    one
    two
    """
let end = """
    three
    """
print(badStart + end)
// Prints two lines:
// one
// twothree


let goodStart = """
    one
    two

    """
print(goodStart + end)
// Prints three lines:
// one
// two
// three
```

在上面的代码中，将 badStart 与 end 连接会生成一个两行字符串，这不是所需的结果。由于 badStart 的最后一行不以换行符结尾，因此该行会与 end 的第一行合并。相反， goodStart 的两行均以换行符结尾，因此当它与 end 组合时，结果将具有三行，正如预期的那样







### 1.10 字符串插值

字符串插值是一种通过将常量、变量、文字和表达式的值包含在字符串文字中来构造新 String 值的方法。您可以在单行和多行字符串文字中使用字符串插值。

插入到字符串文字中的每个项目都用一对括号括起来，并以反斜杠为前缀 ( \ )：


```swift
let mutiplier:Int = 3
let message = "\(mutiplier) times 2.5 is \(Double(mutiplier) * 2.5)"
print(message)
```

在上面的示例中， multiplier 的值作为 \(multiplier) 插入到字符串文字中。当评估字符串插值以创建实际字符串时，此占位符将替换为 multiplier 的实际值。


multiplier 的值也是字符串后面较大表达式的一部分。此表达式计算 Double(multiplier) * 2.5 的值并将结果 ( 7.5 ) 插入到字符串中。在这种情况下，当表达式包含在字符串文字中时，它被写为 \(Double(multiplier) * 2.5) 。


您可以使用扩展字符串分隔符来创建包含字符的字符串，否则这些字符将被视为字符串插值。例如：

**不插值 纯字符**

```swift
print(#"write an interplated string in swift using \(mutiplier)."#)

//output:write an interplated string in swift using \(mutiplier).
```

**插值**
```swift
printf(#"6 time 7 is \#(6*7)"#)
//output: 6 time 7 is 42
```

**Note:**
在内插字符串的括号内编写的表达式不能包含未转义的反斜杠 ( \ )、回车符或换行符。但是，它们可以包含其他字符串文字。







### 1.11 Unicode 统一码

Unicode 是用于在不同书写系统中编码、表示和处理文本的国际标准。它使您能够以标准化形式表示任何语言的几乎任何字符，并从外部源（例如文本文件或网页）读取和写入这些字符。
Swift 的 String 和 Character 类型完全符合 Unicode，如本节所述。







### 1.12  Unicode 标量值

在幕后，Swift 的原生 String 类型是根据 Unicode 标量值构建的。 Unicode 标量值是字符或修饰符的唯一 21 位数字，例如 U+0061 代表 LATIN SMALL LETTER A ( "a" )，或 U+1F425 ( "🐥" )。

请注意，并非所有 21 位 Unicode 标量值都分配给字符 — 某些标量被保留以供将来分配或在 UTF-16 编码中使用。分配给字符的标量值通常也有一个名称，例如上面示例中的 LATIN SMALL LETTER A 和 FRONT-FACING BABY CHICK 。







### 1.13 扩展字素簇

Swift 的 Character 类型的每个实例都代表一个扩展字素簇。扩展字素簇是一个或多个 Unicode 标量的序列，它们（组合时）产生单个人类可读字符。

这是一个例子。字母 é 可以表示为单个 Unicode 标量 é （ LATIN SMALL LETTER E WITH ACUTE 或 U+00E9 ）。但是，同一字母也可以表示为一对标量 - 标准字母 e （ LATIN SMALL LETTER E 或 U+0065 ），后跟 COMBINING ACUTE ACCENT 标量 ( U+0301 )。 COMBINING ACUTE ACCENT 标量以图形方式应用于其前面的标量，当由支持 Unicode 的文本呈现系统呈现时，将 e 转换为 é 。

在这两种情况下，字母 é 都表示为表示扩展字素簇的单个 Swift Character 值。在第一种情况下，簇包含单个标量；在第二种情况下，它是两个标量的簇：



```swift
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by ́
// eAcute is é, combinedEAcute is é
```


扩展字素簇是一种将许多复杂脚本字符表示为单个 Character 值的灵活方法。例如，韩文字母表中的韩文音节可以表示为预组合或分解的序列。这两种表示形式都可以作为 Swift 中的单个 Character 值：

```swift
let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
// precomposed is 한, decomposed is 한
```

扩展字素簇启用用于封闭标记的标量（例如 COMBINING ENCLOSING CIRCLE 或 U+20DD ），以将其他 Unicode 标量封闭为单个 Character 值的一部分：

```swift
let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute is é⃝
```

区域指示符号的 Unicode 标量可以成对组合以生成单个 Character 值，例如 REGIONAL INDICATOR SYMBOL LETTER U ( U+1F1FA ) 和 REGIONAL INDICATOR SYMBOL LETTER S ）：

```swift
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS is 🇺🇸
```











### 1.14  计数字符

要检索字符串中 Character 值的计数，请使用字符串的 count 属性：

```swift
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// Prints "unusualMenagerie has 40 characters"
```

请注意，Swift 对 Character 值使用扩展字素簇意味着字符串连接和修改可能并不总是影响字符串的字符数。

例如，如果您使用四个字符的单词 cafe 初始化一个新字符串，然后将 COMBINING ACUTE ACCENT ( U+0301 ) 附加到该字符串的末尾，生成的字符串的字符数仍为 4 ，第四个字符为 é ，而不是 e ：







### 1.15 字符串索引

每个 String 值都有一个关联的索引类型 String.Index ，它对应于字符串中每个 Character 的位置。

如上所述，不同的字符可能需要不同的内存量来存储，因此为了确定哪个 Character 位于特定位置，您必须从该 String 。因此，Swift 字符串无法通过整数值进行索引。

使用 startIndex 属性访问 String 的第一个 Character 的位置。 endIndex 属性是 String 中最后一个字符之后的位置。因此， endIndex 属性不是字符串下标的有效参数。如果 String 为空，则 startIndex 和 endIndex 相等。

您可以使用 String 的 index(before:) 和 index(after:) 方法访问给定索引之前和之后的索引。要访问距离给定索引较远的索引，可以使用 index(_:offsetBy:) 方法，而不是多次调用这些方法之一。

您可以使用下标语法来访问特定 String 索引处的 Character 。

**Note:**
不可以直接对字符串使用数字索引进行取值
`string[0] //Error`
`string.endIndex `取值会错误，不包括最右边


```swift
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a
```

**便利字符串**

```swift
for i in 0..<greeting.count{
    print("\(greeting[greeting.index(greeting.startIndex,offsetBy:i)])",terminator:" ")
    // print("\(greeting[i])",terminator: " ")
}
```


尝试访问字符串范围之外的索引或字符串范围之外的索引处的 Character 将触发运行时错误。

```swift
greeting[greeting.endIndex] // Error
greeting.index(after: greeting.endIndex) // Error
```

使用 indices 属性可访问字符串中各个字符的所有索引。

```swift
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
// Prints "G u t e n   T a g ! "
```

**Note:**
您可以在任何类型上使用 startIndex 和 endIndex 属性以及 index(before:) 、 index(after:) 和 index(_:offsetBy:) 方法符合 Collection 协议。这包括 String ，如此处所示，以及集合类型，例如 Array 、 Dictionary 和 Set 。



### 1.16 字符串插入和移除

要将单个字符插入字符串中的指定索引处，请使用 insert(_:at:) 方法；要将另一个字符串的内容插入指定索引处，请使用 insert(contentsOf:at:) 方法。








-----
```swift```
ref:https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters