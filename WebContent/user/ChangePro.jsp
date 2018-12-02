<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
    
<%-- �ڹٺ� Ŭ���� import --%>      
<%@ page import="jsp.member.model.MemberBean" %>  
<%-- DAO import --%>   
<%@ page import="jsp.member.model.MemberDAO" %> 
 
<html>
<head>
    <title>ȸ������ ó�� JSP</title>
    
    <!-- css ���� �и� -->
    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
    
</head>
<body>
    <%-- JoinForm.jsp���� �Է��� ������ �Ѱ� �޾� ó���Ѵ�. --%>
    <% 
        // �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
    %>
    
    <%-- �ڹٺ� ���� �׼��±� ��� --%>
    <jsp:useBean id="memberBean" class="jsp.member.model.MemberBean" />
    <jsp:setProperty property="*" name="memberBean"/>    
    
    <%
        MemberDAO dao = MemberDAO.getInstance();
    
        // ȸ�������� ����ִ� memberBean�� dao�� insertMember() �޼���� �ѱ��.
        // insertMember()�� ȸ�� ������ JSP_MEMBER ���̺��� �����Ѵ�.
        dao.changeData(memberBean);
    %>
    
    <div id="wrap">
        <br><br>
        <b><font size="5" color="gray">ȸ�� ���� ����</font></b>
        <br><br>
        <font color="blue"><%=memberBean.getId() %></font>�� ���� ���� ���
        <br><br>
        
        <%-- �ڹٺ󿡼� �Էµ� ���� �����Ѵ�. --%>
        <table>

                        
            <tr>
                <td id="title">��й�ȣ</td>
                <td><%=memberBean.getPassword() %></td>
            </tr>
                    

            <tr>
                <td id="title">�ּ�</td>
                <td>
                    <%=memberBean.getAddress() %>
                </td>
            </tr>
                    
            <tr>
                <td id="title">�޴���ȭ</td>
                <td><%=memberBean.getPhone() %></td>
            </tr>
            
            <tr>
                <td id="title">����</td>
                <td><%=memberBean.getGender()%></td>
            </tr>
            
            <tr>
                <td id="title">����</td>
                <td>
                    <%=memberBean.getAge() %>
                </td>
            </tr>
            <tr>
                <td id="title">�̸�</td>
                <td>
                    <%=memberBean.getName() %>
                </td>
            </tr>
            
            <tr>��
                <td id="title">����</td>
                <td>
                    <%=memberBean.getJob() %>
                </td>
            </tr>                       
            <tr>
                <td id="title">Ÿ��</td>
                <td>
                    <%=memberBean.getType() %>
                </td>
            </tr>
            <tr>
                <td id="title">���ȸ��</td>
                <td>
                    <%=memberBean.getShipcom_number() %>
                </td>
            </tr>                  
                    
                    
                    

        </table>
        
        <br>
        <input type="button" value="Ȯ��">
    </div>
</body>
</html>

