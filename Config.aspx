<%@ Page Language="c#" Inherits="AyWeb.WebUI.Admin.Config" Codebehind="Config.aspx.cs" AutoEventWireup="True" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="Server">
<title>ϵͳ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE2 {
	color: #FF6600
}
-->
</style>
<script type="text/javascript" language="JavaScript">
///----������غ���
function SelectFile(objID,ChannelID)
{
	var result = window.showModalDialog('Browse.html?url=UploadPicForm.aspx?ChannelID='+ChannelID, "�ϴ�ͼƬ", 'dialogWidth:340px; dialogHeight:200px; center:yes; help:no; resizable:no; scroll:no; status:no; unadorned:no; dialogHide:yes');
	if(result)
	{
		document.getElementById(objID).value = result;
	}
}
</script>
<script src="/aspnet_client/web/WebControls/Pannel/tabpane.js" language="JavaScript"></script>
<link href="/aspnet_client/web/WebControls/Pannel/tabpane.CSS" rel="stylesheet" type="text/css" />
<script language="javascript" src="/aspnet_client/web/WebControls/htmlarea/HtmlArea.js"></script>
<script language="javascript" src="/Server/Js/Common.js"></script>
</head>
<body>
<form id="Form1" method="post" runat="server">
   <table width="100%" border="0" bgcolor="#A4B6D7" align="center" cellPadding="2" cellSpacing="1">
    <tr>
      <td class="BackTitle" height="22" colspan="2"><div align="center"><font class="font_title">
          ϵͳ����
          </font></div></td>
    </tr>
    <tr>
      <td align="right" bgcolor="white"><asp:Button id="btnSave" runat="server" Text="�޸�����" CssClass="htc_btn" onclick="btnSave_Click"></asp:Button>
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="�ָ�Ĭ��ֵ" CssClass="htc_btn"></asp:Button>
      </td>
    </tr>
  </table>
  <table width="100%" cellspacing="1" cellpadding="1" align="Center" border="0">
  <tr>
    <td>
      <div class=tab-page id="ArticlePane">
        <script type=text/javascript>  
var tabPane1 = new WebFXTabPane(document.getElementById("ArticlePane"),"true")
</script>
        <div class=tab-page id=BBS>
          <h2 class=tab>����ѡ��</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "BBS" ) );	</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>�Ƿ��������ģʽ��
                  </div></td>
              <td height=21><asp:CheckBox ID="BBS_CheckTF" runat="server" /><font 
      color=red>����򹴣����������Ա��뾭����˲�����ǰ̨��ʾ��</font></td></tr>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>�����б���ʾ��Ϣ����</div></td>
              <td height=21><input name="BBS_PageSize" class="htc_txt" id="BBS_PageSize" value="10" size="5" runat="server" />
			  <font 
      color=red>ÿһҳ�����б�Ĭ����ʾ����Ϣ������СΪ10����</font>
			  </td></tr>
            
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>�������ݳ��ȿ��ƣ�</div>
                </td>
              <td height=30><input name="BBS_ContentLen" class="htc_txt" id="BBS_ContentLen" value="200" size="5" runat="Server" />
			  <font 
      color=red>�����������ݵĳ��ȣ��������ó�200(����)</font>
			  </td></tr>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td vAlign=top width="32%" height=21>&nbsp;&nbsp;
                <div align=right>Ҫ���εĹؼ��֣�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </td>
              <td height=30>
			  <font 
      color=red>�±�����Ҫ���˵��ַ�,ÿ�������ַ��ûس��ָ��</font>
			  <textarea name="BBS_BadWords" rows="5" cols="60" class="htc_txt" id="BBS_BadWords" runat="server"></textarea></td>
            </tr>
          </table>
        </div>
        <div class=tab-page id=Folder>
          <h2 class=tab>Ŀ¼ѡ��</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "Folder" ) );</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
           <tr bgcolor="#f7f7f7">
              <td width="19%" align="right">��ҳ�ļ�����</td>
              <td >
              <asp:RadioButtonList ID="Folder_IndexFile" runat="server" RepeatColumns="4" RepeatDirection="horizontal" RepeatLayout="flow">
              <asp:ListItem Value="Index">Index</asp:ListItem>
              <asp:ListItem Value="Default">Default</asp:ListItem>
              </asp:RadioButtonList>
              <font color=#ff0000>���鲻Ҫ�޸�</font>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">�ļ���׺��</td>
              <td><asp:DropDownList id="Folder_FileExt" runat="server">
              <asp:ListItem Value=".htm">.htm</asp:ListItem>
              <asp:ListItem Value=".html">.html</asp:ListItem>
              <asp:ListItem Value=".shtml">.shtml</asp:ListItem>
              <asp:ListItem Value=".asp">.asp</asp:ListItem>
              <asp:ListItem Value=".aspx">.aspx</asp:ListItem>
              </asp:DropDownList>
              <font color=#ff0000>���鲻Ҫ�޸�</font>
			  </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">��ҳ���ƣ�</td>
              <td><asp:TextBox id="Folder_IndexTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">�������ƣ�</td>
              <td><asp:TextBox id="Folder_NewsTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">��Ʒ���ƣ�</td>
              <td><asp:TextBox id="Folder_ProductTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">�������ƣ�</td>
              <td><asp:TextBox id="Folder_DownLoadTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">��ҵ��ϢĿ¼��</td>
              <td><asp:TextBox id="Folder_Company" Text="Company/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">����Ŀ¼��</td>
              <td><asp:TextBox id="Folder_News" Text="News/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">��ƷĿ¼��</td>
              <td><asp:TextBox id="Folder_Product" Text="Product/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">����Ŀ¼��</td>
              <td><asp:TextBox id="Folder_DownLoad" Text="DownLoad/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
          </table>
        </div>
        <div class=tab-page id=Upload>
          <h2 class=tab>�ϴ�����</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "Upload" ) );	</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
            <tr bgcolor="#f7f7f7">
              <td align="right">Ĭ���ϴ�Ŀ¼��</td>
              <td ><asp:TextBox id="Upload_Folder" runat="server" Width="150px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">Ĭ�������ϴ��ļ���С��</td>
              <td ><asp:TextBox id="Upload_DefaultFileSize" runat="server" Width="150px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
                KB �� <span class=STYLE2>��ʾ��1 KB = 1024 Byte��1 MB = 
                1024 KB</span></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">Ĭ�������ϴ��ļ����ͣ�</td>
              <td ><asp:TextBox id="Upload_DefaultFileType" runat="server" Width="150px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
      <td  align="right">Ĭ�������ϴ�ͼƬ��С��</td>
      <td ><input id="txt_DefaultPicSize" type="text" class="htc_txt"  size="6" runat="server">
        &nbsp;K&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td  align="right">Ĭ�������ϴ�ͼƬ���ͣ�</td>
      <td ><input id="txt_DefaultPicType" type="text" class="htc_txt"  size="20" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td height="16"></td>
      <td></td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td align="right" >����Ԥ��ͼƬ��С��</td>
      <td ><select id="ddl_SmallType" runat="server">
          <option value="HW">ָ���߿����ţ����ܱ��Σ�</option>
          <option value="W">ָ�����߰�����</option>
          <option value="H">ָ���ߣ�������</option>
          <option value="Cut">ָ���߿�ü��������Σ�</option>
        </select></td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td  align="right">����ͼ��С���ã�</td>
      <td >W��
        <input type="text" class="htc_txt" id="txt_SmallW" value="120" size=10 runat="server">
        px 
    </tr>
    <tr bgcolor="#f7f7f7">
      <td></td>
      <td>H��
        <input type="text" class="htc_txt" id="txt_SmallH" value="100" size=10 runat="server">
        px </td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td height="16"></td>
      <td></td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td width="40%"  align="right">ˮӡ���ÿ��أ�</td>
      <td width="60%">
      <asp:DropDownList id="ddlWaterType" runat="server" AutoPostBack="True">
      <asp:ListItem Value="0">�ر�ˮӡЧ��</asp:ListItem>
      <asp:ListItem Value="1">ˮӡ����Ч��</asp:ListItem>
      <asp:ListItem Value="2">ˮӡͼƬЧ��</asp:ListItem>
      </asp:DropDownList>
        <span class=STYLE2>��ʾ��ˮӡͼƬֻ������JPG,GifͼƬ</span>
        </td>
    </tr>
     <tr id="trWaterText" bgcolor="#f7f7f7" runat="server" visible="false">
      <td  align="right" width="19%">ˮӡ������Ϣ��</td>
      <td  width="20%"><input type="text" class="htc_txt" id="txt_WaterText"  size="20" runat="server"></td>
    </tr>
    <tr id="trWaterPhoto" bgcolor="#f7f7f7" runat="server" visible="false">
      <td  align="right" width="19%">ˮӡͼƬ��ַ��</td>
      <td  width="20%"><input type="text" class="htc_txt" id="txt_WaterPhoto"  size="20" runat="server">
      <a href="javascript:DispTitleImg('<%= txt_WaterPhoto.ClientID %>','lyTitleImg1');" title="�����ʾ/����">Ԥ��</a>
          <span id="lyTitleImg1" style="position:absolute;background:#cccccc;padding:3px;border:1px double #666666;overflow:auto;display:none"></span>
      <img src="../Images/img.gif" onClick="Javascript:SelectFile('txt_WaterPhoto',4)" align="absmiddle" style="cursor:hand;" title="ѡ��ͼƬ" /> <img src="../Images/trash.gif" onClick="Javascript:txt_WaterPhoto.value='';" align="absmiddle" style="cursor:hand;" title="���ͼƬ��ַ" />&nbsp;
      </td>
    </tr>
   
          </table>
        </div>
        <div class=tab-page id=User>
          <h2 class=tab>��Աѡ��</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "User" ) );</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
            <tr bgcolor="#f7f7f7" vAlign=center> ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
              <td width="15%" height=21>
              <div align=right>�Ƿ������»�Աע�᣺</div></td>
              <td height=21><asp:CheckBox ID="User_RegTF" runat="server" /> </td></tr>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td height=21>&nbsp;&nbsp;
                <div align=right>�»�Աע����Ҫ�Ķ���ԱЭ�飺</div></td>
              <td height=21><asp:CheckBox ID="User_ReadLicenseTF" runat="server"></asp:CheckBox>
              </td>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>&nbsp;&nbsp;
                <div align=right>�»�Աע����������������<br>
                  <br>
                </div>
              </td>
              <td height=21>
              <asp:TextBox id="User_RegLicense" Runat="server" TextMode="MultiLine" Rows="8" Columns="48" CssClass="input"></asp:TextBox>
<script language="javascript1.2">
editor_generate('<%= User_RegLicense.ClientID %>');
</script>
              </td></tr>
              

            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>�»�Աע���Ƿ���Ҫ��̨��֤��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </td>
              <td height=21><asp:CheckBox ID="User_AdminCheckTF" runat="server" />
			  <font 
      color=red>���򹴣�����ע��Ļ�Ա��Ҫ�������ܵ�¼</font>
              </td>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>&nbsp;&nbsp;
                <div align=right>��ֹע����û�����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </td>
              <td height=21>
			  <font 
      color=red>���±�ָ�����û���������ֹע�ᣬÿ���û������á�|�����ŷָ�</font>
			  <textarea id="User_EnabledRegUser" class="htc_txt" rows="5" cols="60" runat="Server"></textarea>
              </td>
              </tr>
          </table>
        </div>
   
</form>
</body>
</html>
