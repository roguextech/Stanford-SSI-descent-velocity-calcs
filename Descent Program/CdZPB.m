function [Cd,S] = CdZPB(h,t)
    Cd = .6;                        %Rocket Cd
    S = pi*(3*2.54/100)^2;
    
    if h < 1600/3.2808 %6100/3.2808                %Drogue deployment in t or h
        Cd = 1.75;
        S = pi*(45*2.54/100)^2;           %Change 12 to 16 for IREC size drogue
    elseif t > 1 %7600                      %Streamer option
        Cd = 1.75;                          %Aspect ratio = 10 -> Cd = .15 AR =20 -> Cd = .1 *Very approximate - depends on material and AR*
        S = pi*(16*2.54/100)^2;   %Streamer Area
    end

end