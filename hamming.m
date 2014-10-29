function [w] = hamming(M,window)

%symmertric window = 0
%periodic window = 1
%M is an array of data.
%Window is 'periodic' or 'symmetric'

if M < 1
    w = [];
elseif M == 1
    w = ones(1);
else
    odd = mod(M,2);
    if odd == 0 && strcmp(window, 'periodic') == 1
        M = M + 1;
    end
    n = 0:1:(M-1);
    w = 0.54 - 0.46*cos(2.0* pi * n / (M-1));
    if odd == 0 && strcmp(window, 'periodic') == 1
        w = w(1:length(w)-1);
    end
end