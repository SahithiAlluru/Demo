<%@ Page Language="C#" AutoEventWireup="true" CodeFile="instructionpage.aspx.cs" Inherits="instructionpage" %>

<!DOCTYPE html>
<html>
<head runat="server">

    <title>Daily Walkins Test</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/style_instruction.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>

<body>

    <form runat="server" class="formDirectionTest">
        <div id="header-sticky-wrapper" class="sticky-wrapper" style="height: 89px;">
            <header id="header" style="">

                <div class="wrapper row-2">
                    <div class="container-height container-nav">
                        <div class="logo logo-img text-left container-nav">
                            <a href="/" style="background-image: url(images/DW-logo-img.png);"></a>
                        </div>
                        <div class="">
                            <a class="mobile_1" href="#">
                                <i class="fa fa-bars"></i>
                            </a>
                            <nav class="nav-click">
                                <%-- <ul>
                                <li><a href="/Facility/MyFacilities" ng-class="{activeSmall:part == 'projects'}">FACILITY</a></li>
                                <li><a href="/Walker/Home" ng-class="{activeSmall:part == 'projects'}">WALKER</a></li>
                                <li><a href="/Recruitment/Home" ng-class="{activeSmall:part == 'privacy'}">RECRUITER</a></li>
                            </ul>--%>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>

        </div>

        <table width="1000px" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0px auto;">
            <tr>
                <td>

                    <table border="0" cellpadding="0" cellspacing="0" class="width100Percent">
                        <tr>
                            <td valign="top">
                                <table width="1000px" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td valign="top" align="center" width="100%">
                                            <div id="firstpage">
                                                <div style="display: none;"></div>
                                                <table width="1024">
                                                    <tr>
                                                        <td align="center">
                                                            <table width="100%" border="0">
                                                                <tr>
                                                                    <td width="16%" align="center" class="blue_bg"><strong>Test Name</strong></td>
                                                                    <td width="16%" align="center" class="light_bg">Daily Walkins Test</td>
                                                                    <td width="16%" align="center" class="blue_bg"><strong>Total
Questions</strong></td>
                                                                    <td width="16%" align="center" class="light_bg">30<div>
                                                                    </div>
                                                                    </td>
                                                                    <td width="16%" align="center" class="blue_bg"><strong>Total Time</strong></td>
                                                                    <td width="20%" align="center" class="light_bg">60 Minutes<div
                                                                        id="test_time">
                                                                    </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div style="height: 10px;"></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%" align="center" class="blue_bg"><strong>Section
Name</strong></td>
                                                                    <td width="20%" align="center" class="blue_bg"><strong>No. of
Questions</strong></td>
                                                                    <td width="20%" align="center" class="blue_bg"><strong>Time limit</strong></td>
                                                                    <td width="20%" align="center" class="blue_bg"><strong>Marks per
Question</strong></td>
                                                                    <td width="20%" align="center" class="blue_bg"><strong>Negative
Marking</strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%" align="center" class="blue_bg">Logical</td>
                                                                    <td width="20%" align="center" class="light_bg">10</td>
                                                                    <td width="20%" align="center" class="light_bg">0:20(h:m)</td>
                                                                    <td width="20%" align="center" class="blue_bg">2</td>
                                                                    <td width="20%" align="center" class="light_bg">0</td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%" align="center" class="blue_bg">Analytical</td>
                                                                    <td width="20%" align="center" class="light_bg">10</td>
                                                                    <td width="20%" align="center" class="light_bg">0:20(h:m)</td>
                                                                    <td width="20%" align="center" class="blue_bg">2</td>
                                                                    <td width="20%" align="center" class="light_bg">0</td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%" align="center" class="blue_bg">Non-Verbal</td>
                                                                    <td width="20%" align="center" class="light_bg">10</td>
                                                                    <td width="20%" align="center" class="light_bg">0:20(h:m)</td>
                                                                    <td width="20%" align="center" class="blue_bg">2</td>
                                                                    <td width="20%" align="center" class="light_bg">0</td>
                                                                </tr>

                                                            </table>
                                                            <div style="height: 10px;"></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                    <tr align="center" style="align: justify;">
                                                        <div id="wrapper" style="text-align: justify">
                                                            <table>
                                                                <tr>
                                                                    <td width="50%" bgcolor="#d2eaf1" valign="top">
                                                                        <table
                                                                            width="100%" border="0" class="section-1" cellspacing="0">
                                                                            <tr>
                                                                                <td colspan="2"><strong>General Directions:</strong></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <img class="fleft"
                                                                                        src="images/right_icon.jpg" /></td>
                                                                                <td>This test is designed to check your competency in all the
sections.</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <img src="images/right_icon.jpg" alt=""
                                                                                        class="fleft" /></td>
                                                                                <td>You are advised to attend the test with complete
seriousness and environment simulated to match the actual
test conditions.</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <img src="images/right_icon.jpg" alt=""
                                                                                        class="fleft" /></td>
                                                                                <td>You can quit the test at any time by pressing End Test
button & take it later.
While quitting the test you will get the option to start the
test afresh or resume it from saved attempt.</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <img src="images/right_icon.jpg" alt=""
                                                                                        class="fleft" /></td>
                                                                                <td>Press the End Test button once you have finished taking
the test. Once submitted you cannot retake this test.</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <img src="images/right_icon.jpg" alt=""
                                                                                        class="fleft" /></td>
                                                                                <td>On completion of the test, you can view the Score Card. You can dounload your score board and can also ask for an email regarding your result.</td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>


                                                                    <tr>
                                                                        <td align="center">
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <br />
                                                                                    <td width="25%" align="center" class="blue_bg  "><strong>Symbol</strong></td>
                                                                                    <td width="75%" align="center" class="blue_bg"><strong>Meaning</strong></td>

                                                                                </tr>
                                                                                <tr>

                                                                                    <td width="25%" align="center" class="blue_bg blue-bg-img">
                                                                                        <img
                                                                                            src="images/Gray_burned.png" alt="" /></td>
                                                                                    <td width="75%" height="50px;" align="center" class="light_bg">You have not visited the question
yet.</td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="25%" align="center" class="blue_bg blue-bg-img">
                                                                                        <img
                                                                                            src="images/Green.png" alt="" /></td>
                                                                                    <td width="75%" align="center" class="light_bg">You have answered the question.</td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="25%" align="center" class="blue_bg blue-bg-img">
                                                                                        <img
                                                                                            src="images/Red.png" alt="" /></td>
                                                                                    <td width="75%" align="center" class="light_bg">You have skipped the question.</td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="25%" align="center" class="blue_bg blue-bg-img">
                                                                                        <img
                                                                                            src="images/skyblue.jpg" alt="" /></td>
                                                                                    <td width="75%" align="center" class="light_bg">You have/have NOT answered the
question, but have marked the question for review.</td>

                                                                                </tr>






                                                                                <div id="firstpage">
                                                                                    <div style="display: none;"></div>
                                                                                    <table width="1024">
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <table width="80%" border="0">
                                                                                                    <tr>


                                                                                                        <td width="50%" valign="top">
                                                                                                            <table width="100%" border="0"
                                                                                                                class="sectionBankPo" cellspacing="2" cellpadding="0">
                                                                                </div>
                                                                        </td>
                                                                    </tr>
                                                            </table>
                                                        </div>
                                                        <div id="secondPage" style="display: none">
                                                            <div class="onlineTestLeftDiv">
                                                                <div id="cusInstText1" class="giSecondPage">
                                                                    <strong>General Instructions:</strong>
                                                                    <ul class="generalInstructionUl">
                                                                        <li>Total duration of examination is <span id="test_time_new">90</span> minutes.
                                                                        </li>
                                                                        <li>Your clock will be set at the server. The countdown timer at the
top right corner of screen will display the remaining time
available for you to complete the examination. When the timer
reaches zero, the examination will end by itself. You need not
terminate the examination or submit your paper.</li>
                                                                        <li>You are not allowed to use any calculator and any other
computing machine.</li>
                                                                        <li>Click on the question number in the Question Palette to go to
that question directly.</li>
                                                                        <li>Select an answer for a multiple choice type question by clicking
on the bubble placed before the 4 choices in the form of radio
buttons (o).</li>
                                                                        <li>Click on <strong>Save &amp; Next</strong> to save your answer
for the current question and then go to the next question.
                                                                        </li>
                                                                        <li>You may click on <strong>Mark for Review & Next</strong> to save
your answer for the current question and also mark it for review,
and then go to the next question.
                                                                        </li>
                                                                        <p>
                                                                            <strong>Caution:</strong> Note that your answer for the current
question will not be saved, if you navigate to another question
directly by clicking on a question number without saving the answer
to the previous question.
                                                                        </p>
                                                                        <li>To deselect your chosen answer, click on the bubble of the
chosen option again or click on the <strong>Clear Response</strong>
                                                                            button.
                                                                        </li>
                                                                    </ul>
                                                                    <strong>Declaration by the candidate:</strong>
                                                                    <p>
                                                                        "I have read and understood all the above instructions. I have
also read and understood clearly the instructions given on the admit
card and shall follow the same. I also understand that in case I am
found to violate any of these instructions, my candidature is liable
to be cancelled. I also confirm that at the start of the examination
all the computer hardware allotted to me are in proper working
condition.
                                                                    </p>
                                                                    <p>
                                                                        I will not disclose, publish, reproduce, transmit, store, or
facilitate transmission and storage of the contents of the CAT or
any information therein in whole or part thereof in any form or by
any means, verbal or written, electronically or mechanically for any
purpose. I am aware that this shall be in violation of the Indian
Contract Act, 1872 and/or the Copyright Act, 1957 and/or the
Information Technology Act, 2000. I am aware that such actions
and/or abetment thereof as aforementioned may constitute a
cognizable offence punishable with imprisonment for a term up to
three years and fine up to Rs. Two Lakhs. I agree to this
Non-Disclosure Agreement."
                                                                    </p>
                                                                </div>
                                                            </div>
                                                            <div class="onlineTestRightDiv">
                                                                <img src="images/NewCandidateImage.jpg" alt="CandidatImage"
                                                                    class="candidateImagePosition" />
                                                            </div>
                                                        </div>
                                                        <div class="clear"></div>
                                                        <br />
                                                        <div id="instPagination">
                                                            <center>

    <input type="submit"
style="width: 132px; height: 32px; cursor: pointer;&amp;quot;"
value="Start Test" name="start"  class="btn btn-success btn-sm" onclick="return startTest();" />
   <asp:HiddenField ID="hfQueryString" runat="server" Value="" />
</center>
                                                        </div>
                                                        <div style="text-align: left; display: none" id="secondPagep2">
                                                            <span class="highlightText">
                                                                <div class="checkboxDiv">
                                                                    <input type="checkbox" id="disclaimer" />
                                                                </div>
                                                                I have read and understood the instructions.All Computer
Hardwares allotted to me are in proper working condition.I agree that
in case of not adhering to the instructions, I will be disqualified
from giving the exam.</span>
                                                            <div align="center" style="padding: 6px; color: rgb(255, 255, 255);"
                                                                class="startbt">
                                                            </div>
                                                        </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>

                    <asp:HiddenField ID="hfQuery" runat="server" Value="" />


                </td>
            </tr>
        </table>
    </form>
    <script>
        function startTest() {
            //alert(window.location.href.slice(window.location.href.indexOf('?') + 1));
            var query = window.location.href.slice(window.location.href.indexOf('?') + 1);
            window.location.href = "TestPaper.aspx?" + query;
            return false;
        }
    </script>


</body>
</html>
