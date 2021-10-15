%% Initiate Miji

javaaddpath '/Applications/MATLAB_R2020b.app/java/mij.jar';
javaaddpath '/Applications/MATLAB_R2020b.app/java/mij.jar';
addpath('/Applications/Fiji.app/scripts');

%% Open file, measure, export

file_path = '/Users/csi20/Documents/Arbeit/Lehre/TUB/IB27/data/5_virus_tracking/MAX_C2-21-10-14_A549_PR8_A647_FM143_004.tif';

MIJ.run('Bio-Formats Importer', ['open=' file_path]);

%% Plot trajectory

var1 = MIJ.getResultsTable;
plot(var1(:,3),var1(:,4));