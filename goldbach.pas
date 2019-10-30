program goldbach;
uses wincrt;

{Prime test}
function isPrime(n:integer):boolean;
var i:integer;
    isDiv:boolean;
begin
	if (n=1) then isPrime:=false
	else  
		begin
		isDiv:=false;
			for i:=2 to trunc(sqrt(n)) do
			   if ((n mod i)=0) then isDiv:=true;
			if (isDiv) then isPrime:=false
			else isPrime:=true;
		end;
end;

{Main}
var n,a,b,i:integer;
begin
	writeln('Enter n'); 
	read(n);
	if ((n mod 2)<>0) then writeln(n, 'is not a prime number!')
	else
		for i:=1 to (n div 2) do  begin
		a:=i;  b:=n-i;
		  if isPrime(a) and isPrime(b) then writeln(n,' = ',a,' + ',b);
		end;
end.