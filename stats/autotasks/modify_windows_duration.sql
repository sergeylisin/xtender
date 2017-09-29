@@show_window_intervals;

accept MON_DURATION prompt "MON_DURATION: ";
accept TUE_DURATION prompt "TUE_DURATION: ";
accept WED_DURATION prompt "WED_DURATION: ";
accept THU_DURATION prompt "THU_DURATION: ";
accept FRI_DURATION prompt "FRI_DURATION: ";
accept SAT_DURATION prompt "SAT_DURATION: ";
accept SUN_DURATION prompt "SUN_DURATION: ";

begin
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('MONDAY_WINDOW   '), 'DURATION', cast('&MON_DURATION' as INTERVAL DAY TO SECOND));
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('TUESDAY_WINDOW  '), 'DURATION', cast('&TUE_DURATION' as INTERVAL DAY TO SECOND));
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('WEDNESDAY_WINDOW'), 'DURATION', cast('&WED_DURATION' as INTERVAL DAY TO SECOND));
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('THURSDAY_WINDOW '), 'DURATION', cast('&THU_DURATION' as INTERVAL DAY TO SECOND));
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('FRIDAY_WINDOW   '), 'DURATION', cast('&FRI_DURATION' as INTERVAL DAY TO SECOND));
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('SATURDAY_WINDOW '), 'DURATION', cast('&SAT_DURATION' as INTERVAL DAY TO SECOND));
 DBMS_SCHEDULER.SET_ATTRIBUTE( rtrim('SUNDAY_WINDOW   '), 'DURATION', cast('&SUN_DURATION' as INTERVAL DAY TO SECOND));
end;
/
@@show_window_intervals;