<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Qn23/style/styleFor23.css">
    <title>Document</title>
</head>
<body>
    <div class="formBackground">
        <div class="formSection">
            <form action="qn23SndPage.cfm" method="post">
                <div class="formTopSection">
                    <img src="../Qn23/assests/logo.png" alt="logo" class="logo">
                </div>
                <div class="formBodySection">
                    <div class="divStyle">
                        <p class="fontSize20"> Employment Application</p>
                        <p class="fontSize12">Infinity Box Inc.</p>
                    </div>
                    <hr>
                    <div class="divStyle">
                        <p class="spanStyle">Which position are you applaying for? <span class="clrRed">*</span></p>
                        <select name='dropDown' class="widthForInput" id="position">
                            <option value=""></option>
                            <option value="InterFace Designer">InterFace Designer</option>
                            <option value="Software Engineer">Software Engineer</option>
                            <option value="System Administrator">System Administrator</option>
                            <option value="Office Manager">Office Manager</option>
                        </select>
                    </div>
                    <div class="divStyle">
                        <p class="spanStyle">Are you willing to relocate?<span class="clrRed">*</span></p>
                        <div class="redioStyle" ><input type="radio" name="radioButton" value="Yes" checked="checked">Yes</div>
                        <div class="redioStyle" ><input type="radio" name="radioButton" value="No">No</div>
                    </div>
                    <div class="divStyle">
                        <p class="spanStyle">When can you start?<span class="clrRed">*</span></p>
                        <div class="dateData">
                            <input type="text" id="day" maxlength="2" class="forDate">
                            <span>/</span>
                            <input type="text" id="month" maxlength="2" class="forDate">
                            <span>/</span>
                            <input type="text" id="year" maxlength="4"  class="forYear">
                            <span onclick="showCalendar()">
                                <img src="../Qn23/assests/calendar.png" alt="calender.png" class="calendarIcon">
                            </span>
                        </div>
                    </div>
                    <div class="divStyle">
                        <span class="spanStyle">Portfolio Web Site</span>
                        <input type="text" placeholder="http//">
                    </div>
                    <div class="divStyle">
                        <span class="spanStyle">Attach a Copy of Your Resume</span>
                        <input type="file" id="resume" name="resume" accept=".pdf,.doc,.docx">
                        <p class="fontSize10">Word or PDF Documents Only</p>
                    </div>
                    <div class="divStyle">
                        <span class="spanStyle">Salary Requirements</span>
                        <div class="divRowFlex">
                            <div>
                                <span class="fontSize15">$<span>
                            </div>
                            <div class="divColoumFlex">
                                <input type="text" name="dollar" class="widthForSalary">
                                <span class="fontSize11">Dollars</span>
                            </div>
                            <div>
                                <span>.<span>
                            </div>
                            <div class="divColoumFlex">
                                <input type="text" name="cents" class="widthForCent">
                                <span class="fontSize11">Cents</span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <span>Your Contact Information</span>
                    </div>
                    <div class="divStyle">
                        <p class="spanStyle">Name<span>*<span></p>
                        <div class="divRowFlex">
                            <div class="divColoumFlex">
                                <input type="text" name="Fname" class="widthForFirst" id="fName">
                                <span class="fontSize11">first</span>
                            </div>
                            <div class="divColoumFlex">
                                <input type="text" name="Lname" class="widthForLast" id="lNmae">
                                <span class="fontSize11">Last</span>
                            </div>
                        </div>
                    </div>
                    <div class="divStyle">
                        <p class="spanStyle">Email Address<span class="clrRed">*</span></p>
                        <input type="email" name="email" id="emial">
                    </div>
                    <div class="divStyle">
                        <p class="spanStyle">Phone<span class="clrRed">*</span></p>
                        <div>
                            <div class="divRowFlex">
                                <div class="divColoumFlex">
                                    <input type="text"  maxlength="3" class="forDate">
                                    <span class="fontSize11">###</span>
                                </div>
                                <span>-</span>
                                <div class="divColoumFlex">
                                    <input type="text"  maxlength="3" class="forDate">
                                    <span class="fontSize11"> ### </sapn>
                                </div>
                                <span>-</span>
                                <div class="divColoumFlex">
                                    <input type="text"  maxlength="4"  class="forYear">
                                    <span class="fontSize11">####</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <input type="submit" value="Submit" name="submit" class="buttonStyle">
                    </div>
                    <div class="lastData">
                            This site is protected by reCAPTCHA Enterprise and the Google <a href="#" class="aStyle">Privacy Policy</a> and <a href="#" class="aStyle">Terms of Service</a> apply.
                    </div>
                </div>
            </form>
        </div>
    <div class="LastData">
        <p class="fontSize10">Powered By</p>
        <img src="../Qn23/assests/logoLast.png" alt="logo" class="imageLast">
        <span class="fontSize12">See how easy it is to <a href="#">create a form</span>
    </div>
    </div>
</body>
</html>
