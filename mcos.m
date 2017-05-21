function z = mcos(n)

    a = factorial(2);
    b = factorial(4);
    c = factorial(6);
    d = factorial(8);
    e = factorial(10);
    f = factorial(12);
    g = factorial(14);
    h = factorial(16);
    i = factorial(18);
    j = factorial(20);
    
    z = (1 + n.*(-n/a + n.^2.*(n/b + n.^2.*(-n/c + n.^2.*(n/d +n.^2.*(-n/e +n.^2.*(n/f + n.^2.*(-n/g + n.^2.*(n/h + n.^2.*(-n/i + n.^2.*((n.^2)/j) ))))))))));
 
end %function
