String? addressValidation(String? address) {
  if (address == null || address.isEmpty) {
    return "Address is required";
  }

  if (address.length < 5) {
    return "Address must be at least 5 characters long";
  }
  return null;
}
