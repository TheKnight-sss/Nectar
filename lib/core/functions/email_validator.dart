String? emailValidation(String? email) {
  if (email == null || email.isEmpty) {
    return "Email is required";
  }

  // simple email format check
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
    return "Enter a valid email";
  }

  return null; // valid
}