<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultpage.aspx.cs" Inherits="OnlineTest.Resultpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        .portlet-content {
            padding: 22px 15px;
            background: #FFF;
            -webkit-border-radius: 4px;
            -webkit-background-clip: padding-box;
            -moz-border-radius: 4px;
            -moz-background-clip: padding;
            border-radius: 4px;
            background-clip: padding-box;
        }

        .portlet {
            border: 1px solid #D5D5D5;
            -webkit-border-radius: 4px;
            -webkit-background-clip: padding-box;
            -moz-border-radius: 4px;
            -moz-background-clip: padding;
            border-radius: 4px;
            background-clip: padding-box;
            position: relative;
            clear: both;
            width: auto;
            margin-bottom: 2em;
            margin-top: 75px;
        }

        .btn-Continue-click {
            padding: 15px 25px;
            font-size: 24px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #339966;
            text-align: center;
                margin: 0 auto;
                display: block !important;
        }

            .btn-Continue-click:hover {
                background-color: #3e8e41;
            }

            .btn-Continue-click:active {
                background-color: #3e8e41;
                box-shadow: 0 5px #666;
                box-shadow: 0 9px #669999;
            }
    </style>
    <title>Daily Walkins Test</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/style_instruction.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body style="background-color: #f2f2f2">
    <div class="container">
        <div class="portlet">
            <div class="portlet-content">
                <div id="header-sticky-wrapper" class="sticky-wrapper" style="height: 89px;">
                    <header id="header" style="">

                        <div class="wrapper row-2">
                            <div class="container-height container-nav">
                                <div class="logo logo-img text-left container-nav">
                                    <a href="/" style="background-image: url(images/DW-logo-img.png);"></a>
                                </div>
                            </div>
                        </div>
                    </header>

                </div>
                <div class="">
                    <h2 style="color: green; font-weight: bold">Score Card : </h2>

                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr style="background-color: #008bca; color: #fff">
                                <th>Section</th>
                                <th>Total Questions</th>
                                <th>Answered</th>
                                <th>Correct</th>
                                <th>Incorrect</th>
                                <th>Marks Obtained</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Logical Questions</td>
                                <td>10</td>
                                <td>
                                    <asp:Label ID="lblLgclAnswered" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblLgclCorrect" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblLgclLeft" runat="server"></asp:Label></td>

                                <td>
                                    <asp:Label ID="lblLgclMarks" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Analytical Questions</td>
                                <td>10</td>
                                <td>
                                    <asp:Label ID="lblAnlAnswered" runat="server"></asp:Label></td>

                                <td>
                                    <asp:Label ID="lblAnlCorrect" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblAnlLeft" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblAnlMarks" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Non-Verbal Questions</td>
                                <td>10</td>
                                <td>
                                    <asp:Label ID="lblNonVerAnswered" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNonVerCorrect" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNonVerLeft" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNonVerMarks" runat="server"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr style="background-color: #008bca; color: #fff">
                                <th style="width: 540px;">Total Marks</th>
                                <th>Result</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblMarks"></asp:Label></td>
                                <td style="color: green; font-weight: bold;"><asp:Label runat="server" ID="lblResult"></asp:Label></td>
                            </tr>

                        </tbody>

                    </table>
                    <div class="">
                        <%-- <Button ID="btnsc" runat="server" Text="Download" Class="btn btn-danger btn-sm" OnClientClick="return saveAndContinue();"><i class="fa fa-download"></i>&nbsp; Download</Button>--%>
                        <button type="button" id="btnbm" runat="server" class="btn btn-success btn-sm btn-Continue-click"
                            onclick="return bookMark();">
                            <i class="fa fa-envelope"></i>&nbsp;Send Me Email</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
