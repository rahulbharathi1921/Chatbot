class RuleBasedService  {
  final Map<String, String> _responses = {
    "hello": "Hi there! 👋",
    "how are you": "I'm doing great! How about you?",
    "bye": "Goodbye! 👋",
    "who are you": "I'm your friendly chatbot 🤖",
    "thanks": "You're welcome! 😊",
  };

  String getResponse(String userInput) {
    String cleanedInput = userInput.toLowerCase().trim();
    return _responses[cleanedInput] ?? "Sorry, I don't understand that yet 🤖";
  }
}
