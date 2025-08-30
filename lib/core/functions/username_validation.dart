String? usernamevalidation(String? username) {
  if (username == null || username.isEmpty) {
    return "UserName is required";
  }
  return null;
}
