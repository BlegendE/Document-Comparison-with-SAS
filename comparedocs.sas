/*importing the first  file to SAS*/
PROC IMPORT OUT= WORK.Bright 
            DATAFILE= "\\fld6filer\SRGD_SRTIP_PTIRS\UAT Data\IT_Solution_Delivery_Section\Software\SAS\Data_JL\sbgr_uat_621_1_37_test1_REG.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 

/*importing the Second file to SAS*/
PROC IMPORT OUT= WORK.Bright1 
            DATAFILE= "\\fld6filer\SRGD_SRTIP_PTIRS\UAT Data\IT_Solution_Delivery_Section\Software\SAS\Data_JL\sbgr_uat_621_1_37_test1_REG_app.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 

/*print both datasets*/
proc print data=Bright;
proc print data=Work.Bright1;

/*compare the two datasets*/
proc compare
    base=Bright
    compare=Bright1;
run;

