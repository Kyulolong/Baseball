//
//  BaseballGame.swift
//  Baseball
//
//  Created by 김인규 on 6/14/24.


// level 1
//class BaseballGame {
//
//    func start() {
//        let answer = makeAnswer()
//        print("게임이 시작되었습니다. 정답은 \(answer) 입니다")
//    }
//    func makeAnswer() -> [Int] {
//       return [Int.random(in: 1...9), Int.random(in: 1...9), Int.random(in: 1...9)]
//    }
//}

// level 2

class BaseballGame {
    var digit1: Int
    var digit2: Int
    var digit3: Int
    
    init() {
        digit1 = Int.random(in: 1...9)
        digit2 = Int.random(in: 1...9)
        digit3 = Int.random(in: 1...9)
    }
    
    enum bgError: Error {
        case notAnInt(String)
        case not3Digits(String)
    }
    
    
    func start() throws -> Void {
        let answer = makeAnswer()
        print("게임이 시작되었습니다. 정답은 \(answer) 입니다")
        var attempts = 0
        
        while true {
            attempts += 1
            print("시도 횟수 : \(attempts)")
            
                guard let intUserAnswer = Int(input) else {
                throw bgError.notAnInt("정수를 입력하세요")
                }
                if intUserAnswer > 999 || intUserAnswer < 100 {
                    throw bgError.not3Digits("3자리 정수를 입력하세요")
                }
                
                // 같은 수가 2번 반복, 0이 들어가는 상황 추후구현 필요
                
                let (strike, ball) = checkAnswer(intUserAnswer)
                
                if strike == 3 {
                    print("축하합니다! 정답입니다")
                    break
                } else if strike == 0 && ball == 0 {
                    print("Nothing")
                    break
                }else {
                    print ("\(strike)스트라이크, \(ball)볼")
                    break
                }
            
            }
        }
        
        func makeAnswer() -> Int {
            let finalAnswer = digit1 * 100 + digit2 * 10 + digit3
            return finalAnswer
        }
    
        func checkAnswer(_ userAnswer: Int) -> (Int, Int) {
            let inputDigits = [userAnswer / 100, (userAnswer / 10) % 10, userAnswer % 10]
            let answerDigits = [digit1, digit2, digit3]
            
            var strike = 0
            var ball = 0
            
            for i in 0...2{
                if inputDigits[i] == answerDigits[i] {
                    strike += 1
                } else if answerDigits.contains(inputDigits[i]){
                    ball += 1
                }
            }
            return (strike, ball)
        }
     }


