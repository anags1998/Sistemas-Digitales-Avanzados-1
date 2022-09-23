clear all ;
fid = fopen('./FPGA/FPGA/FPGA.sim/sim_1/behav/xsim/osci.txt', 'r');
S = fscanf(fid,'%d',[1 inf]);
fclose(fid);


FS = 48E3;                    % Sampling frequency
sfdr(S,FS);