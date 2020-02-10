<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChineseCalendar</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=EUC-KR">
<SCRIPT language=javascript>
/////////////////////////////////////////////////////////////////////////////////////////////////////
// 양/음력 만년달력에 관한 소스입니다.
// by Albeniz

// 1881-2050년까지의 음력 데이터
var LunarTable = new Array(
"1212122322121", "1212121221220", "1121121222120", "2112132122122", "2112112121220",
"2121211212120", "2212321121212", "2122121121210", "2122121212120", "1232122121212",
"1212121221220", "1121123221222", "1121121212220", "1212112121220", "2121231212121",
"2221211212120", "1221212121210", "2123221212121", "2121212212120", "1211212232212",
"1211212122210", "2121121212220", "1212132112212", "2212112112210", "2212211212120",
"1221412121212", "1212122121210", "2112212122120", "1231212122212", "1211212122210",
"2121123122122", "2121121122120", "2212112112120", "2212231212112", "2122121212120",
"1212122121210", "2132122122121", "2112121222120", "1211212322122", "1211211221220",
"2121121121220", "2122132112122", "1221212121120", "2121221212110", "2122321221212",
"1121212212210", "2112121221220", "1231211221222", "1211211212220", "1221123121221",
"2221121121210", "2221212112120", "1221241212112", "1212212212120", "1121212212210",
"2114121212221", "2112112122210", "2211211412212", "2211211212120", "2212121121210",
"2212214112121", "2122122121120", "1212122122120", "1121412122122", "1121121222120",
"2112112122120", "2231211212122", "2121211212120", "2212121321212", "2122121121210",
"2122121212120", "1212142121212", "1211221221220", "1121121221220", "2114112121222",
"1212112121220", "2121211232122", "1221211212120", "1221212121210", "2121223212121",
"2121212212120", "1211212212210", "2121321212221", "2121121212220", "1212112112210",
"2223211211221", "2212211212120", "1221212321212", "1212122121210", "2112212122120",
"1211232122212", "1211212122210", "2121121122210", "2212312112212", "2212112112120",
"2212121232112", "2122121212110", "2212122121210", "2112124122121", "2112121221220",
"1211211221220", "2121321122122", "2121121121220", "2122112112322", "1221212112120",
"1221221212110", "2122123221212", "1121212212210", "2112121221220", "1211231212222",
"1211211212220", "1221121121220", "1223212112121", "2221212112120", "1221221232112",
"1212212122120", "1121212212210", "2112132212221", "2112112122210", "2211211212210",
"2221321121212", "2212121121210", "2212212112120", "1232212122112", "1212122122120",
"1121212322122", "1121121222120", "2112112122120", "2211231212122", "2121211212120",
"2122121121210", "2124212112121", "2122121212120", "1212121223212", "1211212221220",
"1121121221220", "2112132121222", "1212112121220", "2121211212120", "2122321121212",
"1221212121210", "2121221212120", "1232121221212", "1211212212210", "2121123212221",
"2121121212220", "1212112112220", "1221231211221", "2212211211220", "1212212121210",
"2123212212121", "2112122122120", "1211212322212", "1211212122210", "2121121122120",
"2212114112122", "2212112112120", "2212121211210", "2212232121211", "2122122121210",
"2112122122120", "1231212122212", "1211211221220", "2121121321222", "2121121121220",
"2122112112120", "2122141211212", "1221221212110", "2121221221210", "2114121221221"
);

// 양력 각달의 일수를 저장한 배열
var MonthTable = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
// 현재 페이지에 Display될 날짜에 관한 변수
var currentDate = new Date();

//음력 날짜 형식 객체 선언. JavaScript기본 날짜형식에서 윤달이라는 속성을 추가.
function LunarDate() {
this.year = 1;
this.month = 0;
this.day = 1;
this.isYunMonth = false;
}

//해당 음력년도의 전체 날짜를 반환하는 함수
function nDaysYear(year) {
var i, sum;

sum = 0;
for (i=0;i<13;i++) {
if (parseInt(LunarTable[year-1881].charAt(i))) {
sum += 29 + (parseInt(LunarTable[year - 1881].charAt(i)) + 1) % 2;
}
}

return sum;
}

//해당 음력 월의 날짜수를 반환하는 함수
function nDaysMonth(lunar_date) {
var nDays;

if (lunar_date.month <= YunMonth(lunar_date.year) && !lunar_date.isYunMonth) yun = 0;
else yun = 1;

nDays = 29 + (parseInt(LunarTable[lunar_date.year - 1881].charAt(lunar_date.month + yun)) + 1) % 2;

return nDays;
}

// 해당 음력년도의 윤달넘버를 반환. 윤달이 없으면 12를 반환
function YunMonth(year) {
var yun;

yun = 0;
do {
if (LunarTable[year-1881].charAt(yun) > 2) {
break;
}
yun++;
} while (yun <= 12);

return yun - 1;
}

// 서기 1년 1월 1일 이후 지난 날짜수를 반환
function totalDays(solar_date) {
var i, sum, tdays, nYears366;

if (((solar_date.year % 4 == 0) && (solar_date.year % 100 != 0)) || (solar_date.year % 400 == 0)) MonthTable[1] = 29;
else MonthTable[1] = 28;

sum = 0;
for (i=0;i<solar_date.month;i++) {
sum = sum + MonthTable[i];
}

nYears366 = parseInt((solar_date.year - 1) / 4) - parseInt((solar_date.year - 1) / 100) + parseInt((solar_date.year - 1) / 400);

tdays = (solar_date.year - 1) * 365 + sum + nYears366 + solar_date.day - 1;

return tdays;
}

// 양력날짜를 음력데이터형식의 날짜로 반환
function SolarToLunar(solar_date) {
var i, nDays, tmp;
var FIRST_DAY; // 서기 1년 1월 1일부터 음력 1881년 1월 1일까지 총 지난 날짜에 관한 변수

FIRST_DAY = 686685;
nDays = totalDays(solar_date) - FIRST_DAY; //음력 1881년 1월 1일 이후 지난 날짜

var lunar_date = new LunarDate(); // 반환할 음력 날짜를 선언. 음력 첫날로 초기화
lunar_date.year = 1881;
lunar_date.month = 0;
lunar_date.day = 1;
lunar_date.isYunMonth = false;

// nDays가 0보다 작아질때 까지, 각년도의 총 날짜수를 빼는 걸 반복해 그 루프횟수로서 현재 년도를 계산.
// 이 루프가 종료됨과 동시에 음력데이터의 year속성은 현재 년도가 저장되게 된다.
do {
tmp = nDays;
nDays -= nDaysYear(lunar_date.year);
if (nDays < 0) {
nDays = tmp;
break;
}
lunar_date.year++;
} while (true);

// 1년총날짜 이하로 작아지 nDays를 마찬가지로 월 단위로 빼는걸 반복해 현재 월을 계산.
// 만약에 다음루프에서 윤달이면 월을 증가시키는게 아니라 윤달 속성만 true로 설정.
do {
tmp = nDays;
nDays -= nDaysMonth(lunar_date);;
if (nDays < 0) {
nDays = tmp;
break;
}

if (lunar_date.month == YunMonth(lunar_date.year)&&!lunar_date.isYunMonth) {
lunar_date.isYunMonth = true;
}
else {
lunar_date.month++;
lunar_date.isYunMonth = false;
}
} while (true);

// 마지막으로 월단위 날짜수 이하로 작아진 nDays를 이용해 날짜를 계산
lunar_date.day = nDays + 1;

return lunar_date;
}

// 페이지의 테이블에 계산된 달력 데이터를 삽입한다. (달력을 그린다.)
function drawCalendar(solar_date) {
var i, week;

solar_date.year = txtYear.value;
solar_date.month = selMonth.value - 1;
solar_date.day = 1;

curYear.innerHTML = solar_date.year;
curMonth.innerHTML = solar_date.month + 1;

week = (totalDays(solar_date) + 1) % 7; // 현재 월의 첫번째 날짜의 요일을 계산 (0:월, 1:화, 2:수...)

// 달력의 첫번째 날짜까지의 빈공란을 그린다.
for (i=0;i<week;i++) {
eval("s" + i + ".innerHTML='-'");
eval("l" + i + ".innerHTML=''");
}

// 양력 날짜들을 각 칸에 삽입한다. if 절이 있는 이유는 일요일, 토요일의 색깔을 틀리게 하기위해.
do {
if ((solar_date.day + week - 1) % 7 == 0) {
eval("s" + (week + solar_date.day - 1) + ".innerHTML='<b><font color=#FF0000>" + solar_date.day + "</font></b><br>'");
}
else if ((solar_date.day + week - 1) % 7 == 6) {
eval("s" + (solar_date.day + week - 1) + ".innerHTML='<b><font color=#0000FF>" + solar_date.day + "</font></b><br>'");
}
else {
eval("s" + (solar_date.day + week - 1) + ".innerHTML='<b>" + solar_date.day + "</b><br>'");
}
} while(++solar_date.day <= MonthTable[solar_date.month]);

// 달력 마지막 날짜 이후의 빈공란을 그린다.
for (i=week+MonthTable[solar_date.month];i<37;i++) {
eval("s" + i + ".innerHTML='-'");
eval("l" + i + ".innerHTML=''");
}

solar_date.day = 1;

// 음력 표기 범위를 벗어난 년도에 관한 예외처리. 양력 데이터만 출력한다.
if((solar_date.year < 1881) || (solar_date.year > 2051) || ((solar_date.year == 2051) && (solar_date.month > 1))) {
for (i=0;i<37;i++) eval("l" + i + ".innerHTML=''");
return;
}

if((solar_date.year == 1881) && (solar_date.month == 0)) {
for (i=0;i<35;i++) eval("l" + i + ".innerHTML=''");
eval("l35.innerHTML='<font size=2 color=#808080>1/1</font>'");
eval("l36.innerHTML='<font size=2 color=#808080>1/2</font>'");
return;
}

if((solar_date.year == 2051) && (solar_date.month == 1)) {
for (i=3;i<13;i++) eval("l" + i + ".innerHTML='<font size=2 color=#808080>12/" + (i + 17) + "</font>'");
for (i=13;i<37;i++) eval("l" + i + ".innerHTML=''");
return;
}

// 첫날짜를 음력으로 변경시켜 그 이후 날짜들을 증가시켜 음력날짜를 출력한다.
// 첫날짜만을 음력으로 변경하는 이유는 SolarToLunar()함수가 루프를 동반한 함수로써
// 상당히 느리기 때문에, 각 날짜마다 음력으로 변경시킨다는 건 낭비이기 때문이다.
// 따라서 코드는 좀 복잡해졌지만, 훨씬 빠르다.
var lunar_date = new LunarDate();
lunar_date = SolarToLunar(solar_date);

do {
if (lunar_date.isYunMonth) {
eval("l" + (solar_date.day + week - 1) + ".innerHTML='<font size=2 color=#ffffff>윤" + (lunar_date.month + 1) + "/" + lunar_date.day + "</font><br>';");
}
else {
eval("l" + (solar_date.day + week - 1) + ".innerHTML='<font size=2 color=#ffffff>" + (lunar_date.month + 1) + "/" + lunar_date.day + "</font><br>';");
}

if (lunar_date.day >= nDaysMonth(lunar_date)) {
if (lunar_date.month < 11) {
if ((lunar_date.month == YunMonth(lunar_date.year)) && !lunar_date.isYunMonth) {
lunar_date.isYunMonth = true;
lunar_date.day = 1;
}
else {
lunar_date.month++;
lunar_date.isYunMonth = false;
lunar_date.day = 1;
}
}
else {
lunar_date.year++;
lunar_date.month = 0;
lunar_date.day = 1;
}
}
else lunar_date.day++;
} while(++solar_date.day <= MonthTable[solar_date.month]);
}
</SCRIPT>

<SCRIPT language=javascript>
/////////////////////////////////////////////////////////////////////////////////////////////////////
// 양/음력 만년달력 페이지의 이벤트 핸들링 함수들입니다.
// by Albeniz

// 각 양식필드들에 관한 이벤트 핸들러 함수들
function window_onload() {
var today = new Date();

txtYear.value = today.getYear();
selMonth.value = today.getMonth() + 1;

today.year = txtYear.value;
today.month = selMonth.value - 1;

drawCalendar(currentDate);
}

function btOK_onclick() {
var i, j, code, hit;

code = "0123456789";

var str = txtYear.value;

for (i=1;i<str.length;i++) {
hit = 0;
for (j=0;j<code.length;j++) {
if(str.charAt(i) == code.charAt(j)) {
hit = 1;
break;
}
}
if (!hit) {
alert("년도는 4자리이하 숫자여야 합니다.");
txtYear.value = "";
txtYear.focus();
return;
}
}

if (str.length > 4) {
alert("년도는 9999년도 이상 입력될 수 없습니다.");
txtYear.value = "";
txtYear.focus();
return;
}

currentDate.year = txtYear.value;
currentDate.month = selMonth.value - 1;

drawCalendar(currentDate);
}

function btNextMonth_onclick() {
if (currentDate.month < 11) selMonth.value = ++currentDate.month + 1;
else {
txtYear.value = ++currentDate.year;
currentDate.month = 0;
selMonth.value = currentDate.month + 1;
}

drawCalendar(currentDate);
}

function btNextYear_onclick() {
txtYear.value = ++currentDate.year;

drawCalendar(currentDate);
}

function btPrevMonth_onclick() {
if (currentDate.month > 0) selMonth.value = --currentDate.month + 1;
else {
txtYear.value = --currentDate.year;
currentDate.month = 11;
selMonth.value = currentDate.month + 1;
}
drawCalendar(currentDate);
}

function btPrevYear_onclick() {
txtYear.value = --currentDate.year;

drawCalendar(currentDate);
}
</SCRIPT>
<META content="MSHTML 5.00.2722.2800" name=GENERATOR>
</HEAD>

<BODY BGCOLOR=008080 language=javascript onload="return window_onload()">
	<CENTER>

		<BR>
		<BR>
		<BR>
		<BR>
		<BR>
		<!--
만년달력의 내용이 있는 테이블입니다. 이 테이블은 주의하여 편집하여 주십시오.
curYear, curMonth라는 Span태그 객체와 s0 ~ s36, l0 ~ l36 의 div태그 객체는 남아 있어야 합니다.
-->
		<TABLE border=1 borderColor=#DDFFDD cellSpacing=0>
			<TBODY>
				<TR>
					<TD align=middle bgColor=#008080 colSpan=7><INPUT
						language=javascript name=btPrevYear
						onclick="return btPrevYear_onclick()" type=button value=" << ">
						<INPUT language=javascript name=btPrevMonth
						onclick="return btPrevMonth_onclick()" type=button value=" < ">
						<FONT color=#ffffff><B><SPAN id=curYear></SPAN>년 <SPAN
								id=curMonth></SPAN>월</B></FONT> <INPUT language=javascript name=btNextMonth
						onclick="return btNextMonth_onclick()" type=button value=" > ">
						<INPUT language=javascript name=btNextYear
						onclick="return btNextYear_onclick()" type=button value=" >> ">
					</TD>
				</TR>
				<TR>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#ff3333>일
								<FONT size=2>Sun</FONT>
						</FONT></B></TD>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#ffffff>월
								<FONT size=2>Mon</FONT>
						</FONT></B></TD>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#ffffff>화
								<FONT size=2>Twe</FONT>
						</FONT></B></TD>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#ffffff>수
								<FONT size=2>Wed</FONT>
						</FONT></B></TD>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#ffffff>목
								<FONT size=2>Thu</FONT>
						</FONT></B></TD>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#ffffff>금
								<FONT size=2>Fri</FONT>
						</FONT></B></TD>
					<TD align=middle bgColor=#95b5a0><B><FONT color=#4242ff>토
								<FONT size=2>Sat</FONT>
						</FONT></B></TD>
				</TR>
				<TR>
					<TD align=middle height=50 width=70>
						<DIV id=s0></DIV>
						<DIV id=l0></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s1></DIV>
						<DIV id=l1></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s2></DIV>
						<DIV id=l2></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s3></DIV>
						<DIV id=l3></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s4></DIV>
						<DIV id=l4></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s5></DIV>
						<DIV id=l5></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s6></DIV>
						<DIV id=l6></DIV>
					</TD>
				</TR>
				<TR>
					<TD align=middle height=50 width=70>
						<DIV id=s7></DIV>
						<DIV id=l7></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s8></DIV>
						<DIV id=l8></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s9></DIV>
						<DIV id=l9></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s10></DIV>
						<DIV id=l10></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s11></DIV>
						<DIV id=l11></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s12></DIV>
						<DIV id=l12></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s13></DIV>
						<DIV id=l13></DIV>
					</TD>
				</TR>
				<TR>
					<TD align=middle height=50 width=70>
						<DIV id=s14></DIV>
						<DIV id=l14></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s15></DIV>
						<DIV id=l15></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s16></DIV>
						<DIV id=l16></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s17></DIV>
						<DIV id=l17></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s18></DIV>
						<DIV id=l18></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s19></DIV>
						<DIV id=l19></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s20></DIV>
						<DIV id=l20></DIV>
					</TD>
				</TR>
				<TR>
					<TD align=middle height=50 width=70>
						<DIV id=s21></DIV>
						<DIV id=l21></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s22></DIV>
						<DIV id=l22></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s23></DIV>
						<DIV id=l23></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s24></DIV>
						<DIV id=l24></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s25></DIV>
						<DIV id=l25></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s26></DIV>
						<DIV id=l26></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s27></DIV>
						<DIV id=l27></DIV>
					</TD>
				</TR>
				<TR>
					<TD align=middle height=50 width=70>
						<DIV id=s28></DIV>
						<DIV id=l28></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s29></DIV>
						<DIV id=l29></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s30></DIV>
						<DIV id=l30></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s31></DIV>
						<DIV id=l31></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s32></DIV>
						<DIV id=l32></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s33></DIV>
						<DIV id=l33></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s34></DIV>
						<DIV id=l34></DIV>
					</TD>
				</TR>
				<TR>
					<TD align=middle height=50 width=70>
						<DIV id=s35></DIV>
						<DIV id=l35></DIV>
					</TD>
					<TD align=middle height=50 width=70>
						<DIV id=s36></DIV>
						<DIV id=l36></DIV>
					</TD>
					</CENTER>
					<TD align=middle bgColor=#008080 colSpan=5 id=s37>
						<P align=center>
							<FONT color=#ffffff size=2><B> 바로가기 : <INPUT
									name=txtYear size=4> 년 <SELECT name=selMonth size=1>
										<OPTION selected value=1>1</OPTION>
										<OPTION value=2>2</OPTION>
										<OPTION value=3>3</OPTION>
										<OPTION value=4>4</OPTION>
										<OPTION value=5>5</OPTION>
										<OPTION value=6>6</OPTION>
										<OPTION value=7>7</OPTION>
										<OPTION value=8>8</OPTION>
										<OPTION value=9>9</OPTION>
										<OPTION value=10>10</OPTION>
										<OPTION value=11>11</OPTION>
										<OPTION value=12>12</OPTION>
								</SELECT> 월 <INPUT language=javascript name=btOK
									onclick="return btOK_onclick()" type=button value=확인> <BR></B>음력표기는
								1881 -2050년 까지 가능 </FONT>
						</P>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
</BODY>
</HTML>
