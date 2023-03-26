<%!
int sum ( int from, int to ){
    int i , total;
    total = 0 ;
    for ( i = from; i <= to; i++){
        total = total + i ;
    }
    return ( total ) ;
}
%>

<%
int a, b, c ;
a = 1 ;
b = 10 ;
c = sum( a, b ) ;
out.print("sum : " + c ) ;
%>