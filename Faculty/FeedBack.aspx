﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMain.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="ChatRoom.Faculty.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
#ContentPlaceHolder1_txtMsg
{
    Resize:none;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="cl-wrapper" class="login-container">
        <div class="middle-login">
            <div class="block-flat">
                <div class="header">
                    <h3 class="text-center">
                        <img class="logo-img" src="../images/logo.png" alt="logo" />Chat Room</h3>
                </div>
                <div style="margin-bottom: 0px !important;" class="form-horizontal">
                    <div class="content">
                        <h4 class="title">
                            Submit Feedback Here</h4>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <asp:TextBox ID="txtUName" runat="server" class="form-control" required placeholder="User Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <asp:TextBox ID="txtMsg" runat="server" class="form-control" TextMode="MultiLine" 
                                        required placeholder="Please Type Your Valuable Feedback"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="foot">
                        <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-primary"
                            data-dismiss="modal"  />
                    </div>
                </div>
            </div>
            <div class="text-center out-links">
                <a href="#">&copy; 2014 Chat Room</a></div>
        </div>
    </div>
</asp:Content>
