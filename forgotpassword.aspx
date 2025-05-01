<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="WebApplication5.forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .forgot-wrapper {
            min-height: 85vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(to right, #f0f4f8, #e0f7fa);
        }

        .forgot-card {
            display: flex;
            flex-direction: row;
            background-color: #ffffff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            max-width: 850px;
            width: 100%;
        }

        .forgot-image {
            background: url('images/forgot-password.png') center center no-repeat;
            background-size: cover;
            flex: 1;
            min-height: 350px;
        }

        .forgot-form {
            flex: 1;
            padding: 40px 30px;
        }

        .forgot-form h3 {
            color: #007bff;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .forgot-form p {
            font-size: 0.95rem;
            color: #555;
            margin-bottom: 25px;
        }

        .form-control {
            border-radius: 10px;
        }

        .btn-primary {
            border-radius: 10px;
            padding: 10px;
            font-weight: 600;
        }

        .text-link {
            font-size: 0.9rem;
            color: #007bff;
            text-decoration: none;
        }

        .text-link:hover {
            text-decoration: underline;
        }

        .alert-message {
            font-size: 0.95rem;
            font-weight: 500;
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .forgot-card {
                flex-direction: column;
            }

            .forgot-image {
                height: 200px;
            }
        }
    </style>

    <div class="forgot-wrapper">
        <div class="forgot-card">
            <div class="forgot-image"></div>
            <div class="forgot-form">
                <h3>Forgot Password?</h3>
                <p>Don’t worry, it happens. Enter your email and we’ll help you reset it.</p>

                <asp:Label ID="lblMessage" runat="server" CssClass="d-block alert-message text-center"></asp:Label>

                <div class="mb-3">
                    <label for="txtEmail" class="form-label">Email address</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="you@example.com" />
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Send Reset Link" CssClass="btn btn-primary w-100 mb-3" OnClick="btnSubmit_Click" />

                <div class="text-center">
                    <a href="login.aspx" class="text-link">← Back to Login</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
