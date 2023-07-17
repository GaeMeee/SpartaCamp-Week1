class AbstractOperation {
    func operate(_ firstNum: Double, _ secondNum: Double) -> Double {
        return 0
    }
}

class AddOperation: AbstractOperation {
    override func operate(_ firstNum: Double, _ secondNum: Double) -> Double {
        return firstNum + secondNum
    }
}

class SubtractOperation: AbstractOperation {
    override func operate(_ firstNum: Double, _ secondNum: Double) -> Double {
        return firstNum - secondNum
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(_ firstNum: Double, _ secondNum: Double) -> Double {
        return firstNum * secondNum
    }
}

class DivideOperation: AbstractOperation {
    override func operate(_ firstNum: Double, _ secondNum: Double) -> Double {
        return firstNum / secondNum
    }
}

class Calculator {
    var operation: AbstractOperation
    
    init(_ operation: AbstractOperation) {
        self.operation = operation
    }
    
    func calculate(firstNum: Double, secondNum: Double) -> Double {
        return operation.operate(firstNum, secondNum)
    }
}


// 덧셈
let addCalculator = Calculator(AddOperation())
let addResult = addCalculator.calculate(firstNum: 10, secondNum: 2)
print(addResult)

// 뺄셈
let subtractCalculator = Calculator(SubtractOperation())
let subtractResult = subtractCalculator.calculate(firstNum: 10, secondNum: 2)
print(subtractResult)

// 곱하기
let multiplyCalculator = Calculator(MultiplyOperation())
let multiplyResult = multiplyCalculator.calculate(firstNum: 10, secondNum: 2)
print(multiplyResult)

// 나누기
let divideCalculator = Calculator(DivideOperation())
let divideResult = divideCalculator.calculate(firstNum: 10, secondNum: 2)
print(divideResult)
