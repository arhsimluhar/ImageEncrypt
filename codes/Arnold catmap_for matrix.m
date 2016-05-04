function X = catmap(Y)
% applies Arnold's Cat Map to the image Y to produce image X

p = size(Y,1);      % get the number of pixels on each side
X = zeros(size(Y)); % make space for X (all zeros to start)
for i = 1:p         % loop through all the pixels
   for j = 1:p
       newi = mod(((i-1) + (j-1)),p) + 1;     % get new i coord (m+n) mod p
       newj = mod(((i-1) + 2*(j-1)),p) + 1;   % get new j coord (m+2n) mod p
       X(newi,newj) = Y(i,j);
   end
end
X = uint8(X);
