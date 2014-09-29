<%@ Page Language="c#" Inherits="AyWeb.WebUI.Admin.Config" Codebehind="Config.aspx.cs" AutoEventWireup="True" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="Server">
<title>系统设置</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE2 {
	color: #FF6600
}
-->
</style>
<script type="text/javascript" language="JavaScript">
///----附件相关函数
function SelectFile(objID,ChannelID)
{
	var result = window.showModalDialog('Browse.html?url=UploadPicForm.aspx?ChannelID='+ChannelID, "上传图片", 'dialogWidth:340px; dialogHeight:200px; center:yes; help:no; resizable:no; scroll:no; status:no; unadorned:no; dialogHide:yes');
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
          系统设置
          </font></div></td>
    </tr>
    <tr>
      <td align="right" bgcolor="white"><asp:Button id="btnSave" runat="server" Text="修改设置" CssClass="htc_btn" onclick="btnSave_Click"></asp:Button>
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="恢复默认值" CssClass="htc_btn"></asp:Button>
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
          <h2 class=tab>留言选项</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "BBS" ) );	</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>是否启动审核模式：
                  </div></td>
              <td height=21><asp:CheckBox ID="BBS_CheckTF" runat="server" /><font 
      color=red>如果打勾，发布的留言必须经过审核才能在前台显示。</font></td></tr>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>留言列表显示信息数：</div></td>
              <td height=21><input name="BBS_PageSize" class="htc_txt" id="BBS_PageSize" value="10" size="5" runat="server" />
			  <font 
      color=red>每一页留言列表默认显示的信息数，最小为10条。</font>
			  </td></tr>
            
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>
                <div align=right>留言内容长度控制：</div>
                </td>
              <td height=30><input name="BBS_ContentLen" class="htc_txt" id="BBS_ContentLen" value="200" size="5" runat="Server" />
			  <font 
      color=red>允许留言内容的长度，建议设置成200(汉字)</font>
			  </td></tr>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td vAlign=top width="32%" height=21>&nbsp;&nbsp;
                <div align=right>要屏蔽的关键字：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </td>
              <td height=30>
			  <font 
      color=red>下边设置要过滤的字符,每个过滤字符用回车分割开。</font>
			  <textarea name="BBS_BadWords" rows="5" cols="60" class="htc_txt" id="BBS_BadWords" runat="server"></textarea></td>
            </tr>
          </table>
        </div>
        <div class=tab-page id=Folder>
          <h2 class=tab>目录选项</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "Folder" ) );</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
           <tr bgcolor="#f7f7f7">
              <td width="19%" align="right">首页文件名：</td>
              <td >
              <asp:RadioButtonList ID="Folder_IndexFile" runat="server" RepeatColumns="4" RepeatDirection="horizontal" RepeatLayout="flow">
              <asp:ListItem Value="Index">Index</asp:ListItem>
              <asp:ListItem Value="Default">Default</asp:ListItem>
              </asp:RadioButtonList>
              <font color=#ff0000>建议不要修改</font>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">文件后缀：</td>
              <td><asp:DropDownList id="Folder_FileExt" runat="server">
              <asp:ListItem Value=".htm">.htm</asp:ListItem>
              <asp:ListItem Value=".html">.html</asp:ListItem>
              <asp:ListItem Value=".shtml">.shtml</asp:ListItem>
              <asp:ListItem Value=".asp">.asp</asp:ListItem>
              <asp:ListItem Value=".aspx">.aspx</asp:ListItem>
              </asp:DropDownList>
              <font color=#ff0000>建议不要修改</font>
			  </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">首页名称：</td>
              <td><asp:TextBox id="Folder_IndexTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">新闻名称：</td>
              <td><asp:TextBox id="Folder_NewsTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">产品名称：</td>
              <td><asp:TextBox id="Folder_ProductTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">下载名称：</td>
              <td><asp:TextBox id="Folder_DownLoadTitle" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
              </td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">企业信息目录：</td>
              <td><asp:TextBox id="Folder_Company" Text="Company/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">新闻目录：</td>
              <td><asp:TextBox id="Folder_News" Text="News/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">产品目录：</td>
              <td><asp:TextBox id="Folder_Product" Text="Product/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">下载目录：</td>
              <td><asp:TextBox id="Folder_DownLoad" Text="DownLoad/" runat="server" Width="200px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
          </table>
        </div>
        <div class=tab-page id=Upload>
          <h2 class=tab>上传设置</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "Upload" ) );	</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
            <tr bgcolor="#f7f7f7">
              <td align="right">默认上传目录：</td>
              <td ><asp:TextBox id="Upload_Folder" runat="server" Width="150px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">默认允许上传文件大小：</td>
              <td ><asp:TextBox id="Upload_DefaultFileSize" runat="server" Width="150px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox>
                KB 　 <span class=STYLE2>提示：1 KB = 1024 Byte，1 MB = 
                1024 KB</span></td>
            </tr>
            <tr bgcolor="#f7f7f7">
              <td align="right">默认允许上传文件类型：</td>
              <td ><asp:TextBox id="Upload_DefaultFileType" runat="server" Width="150px" TextMode="SingleLine" CssClass="htc_txt"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#f7f7f7">
      <td  align="right">默认允许上传图片大小：</td>
      <td ><input id="txt_DefaultPicSize" type="text" class="htc_txt"  size="6" runat="server">
        &nbsp;K&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td  align="right">默认允许上传图片类型：</td>
      <td ><input id="txt_DefaultPicType" type="text" class="htc_txt"  size="20" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td height="16"></td>
      <td></td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td align="right" >生成预览图片大小：</td>
      <td ><select id="ddl_SmallType" runat="server">
          <option value="HW">指定高宽缩放（可能变形）</option>
          <option value="W">指定宽，高按比例</option>
          <option value="H">指定高，宽按比例</option>
          <option value="Cut">指定高宽裁减（不变形）</option>
        </select></td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td  align="right">缩略图大小设置：</td>
      <td >W：
        <input type="text" class="htc_txt" id="txt_SmallW" value="120" size=10 runat="server">
        px 
    </tr>
    <tr bgcolor="#f7f7f7">
      <td></td>
      <td>H：
        <input type="text" class="htc_txt" id="txt_SmallH" value="100" size=10 runat="server">
        px </td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td height="16"></td>
      <td></td>
    </tr>
    <tr bgcolor="#f7f7f7">
      <td width="40%"  align="right">水印设置开关：</td>
      <td width="60%">
      <asp:DropDownList id="ddlWaterType" runat="server" AutoPostBack="True">
      <asp:ListItem Value="0">关闭水印效果</asp:ListItem>
      <asp:ListItem Value="1">水印文字效果</asp:ListItem>
      <asp:ListItem Value="2">水印图片效果</asp:ListItem>
      </asp:DropDownList>
        <span class=STYLE2>提示：水印图片只适用于JPG,Gif图片</span>
        </td>
    </tr>
     <tr id="trWaterText" bgcolor="#f7f7f7" runat="server" visible="false">
      <td  align="right" width="19%">水印文字信息：</td>
      <td  width="20%"><input type="text" class="htc_txt" id="txt_WaterText"  size="20" runat="server"></td>
    </tr>
    <tr id="trWaterPhoto" bgcolor="#f7f7f7" runat="server" visible="false">
      <td  align="right" width="19%">水印图片地址：</td>
      <td  width="20%"><input type="text" class="htc_txt" id="txt_WaterPhoto"  size="20" runat="server">
      <a href="javascript:DispTitleImg('<%= txt_WaterPhoto.ClientID %>','lyTitleImg1');" title="点击显示/隐藏">预览</a>
          <span id="lyTitleImg1" style="position:absolute;background:#cccccc;padding:3px;border:1px double #666666;overflow:auto;display:none"></span>
      <img src="../Images/img.gif" onClick="Javascript:SelectFile('txt_WaterPhoto',4)" align="absmiddle" style="cursor:hand;" title="选择图片" /> <img src="../Images/trash.gif" onClick="Javascript:txt_WaterPhoto.value='';" align="absmiddle" style="cursor:hand;" title="清空图片地址" />&nbsp;
      </td>
    </tr>
   
          </table>
        </div>
        <div class=tab-page id=User>
          <h2 class=tab>会员选项</h2>
          <script type=text/javascript>				
	 tabPane1.addTabPage( document.getElementById( "User" ) );</script>
          <table width="98%" border=0 cellpadding=2 cellspacing=1 bgcolor="#ffffff" align="center">
            <tr bgcolor="#f7f7f7" vAlign=center> 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
              <td width="15%" height=21>
              <div align=right>是否允许新会员注册：</div></td>
              <td height=21><asp:CheckBox ID="User_RegTF" runat="server" /> </td></tr>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td height=21>&nbsp;&nbsp;
                <div align=right>新会员注册需要阅读会员协议：</div></td>
              <td height=21><asp:CheckBox ID="User_ReadLicenseTF" runat="server"></asp:CheckBox>
              </td>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>&nbsp;&nbsp;
                <div align=right>新会员注册服务条款和声明：<br>
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
                <div align=right>新会员注册是否需要后台验证：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </td>
              <td height=21><asp:CheckBox ID="User_AdminCheckTF" runat="server" />
			  <font 
      color=red>若打勾，则新注册的会员需要审批才能登录</font>
              </td>
            <tr bgcolor="#f7f7f7" vAlign=center>
              <td width="32%" height=21>&nbsp;&nbsp;
                <div align=right>禁止注册的用户名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </td>
              <td height=21>
			  <font 
      color=red>在下边指定的用户名将被禁止注册，每个用户名请用“|”符号分隔</font>
			  <textarea id="User_EnabledRegUser" class="htc_txt" rows="5" cols="60" runat="Server"></textarea>
              </td>
              </tr>
          </table>
        </div>
   
</form>
</body>
</html>
