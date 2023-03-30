//
//  ViewController.swift
//  question
//
//  Created by MacbookPro on 2022/12/26.
//

//畫面加UIKit
import UIKit

class ViewController: UIViewController {
    
    //拉第幾題outlet為questionNumberlabel，，型別為UILabel
    @IBOutlet weak var questionNumberlabel: UILabel!
    //拉問題outlet為questionLabel，，型別為UILabel
    @IBOutlet weak var questionLabel: UILabel!
    //拉答案outlet為answerLabel，，型別為UILabel
    @IBOutlet weak var answerLabel: UILabel!
    //questions需寫在function外面
    //產生空的array&加東⻄加到array裡，宣告questions成Controller的屬性，讓大家都讀得到
    var questions = [Question]()
    //設變數數列為0
    var index = 0


    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //產生空的array，加東⻄加到array裡。
        //由於已經用struct設定類別Question，因此可以讓之後產生東西時，直接使用類別裡的屬性
        let questions1 = Question(description: "あ" , answer: "ア")
        //在程式裡命令東⻄做事:  東⻄的名字 + . + function 名 + (參數)
        //顯示questions1的內容。屬性append可為array加東西
        questions.append(questions1)
        
        let questions2 = Question(description: "い" , answer: "イ")
        questions.append(questions2)
        
        let questions3 = Question(description: "う" , answer: "ウ")
        questions.append(questions3)
        
        let questions4 = Question(description: "え" , answer: "エ")
        questions.append(questions4)
        
        let questions5 = Question(description: "お" , answer: "オ")
        questions.append(questions5)
        
        //
        
        let questions6 = Question(description: "か" , answer: "カ")
        questions.append(questions6)
        
        let questions7 = Question(description: "き" , answer: "キ")
        questions.append(questions7)
        
        let questions8 = Question(description: "く" , answer: "ク")
        questions.append(questions8)
        
        let questions9 = Question(description: "け" , answer: "ケ")
        questions.append(questions9)
        
        let questions10 = Question(description: "こ" , answer: "コ")
        questions.append(questions10)
        
        //
        
        let questions11 = Question(description: "さ" , answer: "サ")
        questions.append(questions11)
        
        let questions12 = Question(description: "し" , answer: "シ")
        questions.append(questions12)
        
        let questions13 = Question(description: "す" , answer: "ス")
        questions.append(questions13)
        
        let questions14 = Question(description: "せ" , answer: "セ")
        questions.append(questions14)
        
        let questions15 = Question(description: "そ" , answer: "ソ")
        questions.append(questions15)
        
        //
        
        let questions16 = Question(description: "た" , answer: "タ")
        questions.append(questions16)
        
        let questions17 = Question(description: "ち" , answer: "チ")
        questions.append(questions17)
        
        let questions18 = Question(description: "つ" , answer: "ツ")
        questions.append(questions18)
        
        let questions19 = Question(description: "て" , answer: "テ")
        questions.append(questions19)
        
        let questions20 = Question(description: "と" , answer: "ト")
        questions.append(questions20)
        
        //
        
        let questions21 = Question(description: "な" , answer: "ナ")
        questions.append(questions21)
        
        let questions22 = Question(description: "に" , answer: "ニ")
        questions.append(questions22)
        
        let questions23 = Question(description: "ぬ" , answer: "ヌ")
        questions.append(questions23)
        
        let questions24 = Question(description: "ね" , answer: "ネ")
        questions.append(questions24)
        
        let questions25 = Question(description: "の" , answer: "ノ")
        questions.append(questions25)
        
        //
        
        let questions26 = Question(description: "は" , answer: "ハ")
        questions.append(questions26)
        
        let questions27 = Question(description: "ひ" , answer: "ヒ")
        questions.append(questions27)
        
        let questions28 = Question(description: "ふ" , answer: "フ")
        questions.append(questions28)
        
        let questions29 = Question(description: "へ" , answer: "ヘ")
        questions.append(questions29)
        
        let questions30 = Question(description: "ほ" , answer: "ホ")
        questions.append(questions30)
        
        //
        
        let questions31 = Question(description: "ま" , answer: "マ")
        questions.append(questions31)
        
        let questions32 = Question(description: "み" , answer: "ミ")
        questions.append(questions32)
        
        let questions33 = Question(description: "む" , answer: "ム")
        questions.append(questions33)
        
        let questions34 = Question(description: "め" , answer: "メ")
        questions.append(questions34)
        
        let questions35 = Question(description: "も" , answer: "モ")
        questions.append(questions35)
        
        //
        
        let questions36 = Question(description: "や" , answer: "ヤ")
        questions.append(questions36)
        
        let questions37 = Question(description: "ゆ" , answer: "ユ")
        questions.append(questions37)
        
        let questions38 = Question(description: "よ" , answer: "ヨ")
        questions.append(questions38)
        
        let questions39 = Question(description: "ら" , answer: "ラ")
        questions.append(questions39)
        
        let questions40 = Question(description: "り" , answer: "リ")
        questions.append(questions40)
        
        //
        
        let questions41 = Question(description: "る" , answer: "ル")
        questions.append(questions41)
        
        let questions42 = Question(description: "れ" , answer: "レ")
        questions.append(questions42)
        
        let questions43 = Question(description: "ろ" , answer: "ロ")
        questions.append(questions43)
        
        let questions44 = Question(description: "わ" , answer: "ワ")
        questions.append(questions44)
        
        let questions45 = Question(description: "を" , answer: "ヲ")
        questions.append(questions45)
        
        //在程式裡命令東⻄做事:  東⻄的名字 + . + function 名 + (參數)
        //隨機順序出題shuffle
        questions.shuffle()
        //呼叫指令updateUI讓題目更新
        updateUI()
        
        }
    
        //設func為updateUI，讓題目可以更新
        func updateUI() {
            //讓questionLabel顯示出內容，用array寫法按照數列顯示題目
            questionLabel.text = questions[index].description
            //讓questionNumberlabel顯示出內容，顯示為第\(index + 1)題
            //讓數字變字串的方法:\(x)
            questionNumberlabel.text = "第\(index + 1)題"
            //讓answerLabel顯示出內容，為""空字串
            answerLabel.text = ""
        
        }
    
    //
    
    //拉答案的Action為showAnswer，秀答案
    @IBAction func showAnswer(_ sender: Any) {
        ////讓answerLabel顯示出內容，用array寫法按照數列顯示答案
        answerLabel.text = questions[index].answer
    }
    
    //拉下一題的Action為nextQuestion，顯示下一題
    @IBAction func nextQuestion(_ sender: Any) {
        //讓數列為index+1除以全部問題數(questions.count)的餘數
        //%:除的餘數
        //questions.count:全部問題的數量
        index = (index + 1 ) % questions.count
        //呼叫func 更新題目
        updateUI()
    
    
    }
    //拉"重來一次按鈕"的Action，讓app再來一次/重新
    @IBAction func replay(_ sender: Any) {
        //隨機順序出題shuffle
        questions.shuffle()
        //讓數列為0開始
        index = 0
        //呼叫func 更新題目
        updateUI()
        
    }
    
}
