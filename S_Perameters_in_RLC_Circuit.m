%Name:Md.Roknuzzaman Rikon
%ID: 22024014
% S-Parameters in RF Circuit 
s_params = sparameters('default.s2p'); % Load S-parameter file 
rfplot(s_params); 
title('S-Parameters'); 