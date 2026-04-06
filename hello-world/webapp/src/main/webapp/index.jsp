<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Register for DevOps Learning - Master CI/CD, Docker, Jenkins, and more">
    <title>DevOps Learning | Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            overflow: hidden;
            position: relative;
        }

        /* Animated background orbs */
        body::before, body::after {
            content: '';
            position: fixed;
            border-radius: 50%;
            filter: blur(80px);
            opacity: 0.4;
            z-index: 0;
            animation: floatOrb 8s ease-in-out infinite alternate;
        }
        body::before {
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, #7f5af0, #2cb67d);
            top: -100px;
            left: -100px;
        }
        body::after {
            width: 350px;
            height: 350px;
            background: radial-gradient(circle, #e53170, #f77f00);
            bottom: -80px;
            right: -80px;
            animation-delay: 4s;
        }

        @keyframes floatOrb {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(60px, 40px) scale(1.15); }
        }

        /* Floating particles */
        .particle {
            position: fixed;
            width: 4px;
            height: 4px;
            background: rgba(127, 90, 240, 0.5);
            border-radius: 50%;
            animation: rise linear infinite;
            z-index: 0;
        }
        .particle:nth-child(1) { left: 10%; animation-duration: 12s; animation-delay: 0s; width: 3px; height: 3px; }
        .particle:nth-child(2) { left: 25%; animation-duration: 10s; animation-delay: 2s; width: 5px; height: 5px; background: rgba(44,182,125,0.4); }
        .particle:nth-child(3) { left: 45%; animation-duration: 14s; animation-delay: 1s; }
        .particle:nth-child(4) { left: 65%; animation-duration: 11s; animation-delay: 3s; width: 6px; height: 6px; background: rgba(229,49,112,0.3); }
        .particle:nth-child(5) { left: 80%; animation-duration: 13s; animation-delay: 0.5s; width: 3px; height: 3px; }
        .particle:nth-child(6) { left: 90%; animation-duration: 9s; animation-delay: 4s; background: rgba(247,127,0,0.3); }

        @keyframes rise {
            0% { bottom: -10px; opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { bottom: 110vh; opacity: 0; }
        }

        .main-wrapper {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 24px;
            padding: 20px;
            width: 100%;
            max-width: 520px;
        }

        /* Glassmorphism Card */
        .card {
            width: 100%;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 24px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            padding: 48px 40px;
            box-shadow:
                0 8px 32px rgba(0, 0, 0, 0.3),
                inset 0 1px 0 rgba(255, 255, 255, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-4px);
            box-shadow:
                0 16px 48px rgba(0, 0, 0, 0.4),
                inset 0 1px 0 rgba(255, 255, 255, 0.15);
        }

        /* Logo / Icon */
        .logo {
            text-align: center;
            margin-bottom: 8px;
        }
        .logo-icon {
            width: 64px;
            height: 64px;
            background: linear-gradient(135deg, #7f5af0, #2cb67d);
            border-radius: 16px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            margin-bottom: 12px;
            box-shadow: 0 4px 20px rgba(127, 90, 240, 0.4);
            animation: pulse 3s ease-in-out infinite;
        }
        @keyframes pulse {
            0%, 100% { box-shadow: 0 4px 20px rgba(127, 90, 240, 0.4); }
            50% { box-shadow: 0 4px 30px rgba(127, 90, 240, 0.7); }
        }

        .card h1 {
            font-size: 26px;
            font-weight: 700;
            color: #ffffff;
            text-align: center;
            margin-bottom: 6px;
            letter-spacing: -0.5px;
        }
        .card .subtitle {
            text-align: center;
            color: rgba(255, 255, 255, 0.5);
            font-size: 14px;
            font-weight: 400;
            margin-bottom: 32px;
        }

        /* Form Fields */
        .form-group {
            position: relative;
            margin-bottom: 22px;
        }
        .form-group .icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 16px;
            color: rgba(255, 255, 255, 0.3);
            transition: color 0.3s ease;
            pointer-events: none;
        }
        .form-group input {
            width: 100%;
            padding: 16px 16px 16px 46px;
            background: rgba(255, 255, 255, 0.06);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 14px;
            color: #ffffff;
            font-family: 'Inter', sans-serif;
            font-size: 15px;
            font-weight: 400;
            outline: none;
            transition: all 0.3s ease;
        }
        .form-group input::placeholder {
            color: rgba(255, 255, 255, 0.3);
        }
        .form-group input:focus {
            border-color: #7f5af0;
            background: rgba(127, 90, 240, 0.08);
            box-shadow: 0 0 0 3px rgba(127, 90, 240, 0.15);
        }
        .form-group input:focus ~ .icon {
            color: #7f5af0;
        }

        /* Row for two fields */
        .form-row {
            display: flex;
            gap: 14px;
        }
        .form-row .form-group {
            flex: 1;
        }

        /* Submit Button */
        .btn-register {
            width: 100%;
            padding: 16px;
            border: none;
            border-radius: 14px;
            background: linear-gradient(135deg, #7f5af0, #2cb67d);
            color: #ffffff;
            font-family: 'Inter', sans-serif;
            font-size: 16px;
            font-weight: 600;
            letter-spacing: 0.5px;
            cursor: pointer;
            margin-top: 8px;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }
        .btn-register::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, #2cb67d, #7f5af0);
            transition: left 0.4s ease;
            z-index: 0;
        }
        .btn-register:hover::before {
            left: 0;
        }
        .btn-register span {
            position: relative;
            z-index: 1;
        }
        .btn-register:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(127, 90, 240, 0.4);
        }
        .btn-register:active {
            transform: translateY(0);
        }

        /* Divider */
        .divider {
            display: flex;
            align-items: center;
            margin: 20px 0;
            gap: 12px;
        }
        .divider::before, .divider::after {
            content: '';
            flex: 1;
            height: 1px;
            background: rgba(255,255,255,0.1);
        }
        .divider span {
            color: rgba(255,255,255,0.3);
            font-size: 12px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Terms and Sign in */
        .terms {
            text-align: center;
            color: rgba(255, 255, 255, 0.4);
            font-size: 13px;
            margin-top: 20px;
            line-height: 1.6;
        }
        .terms a {
            color: #7f5af0;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        .terms a:hover {
            color: #2cb67d;
        }

        .signin-link {
            text-align: center;
            color: rgba(255, 255, 255, 0.4);
            font-size: 14px;
        }
        .signin-link a {
            color: #7f5af0;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        .signin-link a:hover {
            color: #2cb67d;
            text-decoration: underline;
        }

        /* Bottom banner */
        .banner {
            width: 100%;
            background: rgba(255, 255, 255, 0.04);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 16px;
            padding: 20px 28px;
            text-align: center;
        }
        .banner p {
            color: rgba(255, 255, 255, 0.6);
            font-size: 14px;
            font-weight: 400;
            line-height: 1.5;
        }
        .banner .highlight {
            color: #2cb67d;
            font-weight: 600;
        }
        .banner .tech-stack {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 12px;
            flex-wrap: wrap;
        }
        .banner .tech-badge {
            background: rgba(127, 90, 240, 0.15);
            border: 1px solid rgba(127, 90, 240, 0.25);
            color: #c4b5fd;
            padding: 5px 14px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        .banner .tech-badge:hover {
            background: rgba(127, 90, 240, 0.3);
            transform: translateY(-2px);
        }

        /* Responsive */
        @media (max-width: 540px) {
            .card { padding: 36px 24px; }
            .card h1 { font-size: 22px; }
            .form-row { flex-direction: column; gap: 0; }
        }
    </style>
</head>
<body>

    <!-- Floating Particles -->
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>

    <div class="main-wrapper">

        <!-- Registration Card -->
        <div class="card">
            <div class="logo">
                <div class="logo-icon">&#9881;</div>
            </div>

            <h1>Join DevOps Learning</h1>
            <p class="subtitle">Create your account and start mastering CI/CD</p>

            <form action="register" method="post" id="registerForm">

                <div class="form-group">
                    <input type="text" placeholder="Full Name" name="Name" id="Name" required autocomplete="name">
                    <span class="icon">&#128100;</span>
                </div>

                <div class="form-group">
                    <input type="tel" placeholder="Mobile Number" name="mobile" id="mobile" required autocomplete="tel">
                    <span class="icon">&#128222;</span>
                </div>

                <div class="form-group">
                    <input type="email" placeholder="Email Address" name="email" id="email" required autocomplete="email">
                    <span class="icon">&#9993;</span>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <input type="password" placeholder="Password" name="psw" id="psw" required autocomplete="new-password">
                        <span class="icon">&#128274;</span>
                    </div>
                    <div class="form-group">
                        <input type="password" placeholder="Confirm Password" name="psw-repeat" id="psw-repeat" required autocomplete="new-password">
                        <span class="icon">&#128273;</span>
                    </div>
                </div>

                <button type="submit" class="btn-register" id="registerBtn">
                    <span>Create Account &#10132;</span>
                </button>

                <p class="terms">
                    By registering, you agree to our <a href="#">Terms of Service</a> & <a href="#">Privacy Policy</a>
                </p>

                <div class="divider"><span>or</span></div>

                <p class="signin-link">
                    Already have an account? <a href="#">Sign in</a>
                </p>
            </form>
        </div>

        <!-- Bottom Banner -->
        <div class="banner">
            <p>&#127775; <span class="highlight">Automate Everything</span> &mdash; Deploy using Jenkins, Docker & AWS</p>
            <div class="tech-stack">
                <span class="tech-badge">Jenkins</span>
                <span class="tech-badge">Docker</span>
                <span class="tech-badge">AWS EC2</span>
                <span class="tech-badge">Maven</span>
                <span class="tech-badge">GitHub</span>
                <span class="tech-badge">Tomcat</span>
            </div>
        </div>

    </div>

</body>
</html>
