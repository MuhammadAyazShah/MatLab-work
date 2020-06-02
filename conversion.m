Vmph=10:10:100;
Vkmh=Vmph.*1.609;
TBL1=[Vmph; Vkmh];
Flb=200:200:2000;
FN=Flb.*4.448;
TBL2=[Flb; FN];
fid1=fopen('VmphtoVkm.txt','w');
fid2=fopen('FlbtoFN.txt','w');
fprintf(fid1,'Velocity Conversion Table\n \n');
fprintf(fid1,' mi/h km/h \n');
fprintf(fid1,' %8.2f %8.2f\n',TBL1);
fprintf(fid2,'Force Conversion Table\n \n');
fprintf(fid2,' Pounds Newtons \n');
fprintf(fid2,' %8.2f %8.2f\n',TBL2);
fclose(fid1);
fclose(fid2);