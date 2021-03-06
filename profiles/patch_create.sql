prompt ***;
prompt Using SQL Patch to add hints;
prompt ***;

set feed on serverout on;

accept p_sqlid      prompt "SQL_ID: ";
accept p_hints      prompt "Hints: ";
accept p_name       prompt "Patch name: ";
accept p_descr      prompt "Description: ";

declare
   -- params:
   p_sql_id         varchar2(13)  :=q'[&p_sqlid]';
   p_hints          clob          :=q'[&p_hints]';
   p_name           varchar2(30)  :=q'[&p_name]';
   p_description    varchar2(120) :=q'[&p_descr]';
   cl_sql_text      clob;
   res              varchar2(4000);
begin
    
   res:=sys.dbms_sqldiag_internal.i_create_patch(
      sql_id      => p_sql_id,
      hint_text   => p_hints,
      creator     => user,
      name        => p_name,
      description => p_description
   );
   
   dbms_output.put_line('SQL Profile '||p_name||' created on instance #'||sys_context('userenv','instance'));
   dbms_output.put_line('Results:');
   dbms_output.put_line(res);
end;
/
undef p_sqlid p_hints p_name p_descr
