clear all ;
fid = fopen('.\NCO.sim\sim_1\behav\xsim\nco.txt', 'r');
S = fscanf(fid,'%d',[1 inf]);
fclose(fid);


FS = 100E3;                    % Sampling frequency
sfdr(S,FS);