import UIKit

struct Question {
    let questionText: String
    let answers: [String]
    let correctAnswerIndex: Int
}


class MyViewController: UIViewController {
    
    var questions: [Question] = [
        Question(questionText: "What is the capital of France?", answers: ["Paris", "London", "Berlin", "Madrid"], correctAnswerIndex: 0),
        Question(questionText: "How many planets are there in our solar system?", answers: ["5", "9", "7", "8"], correctAnswerIndex: 3),
        Question(questionText: "Who wrote the play 'Romeo and Juliet'", answers: ["Edgar Allan Poe", "William Shakespeare", "Agatha Christie", "Stephen King"], correctAnswerIndex: 1),
        // Add more questions here
    ]
    
    var currentQuestionIndex = 0 // Keep track of the current question
    var questionsAnsweredCount = 0
    
    
    
    @IBAction func answerButton1(_ sender: UIButton) {
        // Handle user's answer and move to the next question
        currentQuestionIndex += 1 // Move to the next question
        questionsAnsweredCount += 1
        
        if questionsAnsweredCount >= 3 {
            // Stop the game or show a completion message
        } else if currentQuestionIndex < questions.count {
        }
    }
    
    
    @IBAction func answerButton2(_ sender: UIButton) {
        // Handle user's answer and move to the next question
        currentQuestionIndex += 1 // Move to the next question
        questionsAnsweredCount += 1
        
        if questionsAnsweredCount >= 3 {
            // Stop the game or show a completion message
        } else if currentQuestionIndex < questions.count {
        }
    }
    
    
    @IBAction func answerButton3(_ sender: UIButton) {
        // Handle user's answer and move to the next question
        currentQuestionIndex += 1 // Move to the next question
        questionsAnsweredCount += 1
        
        if questionsAnsweredCount >= 3 {
            // Stop the game or show a completion message
        } else if currentQuestionIndex < questions.count {
        }
    }
    
    
    @IBAction func answerButton4(_ sender: UIButton) {
        // Handle user's answer and move to the next question
        currentQuestionIndex += 1 // Move to the next question
        questionsAnsweredCount += 1
        
        if questionsAnsweredCount >= 3 {
            // Stop the game or show a completion message
        } else if currentQuestionIndex < questions.count {
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the UI with the first question when the view loads
        //        updateUI()
    }
    
}
