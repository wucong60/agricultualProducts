<!-- #include virtual = "/include/mylib1105.asp" -->

<!-- #include virtual = "/include/auth.asp" -->
<!-- #include virtual = "/include/wsql.asp" -->

 <%
 
	'���ߣ�������  �� 2002-4-21 ��д
	'���ܣ���������
	'���������ű�������Ա����
 '�жϼ���
 
	set CONN = Server.CreateObject("ADODB.Connection")
    CONN.open CONNSTR,"",""  
	set RS = Server.CreateObject("ADODB.RecordSet")
	set RS1 = Server.CreateObject("ADODB.RecordSet")
	set RSLIB = Server.CreateObject("ADODB.RecordSet")
'	IF Request.Cookies ("PRVI") <> 0 THEN
'	Response.Write "�Բ�����ֻ�ܽ�����ˣ���ʹ�����������ݵ��ʺŽ��е�¼��лл"
'	Response.End 
'	END IF
	
	%> 
<html>
<head>
<title>��������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.main {  font-size: 9pt}
-->
</style>
</head>

<body bgcolor="#FFFFFF">
<script language="javascript">
function GoToURL()
{
  
  var tURL= "article_add.asp?b_id="+document.un.b_id.options[document.un.b_id.selectedIndex].value;
  var tURL1= "&state="+document.un.state.options[document.un.state.selectedIndex].value;
  var tURL3= "&class_no="+document.un.class_no.options[document.un.class_no.selectedIndex].value;
  var tURL2= "&p_class_no="+document.un.p_class_no.options[document.un.p_class_no.selectedIndex].value;
  var tURL4= "&s_id="+document.un.s_id.options[document.un.s_id.selectedIndex].value;
  document.location=tURL+tURL1+tURL3+tURL4+tURL2;
}
</script>
<script language="javascript">
function retable()
{
  	document.un.check_date.value="";

}
</script>
<%
if hour(now()) < 21 then
%> 
<script language="javascript">
function retable1()
{
  today=new Date(); 
  my_month = today.getMonth()+1;
 document.un.check_date.value="2017-"+my_month+"-"+today.getDate();
 //document.un.check_date.value=today.getYear();
  }
</script>
<%
ELSE
%> 
<script language="javascript">
function retable1()
{
  yx_date="<%=DATE()+1%>";
  
  document.un.check_date.value=yx_date;
  }
</script>
<%
END IF
%> 
<script language="javascript">

var lsdz = "";
function checkIn()
{
     if( document.un.b_id.options[document.un.b_id.selectedIndex].value <1) {
      alert("��������ѡ��");
      document.un.b_id.focus();
      return false;
   }
    
     if( document.un.p_class_no.options[document.un.p_class_no.selectedIndex].value <1) {
      alert("��վ������Ŀ����ѡ������ҲҪѡ��");
      document.un.p_class_no.focus();
      return false;
   }
    
    if( document.un.class_no.options[document.un.class_no.selectedIndex].value <1) {
      alert("��վ�ķ���Ŀ����ѡ������ҲҪѡ��");
      document.un.class_no.focus();
      return false;
   }
   
    if( document.un.info_title.value.length <1) {
      alert("���������д");
      document.un.info_title.focus();
      return false;
   }


	 if( document.un.s_article_no.value.length <1) {
      alert("���±�ű���ѡ��");
      document.un.s_article_no.focus();
      return false;
   }
	
	if( document.un.author.value.length <1) {
      alert(" ���߻��д����ѡ��");
      document.un.author.focus();
      return false;
   }
	
	if( document.un.x_article_no.value.length <1) {
      alert("�ֻ�����������д����100���ַ�");
      document.un.x_article_no.focus();
      return false;
   }
	
	if( document.un.info_corre.value.length <1) {
      alert("��ز�ѯ�ַ�������д��һ��ϵ�е����£��ַ���ͬ�����������ִ��棬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
    
	 if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
	 if( document.un.info_corre.value=='��') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺���г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
	if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
	if( document.un.info_corre.value=='���') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
		if( document.un.info_corre.value=='��֬') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺��֬�г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
			if( document.un.info_corre.value=='С��') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺С���г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
	if( document.un.info_corre.value=='��ֳ') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺��ֳ�г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
		
	if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
			
	if( document.un.info_corre.value=='��Ƿ�') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺��Ƿ��г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
	if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
		if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
			if( document.un.info_corre.value=='������') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�������г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
		if( document.un.info_corre.value=='��ޣ��') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺��ޣ���г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
			if( document.un.info_corre.value=='��ޣ��') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺��ޣ���г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
				if( document.un.info_corre.value=='���׵��׷�') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺���׵��׷��г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
				if( document.un.info_corre.value=='DDGS') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺DDGS�г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
			if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
				if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
			if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
				if( document.un.info_corre.value=='����') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�����г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
		if( document.un.info_corre.value=='������') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�������г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
		if( document.un.info_corre.value=='������') {
      alert("����ַ�������Ҫ�󣬷�Χ̫�㣬���磺�������г��ۺϿ챨");
      document.un.info_corre.focus();
      return false;
   }
	
	
   if(confirm("������Ҫ�ύ��?"))
      return true
   else
      return false;
}
</script>
<div align="center"><font color="#0000FF" class="main">���ڲ�����ϵͳ����������������ϵͳ���� </font></div>
<hr>
<form method="POST" action="article_save.asp" name="un">
  <table width="653" border="0" bordercolordark="#99CCFF" bordercolorlight="#99CCFF" cellspacing="1" align="center" cellpadding="6" bgcolor="#000000">
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�����</td>
      <td width="79%" class="main"> 
        <select name="b_id" onChange="GoToURL()">
          <option value="">�����</option>
          <%
        SQL = "SELECT * FROM B_SHORT"
        RS1.OPEN SQL,CONN,1,1
        DO WHILE NOT RS1.EOF 
        IF Request("b_id") = rs1("b_id") Then
        %>
        <option value="<%=RS1("B_ID")%>" SELECTED><%=RS1("C_NAME")%>-<%=RS1("IMG_PATH") %></option>
        <%
        else
        %>
        <option value="<%=RS1("B_ID")%>" ><%=RS1("C_NAME")%>-<%=RS1("IMG_PATH") %></option>
        <%
        end if
        RS1.MOVENEXT
        LOOP
        RS1.CLOSE
        %> 
        </select>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">С���</td>
      <td width="79%" class="main"> 
        <select name="s_id">
          <option value="">С���</option>
          <%
			IF REQUEST("B_ID") <> "" THEN
			SQL = "SELECT * FROM S_SHORT WHERE B_ID = '" & REQUEST("B_ID") & "'"
			RS1.Open SQL,CONN,adOpenKeyset ,adLockReadOnly
				DO WHILE NOT RS1.EOF 
				IF REQUEST("S_ID") = RS1("S_ID") THEN
			%> 
          <option value="<%=RS1("S_ID")%>" SELECTED><%=RS1("C_NAME")%>-<%=rs1("img_path") %></option>
          <%
			END IF
        		%> 
          <option value="<%=RS1("S_ID")%>"><%=RS1("C_NAME")%>-<%=rs1("img_path") %></option>
          <%
				RS1.MoveNext 
				LOOP
			RS1.Close 
			END IF
			%> 
        </select>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">���أ�</td>
      <td width="79%" class="main"> 
        <select name="state">
        <%
			SQL = "SELECT * FROM COUNTRY  ORDER BY SHORT"
			RS1.Open SQL,CONN,adOpenKeyset ,adLockReadOnly
				DO WHILE NOT RS1.EOF 
				if Request("state") = rs1("state") then
				%> 
          <option value="<%=Rs1("state")%>" selected><%=RS1("C_NAME")%></option>
          <%
				else
				%> 
          <option value="<%=RS1("state")%>" ><%=RS1("C_NAME")%></option>
          <%
				end if
				RS1.MoveNext 
				LOOP
			RS1.Close 
			
        %> 
        </select>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">��վ����Ŀ��</td>
      <td width="79%" class="main"> 
        <select name="p_class_no" onChange="GoToURL()">
          <option value="">��վ����Ŀ</option>
          <%
        SQL = "SELECT * FROM P_CLASS"
        RS1.OPEN SQL,CONN,1,1
        DO WHILE NOT RS1.EOF 
        IF Request("p_class_no") = rs1("p_class_no") Then
        %>
        <option value="<%=RS1("p_class_no")%>" SELECTED><%=RS1("p_class_NAME")%>-<%=RS1("img_path") %></option>
        <%
        else
        %>
        <option value="<%=RS1("p_class_no")%>" ><%=RS1("p_class_NAME")%>-<%=RS1("img_path") %></option>
        <%
        end if
        RS1.MOVENEXT
        LOOP
        RS1.CLOSE
        %> 
        </select>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">��վ����Ŀ��</td>
      <td width="79%" class="main"> 
        <select name="class_no" onChange="GoToURL()">
          <option value="">��վ����Ŀ</option>
          <%
			IF REQUEST("p_class_no") <> "" THEN
			SQL = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '" & REQUEST("P_CLASS_NO") & "' ORDER BY CLASS_NO"
			RS1.Open SQL,CONN,adOpenKeyset ,adLockReadOnly
				DO WHILE NOT RS1.EOF 
				if Request("class_no") = rs1("class_no") then
				%> 
          <option value="<%=Rs1("CLASS_NO")%>" selected><%=RS1("CLASS_NAME")%>-<%=rs1("IMG_PATH") %></option>
          <%
				else
				%> 
          <option value="<%=RS1("CLASS_NO")%>" ><%=RS1("CLASS_NAME")%>-<%=rs1("IMG_PATH") %></option>
          <%
				end if
				RS1.MoveNext 
				LOOP
			RS1.Close 
			END IF
        %> 
        </select>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">����</td>
      <td width="79%" class="main"><small><font face="Verdana"> 
        <input type="TEXT" name="climate" value="" size="40">
        </font></small></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">���ã�</td>
      <td width="79%" class="main"> 
        <input type="text" name="econnmy" size="40">
      </td>
    </tr>
	 <tr bgcolor="#FFFFFF">
					<td width="21%" class="main"><font color=red>������������˵����</font></td>
					<td width="79%" class="main">
						<font color=red>��Ҫ������г��챨����Դ������дĬ���ǡ��Լ���д����ÿ�գ�15��00�����Զ����㣬������������ר�˳����ˣ�����ֻ�����ӣ��޷��޸ģ���</font>
					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="21%" class="main">��Ϣѯ���ˣ�</td>
					<td width="79%" class="main"><input type="text" name="person_ly" size="40"><font color=red>�������챨���ʵ���˭����</font>
							
					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="21%" class="main">��ϵ��ʽ��</td>
					<td width="79%" class="main"><input type="text" name="fangshi_ly" size="40"><font color=red>���绰��MSN��QQ��Ҫд��ϸ�ģ�</font>
						
					</td>
				</tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">���ϱ��⣺</td>
      <td width="79%" class="main"><small><font face="Verdana"> 
        <input type="text" name="info_title" size="50">
        </font></small>
           <input type="radio" name="colorxz" checked value="">
            ����
             <input type="radio" name="colorxz" value="���">
            ���</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">��飺</td>
      <td width="79%" class="main"> 
        <textarea name="info_desc" rows="10" cols="60"></textarea>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�Ƿ���HTML��ʽ��</td>
      <td width="79%" class="main"> 
        <input type="radio" name="if_html" value="��">
        �� 
        <input type="radio" name="if_html" value="��" checked>
        �� </td>
    </tr>
      <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�����ַ�����</td>
      <td width="79%" class="main"> 
        <input type="text" name="info_find" size="30">
      
        <select name="info_find1">
        <option value="" selected>������ڻ���ѡ��</option>
          <%
			SQL = "SELECT * FROM S_SHORT WHERE B_ID = '1019'"
			RS1.Open SQL,CONN,adOpenKeyset ,adLockReadOnly
				DO WHILE NOT RS1.EOF 
				%> 
          <option value="<%=RS1("S_ID")%>"><%=RS1("C_NAME")%></option>
          <%
				RS1.MoveNext 
				LOOP
			RS1.Close 
			%> 
        </select>
        ��<font color=red>ע�����ڻ���ѡ</font>��
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color=red>��ز�ѯ�ַ���</font></td>
      <td width="79%" class="main"><small> 
        <input type="text" name="info_corre" size="30">
        <span class="main"> ��������صĹؼ��ַ���</span></small></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">������Դ��</td>
      <td width="79%" class="main"> 
        <input type="text" name="info_source" size="30">
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">���ߣ� </td>
      <td width="79%" class="main"><small><font face="Verdana"> 
        <input type="text" name="author" size="20">
        </font></small></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">��ע��</td>
      <td width="79%" class="main"><small><font face="Verdana"> 
        <input type="text" name="remark" size="50">
        </font></small></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">���±�ţ�</td>
      <td width="79%" class="main"> 
        <input type="text" name="s_article_no" size="30">
      </td>
    </tr>
	  <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�ֻ�ͼƬ��</td>
      <td width="79%" class="main"> 
		 <input type="text" name="s_pic" size="16"><font color=red>����ͼƬ�������������ϵͳĬ��ͼƬ����������䱾Ʒ���µ�ͼƬ</font>
       </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�ֻ�����飺</td>
      <td width="79%" class="main"> 
		 <textarea name="x_article_no" rows="3" cols="60"></textarea>
       </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�Ƿ����������</td>
      <td width="79%" class="main"> 
        <input type="radio" name="nw" value="��" checked>
        �� 
        <input type="radio" name="nw" value="��">
        �� </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">ר����أ�</td>
      <td width="79%" class="main"> 
		<select name="ZT_NO">
        <option value="N" selected>ר��ѡ��</option>
        <%
				SQL1 = "SELECT * FROM SPECAIL "
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
				    <option value="<%=RS1("SPECAIL_NO")%>"><%=RS1("SPECAIL_NAME")%></option>
		           <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %>
   </select>				  </td>
    </tr>
	 <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">ʡ��ѡ��</td>
		  <td width="79%" class="main">
		  	<select name="CITY">
       <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="����">����</option>
		 <option value="����">����</option>
		 <option value="�㶫" >�㶫</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="�ӱ�" >�ӱ�</option>
		 <option value="����" >����</option>
		 <option value="������" >������</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="����" >����</option>
		 <option value="���ɹ�" >���ɹ�</option>
		 <option value="����" >����</option>
		 <option value="�ຣ" >�ຣ</option>
		 <option value="ɽ��" >ɽ��</option>
		 <option value="ɽ��" >ɽ��</option>
		 <option value="����" >����</option>
		 <option value="�Ϻ�" >�Ϻ�</option>
		 <option value="�Ĵ�" >�Ĵ�</option>
		 <option value="���" >���</option>
		 <option value="����" >����</option>
		 <option value="�½�" >�½�</option>
		 <option value="����" >����</option>
		 <option value="�㽭" >�㽭</option>
		 <option value="����" >����</option>
		 <option value="����"  selected>����</option>
	
      
   </select>				  </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main" height="80">������</td>
      <td width="79%" class="main" height="80"> 
        <table width="100%" border="1" cellspacing="0" cellpadding="3" class="main" bordercolor="#000000" bordercolordark="#FFFFFF" bordercolorlight="#000000">
          <tr> 
            <td width="12%"><font color="#0000FF">���羭��</font></td>
            <td width="88%"> 
            <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990002'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="sjjj" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox1"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %>
               </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">����ũҵ</font></td>
            <td width="88%"> 
               <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990010'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="ggny" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox2"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %></td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">������ֳ</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990012'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="slyz" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox3"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">����Ԥ��</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990005'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="qxyb" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox4"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">�ۿں���</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990013'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="gkhg" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox5"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">ͳ������</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990016'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="tjzl" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox6"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %>  </td>
          </tr><tr> 
            <td width="12%"><font color="#0000FF">�۸�����</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990004'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="jgqs" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox7"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
               </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">���߶�̬</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990014'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="zcdt" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox8"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %>  </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">�ۺ���Ѷ</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990015'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="zhzx" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox9"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">Ʒ��Ƶ��</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990001'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="pzpd" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox10"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">��ҵ��̬</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990026'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="hydt" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox11"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %>  </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">�ڻ��ټ�</font></td>
            <td width="88%"> 
              <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990018'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="qhbj" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox12"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
            
             </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">����ͼ��</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990023'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="spzs" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox13"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
             </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">��ҵ����</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990022'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="zztz" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox14"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
             </td>
          </tr>
          <tr> 
            <td width="12%"><font color="#0000FF">�˷ѻ���</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990021'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="yfjc" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox15"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
             </td>
          </tr>
			  <tr> 
            <td width="12%"><font color="#0000FF">������Ѷ</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990027'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="hyzx" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox15"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
             </td>
          </tr>
			 <tr> 
            <td width="12%"><font color="#0000FF">�г�����</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990028'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="sclr" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox15"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
             </td>
          </tr>
			 <tr> 
            <td width="12%"><font color="#0000FF">����ͳ��</font></td>
            <td width="88%"> 
             <%
				SQL1 = "SELECT * FROM S_CLASS WHERE P_CLASS_NO = '990029'"
				RS1.Open SQL1,CONN,adOpenKeyset ,adLockReadOnly
					DO WHILE NOT RS1.EOF 
            %>
			  <input type="checkbox" name="zftj" value="<%=RS1("CLASS_NO")%>"  ID="Checkbox15"><%=RS1("CLASS_NAME")%>
              <%
					RS1.MoveNext 
					LOOP
					RS1.Close 
              %> 
             </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�Ƿ���Ҫ��ˣ�</td>
      <td width="79%" class="main"> 
        <input type="radio" name="ifsh" value="��" onClick=retable();>
        �� 
        <input type="radio" name="ifsh" value="��" onClick=retable1(); checked>
        �� &nbsp;<font color=red>�������Ҫ��ˣ����������ʱ�䣺</font> <%if hour(now()) < 21 then%> 
        <input type="text" name="check_date" size="16" value="<%=date%>">
        <%
         else
			week_day = weekday(date)
			if week_day = 6 then
         %> 
        <input type="text" name="check_date" size="16" value="<%=date()+3%>">
        <%
			else
         %> 
        <input type="text" name="check_date" size="16" value="<%=date()+1%>">
        <%
			end if
         end if
         %> </td>
    </tr>
       <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�Ƿ��ۺϱ�����</td>
      <td width="79%" class="main"> 
        <input type="radio" name="ifzh" value="��" >
        �� 
        <input type="radio" name="ifzh" value="��" checked>
        �� </td>
    </tr>
    
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main">�ر��Ƽ���ʱ�䣺</td>
      <td width="79%" class="main">����Ƽ����������Ƽ�ʱ�䣺 <%if hour(now()) < 21 then%> 
        <input type="text" name="tbtj_date" size="16" value="<%=date%>">
        <%
         else
			week_day = weekday(date)
			if week_day = 6 then
         %> 
        <input type="text" name="tbtj_date" size="16" value="<%=date()+3%>">
        <%
			else
         %> 
        <input type="text" name="tbtj_date" size="16" value="<%=date()+1%>">
        <%
			end if
         end if
         %> &nbsp;</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color="#0000FF">�Ƿ��ر��Ƽ���</font></td>
      <td width="79%" class="main"> 
        <input type="radio" name="if_zj" value="��" >
        �� 
        <input type="radio" name="if_zj" value="��" checked>
        �� ��<font color="#FF0000">�����ر��Ƽ���λ��</font>��</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color="#0000FF">�Ƿ�<font color=red>��ǰҪ��</font>����</font></td>
      <td width="79%" class="main"> 
        <input type="radio" name="if_mf" value="��" >
        �� 
        <input type="radio" name="if_mf" value="��" checked>
        �� ��<font color="#FF0000"> ���������λ��</font>��</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color=red>�Ƿ����</font></td>
      <td width="79%" class="main"> 
        <input type="radio" name="if_zk" value="��">
        �� 
        <input type="radio" name="if_zk" value="��"  checked>
        �� ��<font color=red>����Ҫ����Ϳ������</font>��</td>
    </tr>
	 <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color="#0000FF">�Ƿ��ö���</font></td>
      <td width="79%" class="main"> 
        <input type="radio" name="if_zd" value="��">
        �� 
        <input type="radio" name="if_zd" value="��"  checked>
        �� ��  <select name="zd_date">
       <option value="5" selected>5��</option>
        <option value="10">10��</option>
<option value="15">15��</option>
<option value="20">20��</option>
<option value="25">25��</option>
<option value="30">30��</option>
        </select>��</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color="#0000FF">Ʒ����أ�</font></td>
      <td width="79%" class="main"> 
		<%
			SQL = "SELECT * FROM B_SHORT"
			RS1.Open SQL,CONN,adOpenKeyset ,adLockReadOnly
				DO WHILE NOT RS1.EOF 
				%>
				<input type="checkbox" name="mypzxg" value="<%=RS1("B_ID")%>"  ><%=RS1("C_NAME")%>
				<%
				RS1.MoveNext 
				LOOP
			RS1.Close 
		%><p></p>
		<%
			SQL = "SELECT * FROM S_SHORT where b_id <>'1019'"
			RS1.Open SQL,CONN,adOpenKeyset ,adLockReadOnly
				DO WHILE NOT RS1.EOF 
				%>
				<input type="checkbox" name="mypzxg" value="<%=RS1("S_ID")%>" ID="Check1"><%=RS1("C_NAME")%>
				<%
				RS1.MoveNext 
				LOOP
			RS1.Close 
		%>
      </td>
    </tr>
	 <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color="#0000FF">����Ȩ�ޣ�</font></td>
      <td width="79%" class="main"> 
        <select name="jibie">
       <option value="0" selected>0</option>
        <option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
        </select>
		  0Ϊ���缶��3Ϊ��ѯ����4���ʼ���
		  </td>
    </tr>
	  <tr bgcolor="#FFFFFF"> 
      <td width="21%" class="main"><font color="red">���ã�</font></td>
      <td width="79%" class="main"> 
        <select name="fee">
		  <option value="0.5">0.5</option>
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
         <option value="15">15</option>
			<option value="20">20</option>
			<option value="25">25</option>
			<option value="30">30</option>
			<option value="35">35</option>
			<%
			'��ѯ��������
			SQL = "SELECT TOP 1 PLATE FROM S_CLASS WHERE IMG_PATH='��' AND CLASS_NO='" & Request("class_no") & "'"
				RS.Open SQL,CONN,1,1
					IF RS.RecordCount >0 THEN
					%>
					<option value="<%=RS("PLATE")%>" selected><%=RS("PLATE")%></option>
					<%
					END IF
				RS.CLOSE 
			%>
        </select>
      </td>
    </tr>
	 
    <tr bgcolor="#FFFFFF"> 
      <td colspan="2"> 
        <div align="center"><br>
          <input type="submit" name="Submit" value="�ύ����" onClick="return checkIn();">
          <input type="reset" name="Submit2" value="������Ϣ">
          <input type="button" name="home" value="��    ��" onClick=history.back();>
        </div>
      </td>
  </table>
</form>
</body>
</html>