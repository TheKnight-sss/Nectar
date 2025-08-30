String? passwordValidation(String? password) {
  if (password == null || password.isEmpty) {
    return "Password is required";
  }
  return null;
}
