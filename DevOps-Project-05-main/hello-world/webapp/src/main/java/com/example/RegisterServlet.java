package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * RegisterServlet handles user registration form submissions.
 * It uses the Greeter class from the server module to process registrations.
 */
public class RegisterServlet extends HttpServlet {

    private Greeter greeter;

    @Override
    public void init() throws ServletException {
        super.init();
        greeter = new Greeter();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String name = request.getParameter("Name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        String confirmPassword = request.getParameter("psw-repeat");

        // Validate fields using Greeter's validation methods
        StringBuilder errors = new StringBuilder();

        if (!greeter.isValidField(name)) {
            errors.append("Name is required. ");
        }
        if (!greeter.isValidMobile(mobile)) {
            errors.append("Valid mobile number is required. ");
        }
        if (!greeter.isValidEmail(email)) {
            errors.append("Valid email is required. ");
        }
        if (!greeter.isValidField(password)) {
            errors.append("Password is required. ");
        }
        if (password != null && !password.equals(confirmPassword)) {
            errors.append("Passwords do not match. ");
        }

        if (errors.length() > 0) {
            // Validation failed — forward back to form with error message
            request.setAttribute("errorMessage", errors.toString());
            request.setAttribute("userName", name);
            request.setAttribute("userMobile", mobile);
            request.setAttribute("userEmail", email);
            request.getRequestDispatcher("index.jsp").forward(request, response);
            return;
        }

        // Register user using the Greeter service from server module
        Greeter.User user = greeter.registerUser(name, email, mobile);

        // Set attributes for the success page
        request.setAttribute("user", user);
        request.setAttribute("greeting", user.getGreeting());
        request.setAttribute("userName", user.getName());
        request.setAttribute("userEmail", user.getEmail());
        request.setAttribute("userMobile", user.getMobile());

        // Forward to success page
        request.getRequestDispatcher("success.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect GET requests to the registration form
        response.sendRedirect("index.jsp");
    }
}
