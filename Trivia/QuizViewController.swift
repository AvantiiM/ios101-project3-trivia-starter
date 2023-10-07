import UIKit




class QuizViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    var questions: [Question] = []
    var currentQuestionIndex = 0
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        loadQuestions()
        updateUI()
    }

    func loadQuestions() {
        questions = [
            Question(question: "What is the capital of France?",
                     answers: ["Madrid", "Berlin", "Paris", "Rome"],
                     correctAnswerIndex: 2),
            Question(question: "Which planet is known as the Red Planet?",
                     answers: ["Earth", "Mars", "Venus", "Jupiter"],
                     correctAnswerIndex: 1),
            // Add more questions
        ]
    }

    func updateUI() {
        let currentQuestion = questions[currentQuestionIndex]
        questionLabel.text = currentQuestion.question

        for (index, button) in answerButtons.enumerated() {
            button.setTitle(currentQuestion.answers[index], for: .normal)
        }
    }

    @IBAction func answerButtonTapped(_ sender: UIButton) {
        let currentQuestion = questions[currentQuestionIndex]
        if sender.currentTitle == currentQuestion.answers[currentQuestion.correctAnswerIndex] {
            // User selected the correct answer
            score += 1
        }

        // Move to the next question or end the quiz
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            updateUI()
        } else {
            showQuizResults()
        }
    }

    func showQuizResults() {
        let alert = UIAlertController(title: "Quiz Complete", message: "Your Score: \(score)/\(questions.count)", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Restart Quiz", style: .default) { [weak self] _ in
            self?.restartQuiz()
        }
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
    }

    func restartQuiz() {
        currentQuestionIndex = 0
        score = 0
        updateUI()
    }
}
