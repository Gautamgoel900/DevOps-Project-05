<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful | DevOps Learning</title>
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
            background: radial-gradient(circle, #2cb67d, #7f5af0);
            top: -100px;
            right: -100px;
        }
        body::after {
            width: 350px;
            height: 350px;
            background: radial-gradient(circle, #7f5af0, #e53170);
            bottom: -80px;
            left: -80px;
            animation-delay: 4s;
        }

        @keyframes floatOrb {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(60px, 40px) scale(1.15); }
        }

        .particle {
            position: fixed;
            width: 4px;
            height: 4px;
            background: rgba(44, 182, 125, 0.5);
            border-radius: 50%;
            animation: rise linear infinite;
            z-index: 0;
        }
        .particle:nth-child(1) { left: 15%; animation-duration: 11s; }
        .particle:nth-child(2) { left: 35%; animation-duration: 13s; animation-delay: 1s; background: rgba(127,90,240,0.4); }
        .particle:nth-child(3) { left: 55%; animation-duration: 10s; animation-delay: 3s; }
        .particle:nth-child(4) { left: 75%; animation-duration: 14s; animation-delay: 2s; background: rgba(229,49,112,0.3); }
        .particle:nth-child(5) { left: 90%; animation-duration: 12s; animation-delay: 4s; }

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

        .card {
            width: 100%;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 24px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            padding: 48px 40px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3), inset 0 1px 0 rgba(255, 255, 255, 0.1);
            text-align: center;
            animation: fadeInUp 0.6s ease-out;
        }

        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .success-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, #2cb67d, #7f5af0);
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            margin-bottom: 20px;
            animation: bounceIn 0.8s ease-out;
            box-shadow: 0 6px 25px rgba(44, 182, 125, 0.4);
        }

        @keyframes bounceIn {
            0% { transform: scale(0); }
            50% { transform: scale(1.2); }
            70% { transform: scale(0.9); }
            100% { transform: scale(1); }
        }

        .card h1 {
            font-size: 28px;
            font-weight: 700;
            color: #ffffff;
            margin-bottom: 8px;
            letter-spacing: -0.5px;
        }
        .card .subtitle {
            color: rgba(255, 255, 255, 0.5);
            font-size: 15px;
            margin-bottom: 12px;
        }

        /* Greeting from Backend */
        .greeting-message {
            background: linear-gradient(135deg, rgba(127,90,240,0.15), rgba(44,182,125,0.15));
            border: 1px solid rgba(127,90,240,0.25);
            border-radius: 14px;
            padding: 16px 24px;
            margin-bottom: 28px;
            animation: fadeInUp 0.6s ease-out 0.2s both;
        }
        .greeting-message p {
            color: #c4b5fd;
            font-size: 16px;
            font-weight: 500;
        }
        .greeting-message .backend-tag {
            display: inline-block;
            background: rgba(44,182,125,0.2);
            border: 1px solid rgba(44,182,125,0.3);
            color: #2cb67d;
            padding: 3px 10px;
            border-radius: 8px;
            font-size: 10px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-top: 8px;
        }

        .user-details {
            text-align: left;
            margin-bottom: 28px;
        }
        .detail-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 18px;
            background: rgba(255, 255, 255, 0.04);
            border-radius: 12px;
            margin-bottom: 10px;
            border: 1px solid rgba(255, 255, 255, 0.06);
            transition: background 0.3s ease;
        }
        .detail-row:hover {
            background: rgba(127, 90, 240, 0.08);
        }
        .detail-label {
            color: rgba(255, 255, 255, 0.4);
            font-size: 13px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .detail-value {
            color: #ffffff;
            font-size: 15px;
            font-weight: 500;
        }

        .btn-home {
            display: inline-block;
            padding: 16px 40px;
            border: none;
            border-radius: 14px;
            background: linear-gradient(135deg, #7f5af0, #2cb67d);
            color: #ffffff;
            font-family: 'Inter', sans-serif;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.4s ease;
            text-decoration: none;
            position: relative;
            overflow: hidden;
        }
        .btn-home::before {
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
        .btn-home:hover::before { left: 0; }
        .btn-home span { position: relative; z-index: 1; }
        .btn-home:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(127, 90, 240, 0.4);
        }

        .banner {
            width: 100%;
            background: rgba(255, 255, 255, 0.04);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 16px;
            padding: 20px 28px;
            text-align: center;
            animation: fadeInUp 0.6s ease-out 0.3s both;
        }
        .banner p {
            color: rgba(255, 255, 255, 0.6);
            font-size: 14px;
            line-height: 1.6;
        }
        .banner .highlight {
            color: #2cb67d;
            font-weight: 600;
        }

        /* Architecture info */
        .arch-info {
            margin-top: 16px;
            padding-top: 16px;
            border-top: 1px solid rgba(255,255,255,0.08);
        }
        .arch-info .flow {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            flex-wrap: wrap;
        }
        .arch-info .flow-item {
            background: rgba(127, 90, 240, 0.12);
            border: 1px solid rgba(127, 90, 240, 0.2);
            color: #c4b5fd;
            padding: 4px 12px;
            border-radius: 8px;
            font-size: 11px;
            font-weight: 500;
        }
        .arch-info .flow-arrow {
            color: rgba(255,255,255,0.3);
            font-size: 12px;
        }

        @media (max-width: 540px) {
            .card { padding: 36px 24px; }
            .card h1 { font-size: 24px; }
            .detail-row { flex-direction: column; align-items: flex-start; gap: 4px; }
        }
    </style>
</head>
<body>

    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>

    <%
        // Get data from RegisterServlet (request attributes)
        String userName = (String) request.getAttribute("userName");
        String userEmail = (String) request.getAttribute("userEmail");
        String userMobile = (String) request.getAttribute("userMobile");
        String greeting = (String) request.getAttribute("greeting");

        // Fallback for direct access (without servlet)
        if (userName == null) userName = request.getParameter("Name") != null ? request.getParameter("Name") : "Guest";
        if (userEmail == null) userEmail = request.getParameter("email") != null ? request.getParameter("email") : "N/A";
        if (userMobile == null) userMobile = request.getParameter("mobile") != null ? request.getParameter("mobile") : "N/A";
        if (greeting == null) greeting = "Welcome!";
    %>

    <div class="main-wrapper">

        <div class="card">
            <div class="success-icon">&#10003;</div>

            <h1>Registration Successful!</h1>
            <p class="subtitle">Welcome to DevOps Learning Platform</p>

            <!-- Greeting from Backend (Greeter.java) -->
            <div class="greeting-message">
                <p>&#128640; <%= greeting %></p>
                <span class="backend-tag">&#9881; Powered by Greeter.java (Server Module)</span>
            </div>

            <div class="user-details">
                <div class="detail-row">
                    <span class="detail-label">&#128100; Name</span>
                    <span class="detail-value"><%= userName %></span>
                </div>
                <div class="detail-row">
                    <span class="detail-label">&#128222; Mobile</span>
                    <span class="detail-value"><%= userMobile %></span>
                </div>
                <div class="detail-row">
                    <span class="detail-label">&#9993; Email</span>
                    <span class="detail-value"><%= userEmail %></span>
                </div>
            </div>

            <a href="index.jsp" class="btn-home">
                <span>&#8592; Back to Home</span>
            </a>
        </div>

        <div class="banner">
            <p>&#127881; You're all set! Start your <span class="highlight">DevOps journey</span> with CI/CD today.</p>

            <div class="arch-info">
                <div class="flow">
                    <span class="flow-item">index.jsp</span>
                    <span class="flow-arrow">&#10132;</span>
                    <span class="flow-item">RegisterServlet</span>
                    <span class="flow-arrow">&#10132;</span>
                    <span class="flow-item">Greeter.java</span>
                    <span class="flow-arrow">&#10132;</span>
                    <span class="flow-item">success.jsp</span>
                </div>
            </div>
        </div>

    </div>

</body>
</html>
