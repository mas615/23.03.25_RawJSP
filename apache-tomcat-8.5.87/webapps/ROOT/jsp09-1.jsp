<%

//1부터 10까지의 합계를 "WHILE" 문을 이용해서 구하기

int sum = 0 ;
int number = 1 ;
String total ;

while (number <= 10) {
    sum = sum + number ;
    number ++ ; //number = number + 1 ; 로 줄여서 표시가능
}
total = "sum(for) : " + sum ;
out.print(total + "<br>");

//1부터 10까지의 합계를 "FOR" 문을 이용해서 구하기

sum = 0 ;
number = 1 ;

for( number = 1; number <= 10; number ++){
    sum = sum + number;
}
total = "sum(while) : " + sum ;
out.print(total + "<br>");

%>