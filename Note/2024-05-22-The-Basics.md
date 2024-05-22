---
layout: post
author: "大西瓜"
title: "The Basics"
date:   2024-05-22 12:30:07 +0800
categories: [update,Note] 
---

## 1.基础知识

Swift提供了许多基本的数据类型，包括用于整数的 Int ，用于浮点值的 Double ，用于布尔值的 Bool 和用于文本的 String 。Swift还提供了三种主要集合类型的强大版本： Array 、 Set 和 Dictionary ，如集合类型中所述。



### 1.1 基础数据类型

    -   Int
    -   Double
    -   Bool
    -   String
    -   Array
    -   Set
    -   Dictionary 


#### 1.1.1 可选类型

在声明变量的时候，后面跟一个❓代表是可选类型

```swift
var optionalInt: Int? = 10
var optionalString: String? = "Hello, Swift"
var optionalDouble: Double? = nil

//强制解包 先判断 然后在后面加上!号
if optionalInt != nil {
    print("Value is \(optionalInt!)")
}


//可选绑定（Optional Binding）：
//使用 if let 或 guard let 语句来安全地解包可选值。
if let value = optionalInt {
    print("Value is \(value)")
} else {
    print("Value is nil")
}

//合并运算符
let value = optionalInt ?? 0
print("Value is \(value)")
```



### 1.2 声明常量和变量

常量和变量必须在使用前声明。使用 `let` 关键字声明常量，使用 `var` 关键字声明变量。下面是一个示例，说明如何使用常量和变量来跟踪用户尝试登录的次数：

```swift
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
```



### 1.3 声明变量需要指定其类型
```swift
let env="development"
let maxValue:Int
if env=="development1"{
    maxValue=100}
else{
    maxValue=10
}
print("value maxValue = \(maxValue)")
//output:value maxValue = 10
```




### 1.4 声明多个变量

声明多个变量用逗号分隔

```swift
var x=1.0,y=2.3,z=0.1
```


### 1.5 类型注解

在声明常量或变量时，可以提供类型批注，以明确常量或变量可以存储的值的类型。在常量或变量名后加一个冒号，后跟一个空格，然后是要使用的类型名，这样就可以编写一个类型注释。

```swift
var welcomeMessage:String
WelcomeMessage="Hello"
print(WelcomeMessage)
```

### 1.6 常量和变量名

常量和变量名几乎可以包含任何字符，包括Unicode字符：
```swift
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dog——cow"
let 密码="password Error"
```

常量和变量名称不能包含空格字符、数学符号、箭头、专用Unicode标量值或线条和方框绘制字符。它们也不能以数字开始，尽管数字可能包含在名称的其他地方。

一旦你声明了一个特定类型的常量或变量，你就不能用同样的名字再次声明它，或者改变它来存储不同类型的值。你也不能把一个常数变成一个变量，或者把一个变量变成一个常数。


```swift
let languageName = "Swift"
languageName = "Swift++"  //error 常量 can't 改变
```

### 1.7 打印常量和变量
变量放括号内，并且使用"\\"进行转义
```swift
var value="Xigua"
print("my name is \(value)")
```


### 1.8 注释
注释和C一样

```swift
//我是单行注释
/* 我是多行注释
* 我是多行注释
*/
```

```swift
/* This is the start of the first multiline comment.
    /* 内嵌注释也ok的This is the second, nested multiline comment. */
This is the end of the first multiline comment. */
```
### 1.9 分号
与许多其他语言不同，Swift不要求你在代码中的每个语句后面写一个标记（ ; ），尽管你可以这样做，如果你愿意的话。但是，如果要在一行中编写多个单独的语句，则需要使用通配符：

```swift
let cat = "🐱"; print(cat)
// Prints "🐱"
```




### 1.10 整数

整数是没有小数部分的整数，例如 42 和 -23 。整数可以是有符号的（正、零或负）或无符号的（正或零）。

Swift提供8、16、32和64位形式的有符号和无符号整数。这些整数遵循类似于C的命名约定，8位无符号整数的类型为 UInt8 ，32位有符号整数的类型为 Int32 。像Swift中的所有类型一样，这些整数类型的名称都大写。




#### 1.10.1 边界

您可以使用其 min 和 max 属性访问每个整数类型的最小值和最大值：
```swift
let val1 = UInt8.min  // val1 is equal to 0, and is of type UInt8
let val2 = UInt8.max  // val2 is equal to 255, and is of type UInt8
print("MinValue = \(val1)")   //output:0
print("MaxValue = \(val2)")   //output:255
```




#### Int

在大多数情况下，你不需要选择一个特定大小的整数在你的代码中使用。Swift提供了一个额外的整数类型， Int ，它的大小与当前平台的原生单词大小相同：

在32位平台上， Int 与 Int32 大小相同。
在64位平台上， Int 与 Int64 大小相同。

除非你需要处理一个特定大小的整数，否则在你的代码中总是使用 Int 来表示整数值。这有助于代码的一致性和互操作性。即使在32位平台上， Int 也可以存储 -2,147,483,648 和 2,147,483,647 之间的任何值，并且对于许多整数范围来说足够大。






#### UInt

Swift还提供了一个无符号整数类型， UInt ，它的大小与当前平台的原生字大小相同：

在32位平台上， UInt 与 UInt32 大小相同。
在64位平台上， UInt 与 UInt64 大小相同。






### 1.11 浮点数

浮点类型可以表示比整数类型更大范围的值，并且可以存储比 Int 中存储的数字大得多或小得多的数字。Swift提供了两种有符号浮点数类型：

Double 表示64位浮点数。
Float 表示32位浮点数。










### 1.12 类型安全和类型推断

Swift是类型安全的语言。类型安全语言鼓励您清楚地了解代码可以使用的值的类型。如果你的部分代码需要一个 String ，你不能错误地传递一个 Int 。

因为Swift是类型安全的，它在编译代码时执行类型检查，并将任何不匹配的类型标记为错误。这使您能够在开发过程中尽早捕获和修复错误。


类型检查可以帮助您在处理不同类型的值时避免错误。然而，这并不意味着你必须指定你声明的每个常量和变量的类型。如果你没有指定你需要的值的类型，Swift会使用类型推断来计算出合适的类型。类型推断使编译器能够在编译代码时自动推断特定表达式的类型，只需检查您提供的值即可。


由于类型推断，Swift需要的类型声明远少于C或J2EE—C等语言。常量和变量仍然是显式类型的，但是指定它们类型的大部分工作都是为您完成的。

类型推断在声明具有初始值的常量或变量时特别有用。这通常是通过在声明常量或变量时为其分配一个文字值（或文字）来实现的。（文字值是直接出现在源代码中的值，例如下面示例中的 42 和 3.14159 。）

例如，如果你给一个新的常量赋值为 42 ，而没有说明它是什么类型，Swift会推断你希望这个常量是 Int ，因为你已经用一个看起来像整数的数字初始化了它：

```swift
let meaningOfLife = 42
```
同样地，如果你没有为浮点文字指定类型，Swift会推断你想要创建一个 Double ：
```swift
let pi = 3.14159
```

如果你在一个表达式中组合了联合收割机整数和浮点文字，那么将从上下文中推断出一个类型 Double ：
```swift
let anotherPi = 3 + 0.14159
```
**Error**
```swift
var val3:Int
val3=3.16
print("val3 = \(val3)")
//output:error: cannot assign value of type 'Double' to type 'Int'
```









### 1.13 数字表示法

#### 1.13.1 整数
可以这样写：

十进制数，没有前缀
二进制数，带 0b 前缀
一个八进制数，带有 0o 前缀
十六进制数，带 0x 前缀

```swift
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

//负数
let SignedbinaryInteger:Int8 = -0b1000000      // 17 in binary notation

```

#### 1.13.2 浮点数

浮点字面值可以是十进制（无前缀）或十六进制（带 0x 前缀）。它们必须始终在小数点的两边都有一个数字（或十六进制数）。十进制浮点数也可以有一个可选的指数，由一个浮点数或一个浮点数 e 表示;十六进制浮点数必须有一个指数，由一个浮点数或一个浮点数 p 表示。

**对于指数为 x 的十进制数，基数乘以10：**
1.25e2 表示1.25 x 10²，或 125.0 。
1.25e-2 表示1.25 x 10 ²，或 0.0125 。

**对于指数为 x 的十六进制数，基数乘以2：**
0xFp2 表示15 x 2 ²或 60.0 。
0xFp-2 表示15 x 2 -²，或 3.75 。

所有这些浮点文字都有一个十进制值 12.1875 ：


#### 1.13.3 额外补充

数字文本可以包含额外的格式以使其更容易阅读。整数和浮点数都可以用额外的零填充，并且可以包含下划线以帮助可读性。这两种格式都不会影响文本的基础值：

```swift
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
```


### 1.14 数字类型转换

在你的代码中，对所有通用的整型常量和变量使用 Int 类型，即使它们是非负的。

在日常情况下使用默认整数类型意味着整数常量和变量在代码中可以立即互操作，并且将匹配整数文字值的推断类型。

只有当手头的任务特别需要时，才使用其他整数类型，因为来自外部源的显式大小的数据，或者为了性能，内存使用或其他必要的优化。

在这些情况下使用显式调整大小的类型有助于捕获任何意外的值溢出，并隐式记录所使用的数据的性质。


#### 1.14.1 整数转换

```swift
let cannotBeNegative: UInt8 = -1  //UInt 不能存储负数
let tooBig: Int8 = Int8.max + 1   //Error 
let tooBig:Int = Int( Int8.max) + 1  //先进行类型转换
```


```swift
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)  //先进行类型转换
```

SomeType(ofInitialValue) 是默认的调用Swift类型的初始化器并传入初始值的方式。在幕后， UInt16 有一个接受 UInt8 值的初始化器，因此这个初始化器用于从现有的 UInt8 生成新的 UInt16 。但是，你不能在这里传入任何类型-它必须是 UInt16 提供初始化器的类型。扩展现有类型以提供接受新类型（包括您自己的类型定义）的初始值设定项将在扩展中介绍。



#### 1.14.1 整数浮点数转换

整数和浮点数类型之间的转换必须显式进行：

```swift
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi 的值为3.14159并且编译器会推断类型为double

let integerPi = Int(pi)   //3
// integerPi equals 3, and is inferred to be of type Int
```




### 1.15 类型别名

类型别名定义现有类型的替代名词 可以使用`typealias` 关键字定义类型别名

一旦定义了类型别名，就可以在任何可能使用原始名称的地方使用别名：
```swift
typealias AudioSample = UInt16

var value1 :AudioSample
value1 = AudioSample.min 
```
AudioSample 被定义为 UInt16 的别名。因为它是一个别名，所以对 AudioSample.min 的调用实际上调用了 UInt16.min ，它为 maxAmplitudeFound 变量提供了一个初始值 0 。




### 1.16 布尔值

Swift有一个基本的布尔类型，叫做 Bool 。布尔值被称为逻辑值，因为它们只能是真或假。Swift提供了两个布尔常量值， true 和 false ：
```swift
let orangesAreOrange = true
let turnipsAreDelicious = false
```
orangesAreOrange 和 turnipsAreDelicious 的类型被推断为 Bool ，因为它们是用布尔值初始化的。与上面的 Int 和 Double 一样，如果在创建常量或变量时将它们设置为 true 或 false ，则不需要将它们声明为 Bool 。类型推断有助于使Swift代码更加简洁和可读，当它将常量或变量与其他类型已知的值相关联时。

布尔值在使用条件语句（如 if 语句）时特别有用：
```swift
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."
```

Swift的类型安全防止非布尔值被替换为 Bool 。下面的示例报告编译时错误：
```swift
let i=1
if i {
    //不会编译成功，会报错
}

let n=2
if n == 2{
    // n == 2 的结果是Bool 所以可以通过编译
}

```


### 1.17 Tuple 元祖

元组将多个值分组为单个复合值。元组中的值可以是任何类型，并且不必彼此具有相同的类型。


在这个例子中， (404, "Not Found") 是一个描述HTTP状态码的元组。HTTP状态码是当您请求网页时由Web服务器返回的特殊值。如果您请求的网页不存在，则返回状态代码 404 Not Found 。

```swift
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")
```
(404, "Not Found") 元组将 Int 和 String 组合在一起，给予HTTP状态码两个独立的值：一个数字和一个人类可读的描述。它可以被描述为“类型 (Int, String) 的元组”。

您可以从任何类型的排列中创建元组，它们可以包含任意多的不同类型。没有什么可以阻止你拥有一个类型为 (Int, Int, Int) 或 (String, Bool) 的元组，或者你需要的任何其他排列。

```swift
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"
```

如果你只需要元组中的某些值，那么在分解元组时，用下划线（ _ ）忽略元组中的某些部分：

```swift
let (justTheStatusCode,_) = http400Err
print("The status code is \(justTheStatusCode)")
```

或者，使用从零开始的索引号访问元组中的各个元素值：
```swift
print("index 0 of Http400Err = \(http400Err.0)")
print("index 1 of Http400Err = \(http400Err.1)")
```




#### 1.17.1 元祖命名

如果你在元组中命名元素，你可以使用元素名来访问这些元素的值：
```swift

let Http200Status = (statusCode:20, description: "Ok")              //元祖命名
print("http200status.statusCode = \(Http200Status.statusCode) ")    //使用命名
print("http200Status.description = \(Http200Status.description)")
```

**Note**:元组作为函数的返回值特别有用。尝试检索网页的函数可能会返回 (Int, String) 元组类型来描述页面检索的成功或失败。通过返回一个具有两个不同类型的值的元组，该函数提供了更多关于其结果的有用信息，而不是只返回单个类型的单个值。










### 1.18 Optional

在值可能不存在的情况下使用可选值。optional表示两种可能性：或者存在指定类型的值，您可以打开optional以访问该值，或者根本没有值。

作为一个可能丢失值的例子，Swift的 Int 类型有一个初始化器，试图将 String 值转换为 Int 值。但是，只有某些字符串可以转换为整数。字符串 "123" 可以转换为数值 123 ，但是字符串 "hello, world" 没有对应的数值。下面的例子使用初始化器尝试将 String 转换为 Int ：

```swift
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print("convertedNumber = \(convertedNumber)")
//output:convertednumber = Optional(123)
print("convertedNumber = \(convertedNumber!)")

```



**字符串转换成Int类型，结果为nil 无**

```swift
let possibleNumber = "Hello"
let convertedNumber = Int(possibleNumber)
print("convertednumber = \(convertedNumber)")
//output:convertednumber = nil
```

### 1.18.1 可选类型的作用

在 Swift 中，Int? 后面的问号（?）表示这是一个可选类型（Optional）。可选类型允许变量存储一个值或者存储 nil，表示变量可能没有值。

可选类型在 Swift 中是一种非常重要的特性，用于处理值可能缺失的情况。比如，一个网络请求的响应码可能会成功返回一个整数，也可能会因为网络问题而没有返回任何值。在这种情况下，使用可选类型可以更安全地处理这些情况，避免程序因为访问不存在的值而崩溃。

```swift
var serverResponseCode: Int? = 404
//serverResponseCode 是一个可选的 Int 类型，声明时使用了 Int?
//serverResponseCode 被赋值为 404，但也可以被赋值为 nil，表示没有值。
```

当你使用可选类型时，Swift 强制你安全地处理这些值，以防止错误。例如，要从可选类型中取值，你可以使用以下几种方式：

1.	强制解包（Forced Unwrapping）：
直接在可选值后面加一个感叹号（!），表示你确定这个可选值不是 nil：
```swift
if serverResponseCode != nil {
    print("Server response code: \(serverResponseCode!)")
}
```

2.	可选绑定（Optional Binding）：
使用 if let 或 guard let 语句来安全地解包可选值：
```swift
if let responseCode = serverResponseCode {
    print("Server response code: \(responseCode)")
} else {
    print("No response code received.")
}
```

3.	空合并运算符（Nil Coalescing Operator）：
提供一个默认值，当可选值为 nil 时使用这个默认值：
```swift
let responseCode = serverResponseCode ?? 0
print("Server response code: \(responseCode)")
```



### 1.19 nil

在 Swift 中，nil 用于表示可选类型的变量没有值。可选类型可以包含两种情况：有一个具体的值，或者没有值（nil）。这是通过在类型后面加上一个问号（?）来实现的。

```swift
var optionalInt: Int? = 10  // 有值
optionalInt = nil           // 没有值

var opString:String   //如果设置值 会默认设置为nil
```

当一个变量被定义为可选类型时，它可以是某个类型的值，也可以是 nil。这使得代码更加安全，因为 Swift 强制开发者处理可能的 nil 情况，从而避免运行时错误。

如果一个optional有一个值，它被认为是“不等于” nil ：


```swift
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."
```

您**不能将 nil 用于非可选的常量或变量**。如果代码中的常量或变量需要在某些条件下不存在值的情况下工作，请将其声明为适当类型的可选值。

声明为非可选值的常量或变量保证永远不会包含 nil 值。如果你试图将 nil 赋给一个非可选的值，你会得到一个编译时错误。












----

```swift```
ref:https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Type-Safety-and-Type-Inference