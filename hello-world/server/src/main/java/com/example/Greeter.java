package com.example;

/**
 * Greeter class provides greeting and user registration functionality.
 */
public class Greeter {

  /**
   * This is a constructor.
   */
  public Greeter() {

  }

  /**
   * Returns a greeting message for the given name.
   */
  public String greet(String someone) {
    return String.format("Hello, %s!", someone);
  }

  /**
   * Returns a welcome message for a newly registered user.
   */
  public String welcomeUser(String name) {
    return String.format("Welcome aboard, %s! Your DevOps journey begins now.", name);
  }

  /**
   * Validates that a required field is not null or empty.
   */
  public boolean isValidField(String value) {
    return value != null && !value.trim().isEmpty();
  }

  /**
   * Validates an email address format (basic check).
   */
  public boolean isValidEmail(String email) {
    return email != null && email.contains("@") && email.contains(".");
  }

  /**
   * Validates a mobile number (basic check - should be digits and 10+ chars).
   */
  public boolean isValidMobile(String mobile) {
    if (mobile == null || mobile.trim().isEmpty()) {
      return false;
    }
    String cleaned = mobile.replaceAll("[\\s\\-\\+]", "");
    return cleaned.length() >= 10 && cleaned.matches("\\d+");
  }

  /**
   * Inner class to represent a registered User.
   */
  public static class User {
    private String name;
    private String email;
    private String mobile;
    private String greeting;

    public User(String name, String email, String mobile) {
      this.name = name;
      this.email = email;
      this.mobile = mobile;
    }

    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getMobile() { return mobile; }
    public String getGreeting() { return greeting; }
    public void setGreeting(String greeting) { this.greeting = greeting; }

    @Override
    public String toString() {
      return String.format("User{name='%s', email='%s', mobile='%s'}", name, email, mobile);
    }
  }

  /**
   * Registers a user and returns a User object with a greeting.
   */
  public User registerUser(String name, String email, String mobile) {
    User user = new User(name, email, mobile);
    user.setGreeting(welcomeUser(name));
    return user;
  }
}
