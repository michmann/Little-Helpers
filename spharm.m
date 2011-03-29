function [Ynl]=spharm(N,L,THETA,PHI);


%
% Calculates the spherical harmonics for given degree and order
% as well as position xi=(theta,phi) on the unit sphere Omega
% using the orthonormalized Legendre Functions
%




if N<L, error('The ORDER (L) must be less than or eqaul to the DEGREE(N).'); end



leg=legendre(N,cos(THETA));

if L<0
    a1=sqrt(4*N+2);
    a2=sqrt(factorial(N-abs(L))/factorial(N+abs(L)));
    Lnl=a1.*a2.*leg;
    Y=Lnl.*sin(abs(L).*PHI);
end

if L==0
    a1=sqrt(2*N+1);
    a2=sqrt(factorial(N-L)/factorial(N+L));
    Lnl=a1.*a2.*leg;
    Y=Lnl.*cos(L.*PHI);
end

if L>0
    a1=sqrt(4*N+2);
    a2=sqrt(factorial(N-L)/factorial(N+L));
    Lnl=a1.*a2.*leg;
    Y=Lnl.*cos(L.*PHI);
end     

Ynl=Y(1);



return