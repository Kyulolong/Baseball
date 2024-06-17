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
//    func makeAnswer() -> Int {
//        var array: Set<Int> = []
//        while array.count < 3{
//            array.insert(Int.random(in: 1...9))
//        }
//
//        let finalAnswerString = array.map { String($0) }.joined()
//        let finalAnswer = Int(finalAnswerString) ?? 0
//
//        return finalAnswer
//    }
//}


// level 2
//
//class BaseballGame {
//
//    func start() {
//        let answer = makeAnswer()
//        print("게임이 시작되었습니다. 정답은 \(answer) 입니다")
//        var attempts = 0
//
//        while true {
//            var strike = 0
//            var ball = 0
////            정수가 아닌 경우
//            guard let input = readLine(),
//                  let intUserAnswer = Int(input) else {
//                print("정수를 입력해 주세요")
//                continue
//            }
////            3자리 정수가 아닌 경우
//            if intUserAnswer > 999 || intUserAnswer < 100 {
//                print("3자리 정수를 입력하세요")
//                continue
//            }
//            let inputDigits = [intUserAnswer / 100, (intUserAnswer / 10) % 10, intUserAnswer % 10]
//
////            0이 들어가는 상황
//            if inputDigits.contains(0)  {
//                print("올바르지 않은 입력값입니다")
//                continue
//            }
//            let uniqueDigit = Set(inputDigits)
////             같은 수가 2번 반복
//            if uniqueDigit.count != 3 {
//                print("중복되는 숫자입니다")
//                continue
//            }
//
//            for i in 0...2{
//                if inputDigits[i] == answer[i] {
//                    strike += 1
//                } else if answer.contains(inputDigits[i]){
//                    ball += 1
//                }
//            }
//
//            if strike == 3 {
//                print("축하합니다! 정답입니다")
//                break
//            } else if strike == 0 && ball == 0 {
//                print("Nothing")
//            } else {
//                print ("\(strike)스트라이크, \(ball)볼")
//            }
//            attempts += 1
//            print("시도 횟수 : \(attempts)")
//        }
//    }
//
//    func makeAnswer() -> [Int] {
//        var array: Set<Int> = []
//        while array.count < 3{
//            array.insert(Int.random(in: 1...9))
//        }
//        let finalAnswer = Array(array)
//        return finalAnswer
//    }
//}

//level 3
//class BaseballGame {
//    func start() {
//        let answer = makeAnswer()
//        print("게임이 시작되었습니다. 정답은 \(answer) 입니다")
//        var attempts = 0
//
//        while true {
//            var strike = 0
//            var ball = 0
////            정수가 아닌 경우
//            guard let input = readLine(),
//                  let intUserAnswer = Int(input) else {
//                print("정수를 입력해 주세요")
//                continue
//            }
////            3자리 정수가 아닌 경우
//            if intUserAnswer > 999 || intUserAnswer < 100 {
//                print("3자리 정수를 입력하세요")
//                continue
//            }
//            let inputDigits = [intUserAnswer / 100, (intUserAnswer / 10) % 10, intUserAnswer % 10]
//
////            0이 들어가는 상황
//            if inputDigits.contains(0)  {
//                print("올바르지 않은 입력값입니다")
//                continue
//            }
//            let uniqueDigit = Set(inputDigits)
////             같은 수가 2번 반복
//            if uniqueDigit.count != 3 {
//                print("중복되는 숫자입니다")
//                continue
//            }
//
//            for i in 0...2{
//                if inputDigits[i] == answer[i] {
//                    strike += 1
//                } else if answer.contains(inputDigits[i]){
//                    ball += 1
//                }
//            }
//
//            if strike == 3 {
//                print("축하합니다! 정답입니다")
//                break
//            } else if strike == 0 && ball == 0 {
//                print("Nothing")
//            } else {
//                print ("\(strike)스트라이크, \(ball)볼")
//            }
//            attempts += 1
//            print("시도 횟수 : \(attempts)")
//        }
//    }
//
//    func makeAnswer() -> [Int] {
//        var array: Set<Int> = []
//          // 첫 번째 값은 1~9로 넣기
//        array.insert(Int.random(in: 1...9))
//        while array.count < 3{
//            array.insert(Int.random(in: 0...9))
//        }
//        let finalAnswer = Array(array)
//
//        return finalAnswer
//    }
//}

//level 4

//class BaseballGame {
//    
//    func start() {
//        var answer = makeAnswer()
//        let intAnswer = answer[0]*100 + answer[1]*10 + answer[2]
//        var isPlaying = true
//        while isPlaying {
//            print("""
//환영합니다! 원하시는 번호를 입력해주세요
//1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
//""")
//            guard let input = readLine(), let chooseGame = Int(input) else {
//                print("숫자를 입력하세요")
//                continue
//            }
//            switch chooseGame {
//            case 1:
//                print("게임이 시작되었습니다. 정답은 \(intAnswer) 입니다")
//                playGame()
//            case 2:
//                print("게임 기록 보기 ")
//            case 3:
//                print("게임을 종료합니다.")
//                isPlaying = false
//            default:
//                print("1,2,3 중 숫자를 입력해 주세요")
//            }
//        }
//        func playGame() {
//            var attempts = 0
//            while true {
//                var strike = 0
//                var ball = 0
//                //            정수가 아닌 경우
//                guard let input = readLine(),
//                      let intUserAnswer = Int(input) else {
//                    print("정수를 입력해 주세요")
//                    continue
//                }
//                //            3자리 정수가 아닌 경우
//                if intUserAnswer > 999 || intUserAnswer < 100 {
//                    print("3자리 정수를 입력하세요")
//                    continue
//                }
//                let inputDigits = [intUserAnswer / 100, (intUserAnswer / 10) % 10, intUserAnswer % 10]
//                
//                //            0이 들어가는 상황
//                if inputDigits.contains(0)  {
//                    print("올바르지 않은 입력값입니다")
//                    continue
//                }
//                let uniqueDigit = Set(inputDigits)
//                //             같은 수가 2번 반복
//                if uniqueDigit.count != 3 {
//                    print("중복되는 숫자입니다")
//                    continue
//                }
//                for i in 0...2{
//                    if inputDigits[i] == answer[i] {
//                        strike += 1
//                    } else if answer.contains(inputDigits[i]){
//                        ball += 1
//                    }
//                }
//                
//                if strike == 3 {
//                    print("축하합니다! 정답입니다")
//                    answer = makeAnswer()
//                    break
//                } else if strike == 0 && ball == 0 {
//                    print("Nothing")
//                } else {
//                    print ("\(strike)스트라이크, \(ball)볼")
//                }
//                attempts += 1
//                print("시도 횟수 : \(attempts)")
//            }
//        }
//    }
//    func makeAnswer() -> [Int] {
//        var array: Set<Int> = []
//        array.insert(Int.random(in: 1...9))
//        while array.count < 3{
//            array.insert(Int.random(in: 0...9))
//        }
//        let finalAnswer = Array(array)
//        
//        return finalAnswer
//    }
//}

// level 5,6
class BaseballGame {
    func start() {
        let answer = makeAnswer()
        let intAnswer = answer[0]*100 + answer[1]*10 + answer[2]
        var isPlaying = true
        var trialCount = 0
        var trialCountPerGame: [Int] = []
        while isPlaying {
            print("""
환영합니다! 원하시는 번호를 입력해주세요
1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
""")
            guard let input = readLine(), let chooseGame = Int(input) else {
                print("숫자를 입력하세요")
                continue
            }
            switch chooseGame {
            case 1:
                print("게임이 시작되었습니다. 정답은 \(intAnswer) 입니다 \n")
                let trialCount = playGame()
                trialCountPerGame.append(trialCount)
            case 2:
                print("\n 게임 기록 보기 ")
                for (index, trialCount) in trialCountPerGame.enumerated() {
                   print("\(index+1)번째 게임 : 시도 횟수 - \(trialCount) \n" )
                }
            case 3:
                print("게임을 종료합니다.")
                isPlaying = false
            default:
                print("1,2,3 중 숫자를 입력해 주세요")
            }
        }
        func playGame() -> Int{
            while true {
                var strike = 0
                var ball = 0
                //            정수가 아닌 경우
                guard let input = readLine(),
                      let intUserAnswer = Int(input) else {
                    print("정수를 입력해 주세요")
                    continue
                }
                //            3자리 정수가 아닌 경우
                if intUserAnswer > 999 || intUserAnswer < 100 {
                    print("3자리 정수를 입력하세요")
                    continue
                }
                let inputDigits = [intUserAnswer / 100, (intUserAnswer / 10) % 10, intUserAnswer % 10]
                
                //            0이 들어가는 상황
                if inputDigits.contains(0)  {
                    print("올바르지 않은 입력값입니다")
                    continue
                }
                let uniqueDigit = Set(inputDigits)
                //             같은 수가 2번 반복
                if uniqueDigit.count != 3 {
                    print("중복되는 숫자입니다")
                    continue
                }
                for i in 0...2{
                    if inputDigits[i] == answer[i] {
                        strike += 1
                    } else if answer.contains(inputDigits[i]){
                        ball += 1
                    }
                }
                if strike == 3 {
                    print("축하합니다! 정답입니다 \n")
                    return trialCount
                } else if strike == 0 && ball == 0 {
                    print("Nothing")
                } else {
                    print ("\(strike)스트라이크, \(ball)볼 \n")
                }
                trialCount += 1
            }
        }
    }
    func makeAnswer() -> [Int] {
        var array: Set<Int> = []
        array.insert(Int.random(in: 1...9))
        while array.count < 3{
            array.insert(Int.random(in: 0...9))
        }
        let finalAnswer = Array(array)
        return finalAnswer
    }
}
