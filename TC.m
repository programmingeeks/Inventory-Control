function t=TC(x)
        
        

        t1=x(1);
        t2=x(2);
        Q=x(3);
        D=50000;
        A=200;
        i=0.12;
        alpha=0.02;
        c2=10;
        c=25;
        p=50;
        cs=20;
        theta=0.1;
        
        T=Q/D + t2 - 1/(D*(1-alpha))*(D*(exp(theta*(t2-t1))-1)/theta + D*t1);
        if t2<T && t1<t2
        S=D*(T-t2);
        pc=c*Q;
        sc=0.5*(Q-S);
        hc1=i*c*(((1-exp(-theta*t1))*(Q-S)/theta)-D*(theta*t1+exp(-theta*t1)-1)/theta^2);
        hc2=i*c*((1-exp(theta*(t1-t2)))*((1-alpha)*(Q-S)-D*t1))/theta;
        hc3=i*c*D*(theta*(t2-t1)+exp(theta*(t1-t2))-1)/theta^2;
        hc=hc1+hc2-hc3;
        bc=(c2*D*(T-t2)^2)/2;
        tc=A+pc+sc+hc+bc;
        
        tr=(1-alpha)*(Q-S)*p + alpha*(Q-S)*cs;
        
        t=(tr-tc)/T;
        else
            t=100000;
        end
end

