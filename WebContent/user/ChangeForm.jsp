<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <title>ȸ�� ���� ���� ȭ��</title>
    
    <!-- css ���� �и� -->
    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
 
    <script type="text/javascript">
    
        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue()
        {

            
            if(!document.userInfo.password.value){
                alert("������ ��й�ȣ�� �Է��ϼ���.");
                return false;
            }
            
            // ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("������ ��й�ȣ�� �����ϰ� �Է��ϼ���.");
                return false;
            }
        }
    </script>
    
</head>
<body>
    <!-- div ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">ȸ������ ����</font></b>
        <br><br><br>
        
        
        <!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
        <!-- ��(�Ķ����) ������ POST ���, ������ �������� JoinPro.jsp -->
        <form method="post" action="./ChangePro.jsp" name="userInfo" onsubmit="return checkValue()">
            <table>

                        
                <tr>
                    <td id="title">������ ��й�ȣ</td>
                    <td>
                        <input type="password" name="password" maxlength="50">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">������ ��й�ȣ Ȯ��</td>
                    <td>
                        <input type="password" name="passwordcheck" maxlength="50">
                    </td>
                </tr>                   
                <tr>
                    <td id="title">������ �ּ�</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>                                    
                <tr>
                    <td id="title">������ ��ȭ��ȣ</td>
                    <td>
                        <input type="text" name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">������ ����</td>
                    <td>
                        <input type="radio" name="gender" value="��" checked>��
                        <input type="radio" name="gender" value="��" checked>��
                    </td>
                </tr>    
                <tr>
                    <td id="title">������ ����</td>
                    <td>
                        <input type="text" name="age" />
                    </td>
                </tr>
                <tr>
                    <td id="title">������ �̸�</td>
                    <td>
                        <input type="text" name="name" />
                    </td>
                </tr>
                <tr>
                    <td id="title">������ ����</td>
                    <td>
                        <input type="text" name="job" />
                    </td>
                </tr>
                 <tr>
                    <td id="title">������ Ÿ��</td>
                    <td>
                        <input type="text" name="type" />
                    </td>
                </tr> 
                <tr>
                    <td id="title">������ ���ȸ��</td>
                    <td>
                        <input type="text" name="shipcom_number" />
                    </td>
                </tr>                                                

            </table>
            <br>
            <input type="submit" value="����"/>  <input type="button" value="���">
        </form>
    </div>
</body>
</html>

