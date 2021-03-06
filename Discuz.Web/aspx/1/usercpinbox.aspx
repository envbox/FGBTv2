<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.usercpinbox" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2015/1/7 16:52:13.
		本页面代码由Discuz!NT模板引擎生成于 2015/1/7 16:52:13. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	if (infloat!=1)
	{

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    ");
	if (pagetitle=="首页")
	{

	templateBuilder.Append("\r\n        <title>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n        <title>");
	templateBuilder.Append(pagetitle.ToString());
	templateBuilder.Append(" - ");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n    <meta name=\"generator\" content=\"Discuz!NT 3.6.711\" />\r\n    <meta name=\"author\" content=\"Discuz!NT Team and Comsenz UI Team\" />\r\n    <meta name=\"copyright\" content=\"2001-2011 Comsenz Inc.\" />\r\n    <meta http-equiv=\"x-ua-compatible\" content=\"edge\" />\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/privatebt.css?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\" type=\"text/css\" media=\"all\"  />\r\n    <link rel=\"icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n    <link rel=\"shortcut icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n    ");
	if (pagename!="website.aspx")
	{

	templateBuilder.Append("\r\n        <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/dnt.css?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\" type=\"text/css\" media=\"all\" />\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/float.css?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\" type=\"text/css\" />\r\n    ");
	if (isnarrowpage)
	{

	templateBuilder.Append("\r\n        <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/widthauto.css?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\" id=\"css_widthauto\" />\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n    <script type=\"text/javascript\">\r\n        var creditnotice='");
	templateBuilder.Append(Scoresets.GetValidScoreNameAndId().ToString().Trim());
	templateBuilder.Append("';	\r\n        var forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n    </");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/futuregarden.js?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(config.Jqueryurl.ToString().Trim());
	templateBuilder.Append("?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">jQuery.noConflict();</");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/common.js?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_report.js?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_utils.js?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/ajax.js?");
	templateBuilder.Append(CSSJSVersion.ToString());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n	    var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n	    var IMGDIR = '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("';\r\n        var disallowfloat = '");
	templateBuilder.Append(config.Disallowfloatwin.ToString().Trim());
	templateBuilder.Append("';\r\n	    var rooturl=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("\";\r\n	    var imagemaxwidth='");
	templateBuilder.Append(Templates.GetTemplateWidth(templatepath).ToString().Trim());
	templateBuilder.Append("';\r\n	    var cssdir='");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("';\r\n    </");
	templateBuilder.Append("script>\r\n    ");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n</head>");

	templateBuilder.Append("\r\n<body onkeydown=\"if(event.keyCode==27) return false;\">\r\n<div id=\"append_parent\"></div><div id=\"ajaxwaitid\"></div>\r\n<div id=\"submenu\">\r\n  ");
	if (userid>0&&pagename!="login.aspx"&&pagename!="logout.aspx"&&pagename!="register.aspx"&&pagename!="cngilogin.aspx")
	{

	templateBuilder.Append("\r\n	<div class=\"wrap s_clear\">\r\n		  <span class=\"submenuright\">\r\n        ");
	templateBuilder.Append(ipaddress_note.ToString());
	templateBuilder.Append("\r\n    </span>\r\n		欢迎 <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("userinfo.aspx?userid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a>\r\n  </div>\r\n  ");
	}	//end if

	templateBuilder.Append("\r\n</div>\r\n\r\n");
	if (headerad!="")
	{

	templateBuilder.Append("\r\n	<div id=\"ptnotice_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"hd\">\r\n	<div class=\"wrap\">\r\n		<div class=\"head cl\">\r\n			<h2><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("index.aspx\" title=\"");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/logo.png\" alt=\"");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("\"/></a></h2>\r\n			");
	if (userid>0)
	{

	templateBuilder.Append("\r\n			<div id=\"um\">\r\n				<div class=\"avt y\"><a alt=\"用户名称\" target=\"_blank\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\"><img src=\"");
	templateBuilder.Append(useravatar.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/common/noavatar_small.gif';\" /></a></div>\r\n				<p>\r\n                    ");	string linktitle = "";
	
	string showoverflow = "";
	

	if (oluserinfo.Newpms>0)
	{


	if (oluserinfo.Newpms>=1000)
	{

	 showoverflow = "大于";
	

	}	//end if

	 linktitle = "您有"+showoverflow+oluserinfo.Newpms+"条新短消息";
	

	}
	else
	{

	 linktitle = "您没有新短消息";
	

	}	//end if

	templateBuilder.Append("\r\n					<a id=\"pm_ntc\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\" title=\"");
	templateBuilder.Append(linktitle.ToString());
	templateBuilder.Append("\">短消息\r\n                    ");
	if (oluserinfo.Newpms>0 && oluserinfo.Newpms<=1000)
	{

	templateBuilder.Append("\r\n                                (");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	if (oluserinfo.Newpms>=1000)
	{

	templateBuilder.Append("1000+");
	}	//end if

	templateBuilder.Append(")\r\n                    ");
	}	//end if

	templateBuilder.Append("</a>\r\n                    <span class=\"pipe\">|</span>\r\n                    ");	 showoverflow = "";
	

	if (oluserinfo.Newnotices>0)
	{


	if (oluserinfo.Newnotices>=1000)
	{

	 showoverflow = "大于";
	

	}	//end if

	 linktitle = "您有"+showoverflow+oluserinfo.Newnotices+"条新通知";
	

	}
	else
	{

	 linktitle = "您没有新通知";
	

	}	//end if

	templateBuilder.Append("\r\n					<a id=\"notice_ntc\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" title=\"");
	templateBuilder.Append(linktitle.ToString());
	templateBuilder.Append("\">\r\n                        通知");
	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("\r\n                                (");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	if (oluserinfo.Newnotices>=1000)
	{

	templateBuilder.Append("+");
	}	//end if

	templateBuilder.Append(")\r\n                            ");
	}	//end if

	templateBuilder.Append("\r\n                    </a>\r\n                    <span class=\"pipe\">|</span>\r\n					<a id=\"usercenter\" class=\"drop\" onmouseover=\"showMenu(this.id);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\">用户中心</a>\r\n					");
	if (cngi_login==true)
	{

	templateBuilder.Append("\r\n              <span class=\"pipe\">|</span><a href=\"javascript:alert('CNGI登陆用户只有关闭浏览器才能退出登录，如果需要退出登录，请关闭浏览器')\">退出</a>\r\n					");
	}
	else
	{

	templateBuilder.Append("\r\n              <span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n          ");
	}	//end if

	templateBuilder.Append("\r\n				</p>\r\n				");
	templateBuilder.Append(userinfotips.ToString());
	templateBuilder.Append("\r\n			</div> \r\n			<div id=\"pm_ntc_menu\" class=\"g_up\" style=\"display:none;\">\r\n				<div class=\"mncr\"></div>\r\n				<div class=\"crly\">\r\n					<div style=\"clear:both;font-size:0;\"></div>\r\n					<span class=\"y\"><a onclick=\"javascript:$('pm_ntc_menu').style.display='none';closenotice(");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append(");\" href=\"javascript:;\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/delete.gif\" alt=\"关闭\"/></a></span>\r\n					<a id=\"pmcountshow\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\">您有");
	if (oluserinfo.Newpms>=1000)
	{

	templateBuilder.Append("大于");
	}	//end if
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新消息</a>\r\n				</div>\r\n			</div>\r\n			<div id=\"notice_ntc_menu\" class=\"g_up\" style=\"display:none;\">\r\n				<div class=\"mncr\"></div>\r\n				<div class=\"crly\">\r\n					<div style=\"clear:both;font-size:0;\"></div>\r\n					<span class=\"y\"><a onclick=\"javascript:$('notice_ntc_menu').style.display='none';closenotice(");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append(");\" href=\"javascript:;\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/delete.gif\" alt=\"关闭\"/></a></span>\r\n					<a id=\"noticecountshow\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\">您有");
	if (oluserinfo.Newnotices>=1000)
	{

	templateBuilder.Append("大于");
	}	//end if
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("条新通知</a>\r\n				</div>\r\n			</div>\r\n\r\n            <span id=\"msgsoundplayerspanheader\" style=\"display:hidden\"></span>\r\n            <script type=\"text/javascript\">\r\n                var pmcount = ");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append(";\r\n                var noticecount = ");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append(";\r\n                var originalTitle =  document.title;\r\n                var playpmsound = ");
	if (oluserinfo.PMSound>0)
	{

	templateBuilder.Append("true");
	}
	else
	{

	templateBuilder.Append("false");
	}	//end if

	templateBuilder.Append(";\r\n                setnewpmnoticeposion(");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append(");\r\n                initpmnoticeupdate();\r\n\r\n            </");
	templateBuilder.Append("script>\r\n            ");
	}	//end if

	templateBuilder.Append("\r\n		</div>\r\n		<div id=\"menubar\">\r\n			<a onMouseOver=\"showMenu(this.id, false);\" href=\"javascript:void(0);\" id=\"mymenu\">我的中心</a>\r\n            <div class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n                 ");
	if (userid>0)
	{

	templateBuilder.Append("\r\n                    <ul class=\"sel_my\">\r\n                      <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n                      <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n                      <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx?posterid=current&type=digest&searchsubmit=1\">我的精华</a></li>\r\n                      <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n                      <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n                    ");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n                          <li class=\"myspace\"><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n                    ");
	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n                          <li class=\"myalbum\"><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">我的相册</a></li>\r\n                    ");
	}	//end if

	templateBuilder.Append("\r\n                      </ul>\r\n                 ");
	}
	else
	{


	}	//end if


	if (config.Allowchangewidth==1&&pagename!="website.aspx")
	{

	templateBuilder.Append("\r\n                         <ul class=\"sel_mb\">\r\n                      <li><a href=\"javascript:;\" onclick=\"widthauto(this,'");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("')\">");
	if (isnarrowpage)
	{

	templateBuilder.Append("切换到宽版");
	}
	else
	{

	templateBuilder.Append("切换到窄版");
	}	//end if

	templateBuilder.Append("</a></li>\r\n                    </ul>\r\n                  ");
	}	//end if

	templateBuilder.Append("\r\n            </div>\r\n            <ul id=\"usercenter_menu\" class=\"p_pop\" style=\"display:none;\">\r\n                <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpprofile.aspx?action=avatar\"><span class=\"PrivateBTNavList\">设置头像</span></a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpprofile.aspx\"><span class=\"PrivateBTNavList\">个人资料</span></a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnewpassword.aspx\"><span class=\"PrivateBTNavList\">更改密码</span></a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\"><span class=\"PrivateBTNavList\">用户组</span></a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpcreaditstransferlog.aspx\"><span class=\"PrivateBTNavList\">积分</span></a></li>\r\n            </ul>\r\n			<ul id=\"menu\" class=\"cl\">\r\n				");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n");
	}
	else
	{


	Response.Clear();
	Response.ContentType = "Text/XML";
	Response.Expires = 0;
	Response.Cache.SetNoStore();
	
	templateBuilder.Append("<?xml version=\"1.0\" encoding=\"utf-8\"?><root><![CDATA[\r\n");
	}	//end if



	templateBuilder.Append("\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<a href=\"javascript:void(0);\" class=\"drop s_type\" id=\"quicksearch\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">快速搜索</a>\r\n	<input type=\"text\" id=\"quicksearch_textinput\" name=\"keywordf\" value=\"输入搜索关键字:种子标题\" onblur=\"bind_inputmessage(false);\" onclick=\"bind_inputmessage(true);\" onkeydown=\"bind_inputmessage(true);\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<ul id=\"quicksearch_menu\" class=\"p_pop\" style=\"display: none;\">\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='0';$('quicksearch').innerHTML='帖子标题';$('quicksearch_menu').style.display='none';bind_inputmessage(false);\" onmouseover=\"MouseCursor(this);\">帖子标题</a></li>\r\n	");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='2';$('quicksearch').innerHTML='空间日志';$('quicksearch_menu').style.display='none';bind_inputmessage(false);\" onmouseover=\"MouseCursor(this);\">空间日志</a></li>\r\n	");
	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='3';$('quicksearch').innerHTML='相册标题';$('quicksearch_menu').style.display='none';bind_inputmessage(false);\" onmouseover=\"MouseCursor(this);\">相册标题</a></li>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='8';$('quicksearch').innerHTML='作者';$('quicksearch_menu').style.display='none';bind_inputmessage(false);\" onmouseover=\"MouseCursor(this);\">作者</a></li>\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='9';$('quicksearch').innerHTML='版块';$('quicksearch_menu').style.display='none';bind_inputmessage(false);\" onmouseover=\"MouseCursor(this);\">版块</a></li>\r\n</ul>\r\n<script type=\"text/javascript\">\r\n    function bind_inputmessage(click)\r\n    {\r\n\r\n        if(!click)\r\n        {\r\n            var isdefaultvalue = false;\r\n            if($('quicksearch_textinput').value == \"\" ||$('quicksearch_textinput').value == \"输入搜索关键字:种子标题\" ||$('quicksearch_textinput').value == \"输入搜索关键字:帖子标题\" ||$('quicksearch_textinput').value == \"输入搜索关键字:空间日志\" ||$('quicksearch_textinput').value == \"输入搜索关键字:相册标题\" ||$('quicksearch_textinput').value == \"输入搜索关键字:作者名称\" ||$('quicksearch_textinput').value == \"输入搜索关键字:版块名称\" )\r\n            {\r\n                isdefaultvalue = true;\r\n            }\r\n            else if($('quicksearch').innerHTML=='帖子标题' || $('quicksearch').innerHTML=='快速搜索' )\r\n            {\r\n                if(isdefaultvalue) $('quicksearch_textinput').value = \"输入搜索关键字:帖子标题\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='空间日志')\r\n            {\r\n                if(isdefaultvalue) $('quicksearch_textinput').value = \"输入搜索关键字:空间日志\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='相册标题')\r\n            {\r\n                if(isdefaultvalue) $('quicksearch_textinput').value = \"输入搜索关键字:相册标题\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='作者')\r\n            {\r\n                if(isdefaultvalue) $('quicksearch_textinput').value = \"输入搜索关键字:作者名称\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='版块')\r\n            {\r\n                if(isdefaultvalue) $('quicksearch_textinput').value = \"输入搜索关键字:版块名称\";\r\n            }\r\n         }\r\n         else\r\n         {\r\n\r\n            if($('quicksearch').innerHTML=='帖子标题' || $('quicksearch').innerHTML=='快速搜索' )\r\n            {\r\n                if($('quicksearch_textinput').value == \"输入搜索关键字:帖子标题\") $('quicksearch_textinput').value = \"\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='空间日志')\r\n            {\r\n                if($('quicksearch_textinput').value == \"输入搜索关键字:空间日志\") $('quicksearch_textinput').value = \"\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='相册标题')\r\n            {\r\n                if($('quicksearch_textinput').value == \"输入搜索关键字:相册标题\") $('quicksearch_textinput').value = \"\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='作者')\r\n            {\r\n                if($('quicksearch_textinput').value == \"输入搜索关键字:作者名称\") $('quicksearch_textinput').value = \"\";\r\n            }\r\n            else if($('quicksearch').innerHTML=='版块')\r\n            {\r\n                if($('quicksearch_textinput').value == \"输入搜索关键字:版块名称\") $('quicksearch_textinput').value = \"\";\r\n            }\r\n         }\r\n    }\r\n    function bind_keyword(form) \r\n    {\r\n        if (form.keywordtype.value == '20') \r\n        {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("showseeds.aspx?keywords=' + escape(form.keywordf.value).replace(/\\+/g, '%2B').replace(/\\\"/g,'%22').replace(/\\'/g, '%27').replace(/\\//g,'%2F');\r\n        } \r\n        else if (form.keywordtype.value == '9')\r\n        {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value).replace(/\\+/g, '%2B').replace(/\\\"/g,'%22').replace(/\\'/g, '%27').replace(/\\//g,'%2F');\r\n        } \r\n        else if (form.keywordtype.value == '8') \r\n        {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx?advsearch=1';\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value.replace(/\\+/g, '%2B').replace(/\\\"/g,'%22').replace(/\\'/g, '%27').replace(/\\//g,'%2F') : '';\r\n        } \r\n        else \r\n        {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx';\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value.replace(/\\+/g, '%2B').replace(/\\\"/g,'%22').replace(/\\'/g, '%27').replace(/\\//g,'%2F') : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            else if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n            else \r\n                form.type.value = 'topic';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if

	templateBuilder.Append("\r\n		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <a href=\"usercpprofile.aspx\">用户中心</a> &raquo; <strong>收件箱</strong>\r\n	</div>\r\n</div>\r\n<div class=\"wrap uc cl\">\r\n    ");

	if (userid>0)
	{

	templateBuilder.Append("\r\n<div class=\"uc_app\">\r\n	<a href=\"usercp.aspx\"><h2>用户中心</h2></a>\r\n	<ul>\r\n	");
	if (pagename=="usercpprofile.aspx?action=avatar")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpprofile.aspx?action=avatar\">设置头像</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpprofile.aspx?action=avatar\">设置头像</a></li>\r\n	");
	}	//end if


	if (pagename=="usercptopic.aspx"||pagename=="usercppost.aspx"||pagename=="usercpdigest.aspx"||pagename=="usercpprofile.aspx"||pagename=="usercppreference.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpprofile.aspx\">个人资料</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpprofile.aspx\">个人资料</a></li>\r\n	");
	}	//end if


	if (pagename=="usercpinbox.aspx"||pagename=="usercpsentbox.aspx"||pagename=="usercpdraftbox.aspx"||pagename=="usercppostpm.aspx"||pagename=="usercpshowpm.aspx"||pagename=="usercpannouncepm.aspx"||pagename=="usercpignorelist.aspx"||pagename=="usercpnotice.aspx"||pagename=="usercppmset.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpinbox.aspx\">短消息</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpinbox.aspx\">短消息</a></li>\r\n	");
	}	//end if


	if (pagename=="mytopics.aspx"||pagename=="myposts.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"mytopics.aspx\">我的帖子</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"mytopics.aspx\">我的帖子</a></li>\r\n	");
	}	//end if


	if (pagename=="myattachment.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"myattachment.aspx\">附件</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"myattachment.aspx\">附件</a></li>\r\n	");
	}	//end if


	if (pagename=="usercpsubscribe.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpsubscribe.aspx\">收藏夹</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpsubscribe.aspx\">收藏夹</a></li>\r\n	");
	}	//end if


	if (config.Enablespace==1 && user.Spaceid>0)
	{


	if (pagename=="usercpspacepostblog.aspx"||pagename=="usercpspacemanageblog.aspx"||pagename=="usercpspaceeditblog.aspx"||pagename=="usercpspacelinklist.aspx"||pagename=="usercpspacelinkedit.aspx"||pagename=="usercpspacelinkadd.aspx"||pagename=="usercpspacecomment.aspx"||pagename=="usercpspacemanagecategory.aspx"||pagename=="usercpspacecategoryadd.aspx"||pagename=="usercpspacecategoryedit.aspx"||pagename=="usercpspacemanageattachment.aspx"||pagename=="usercpspaceset.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpspacemanageblog.aspx\">");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpspacemanageblog.aspx\">");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}	//end if


	}	//end if


	if (config.Enablealbum==1)
	{


	if (pagename=="usercpspacemanagealbum.aspx"||pagename=="usercpspacemanagephoto.aspx"||pagename=="usercpspacephotoadd.aspx"||pagename=="usercpeditphoto.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpspacemanagealbum.aspx\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpspacemanagealbum.aspx\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}	//end if


	}	//end if


	if (pagename=="usercpcreditspay.aspx"||pagename=="usercpcreditstransfer.aspx"||pagename=="usercpcreditspayoutlog.aspx"||pagename=="usercpcreditspayinlog.aspx"   ||pagename=="usercpcreaditstransferlog.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpcreaditstransferlog.aspx\">积分</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpcreaditstransferlog.aspx\">积分</a></li>\r\n	");
	}	//end if


	if (pagename=="usercp.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercp.aspx\">用户组</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercp.aspx\">用户组</a></li>\r\n	");
	}	//end if


	if (pagename=="usercpnewpassword.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpnewpassword.aspx\">更改密码</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpnewpassword.aspx\">更改密码</a></li>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	</ul>\r\n</div>\r\n");
	}	//end if



	templateBuilder.Append("\r\n	<div class=\"uc_main\">\r\n	<div class=\"uc_content\">\r\n		<h1>收件箱</h1>\r\n		");

	if (userid>0)
	{

	templateBuilder.Append("\r\n<div class=\"uc_header\">\r\n	<a class=\"btn_uc\" onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" href=\"usercppostpm.aspx\">+ 写新消息</a>	\r\n	<ul class=\"f_tab\">\r\n		<li ");
	if (pagename=="usercpinbox.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpinbox.aspx\">收件箱</a></li>\r\n		<li ");
	if (pagename=="usercpsentbox.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpsentbox.aspx\">发件箱</a></li>\r\n		<li ");
	if (pagename=="usercpdraftbox.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpdraftbox.aspx\">草稿箱</a></li>\r\n		<li ");
	if (pagename=="usercpannouncepm.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpannouncepm.aspx\">公共消息");
	if (announcepmcount>0)
	{

	templateBuilder.Append("(");
	templateBuilder.Append(announcepmcount.ToString());
	templateBuilder.Append(")");
	}	//end if

	templateBuilder.Append("</a></li>\r\n		<li ");
	if (pagename=="usercpignorelist.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpignorelist.aspx\">黑名单</a></li>\r\n		<li ");
	if (pagename=="usercpnotice.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a id=\"notice\" onMouseOver=\"showMenu(this.id);\" onMouseOut=\"showMenu(this.id);\" onclick=\"javascript:window.location.href=this.href;\" href=\"usercpnotice.aspx\"><cite class=\"drop\">通知");
	if (newnoticecount>0)
	{

	templateBuilder.Append("(");
	templateBuilder.Append(newnoticecount.ToString());
	templateBuilder.Append(")");
	}	//end if

	templateBuilder.Append("</cite></a></li>\r\n	</ul>\r\n</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<ul class=\"p_pop\" id=\"notice_menu\" style=\"display: none\">\r\n");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpnotice.aspx?filter=spacecomment\">");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("日志评论</a></li>               \r\n");
	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpnotice.aspx?filter=albumcomment\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("图片评论</a></li>		           \r\n");
	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpnotice.aspx?filter=goodstrade\">商品交易</a></li>\r\n	<li><a href=\"usercpnotice.aspx?filter=goodsleaveword\">商品留言</a></li>	  \r\n");
	}	//end if

	templateBuilder.Append("\r\n	<li><a href=\"usercpnotice.aspx?filter=postreply\">主题回复</a></li>\r\n	<li><a href=\"usercpnotice.aspx?filter=all\">全部通知</a></li>\r\n	<li><a href=\"usercpnotice.aspx?filter=topicadmin\">管理通知</a></li>\r\n</ul>\r\n<span></span>");


	if (page_err==0)
	{


	if (ispost)
	{


	templateBuilder.Append("	<div class=\"msgbox\">\r\n		<h1>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("　提示信息</h1>\r\n		<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n		");
	if (msgbox_url!="")
	{

	templateBuilder.Append("\r\n		<p><a href=\"");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a></p>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</div>");


	}
	else
	{


	if (pmcount>0)
	{

	templateBuilder.Append("\r\n			<div class=\"pages_btns\">\r\n				<div class=\"pages\">\r\n					<em>共有短消息:");
	templateBuilder.Append(usedmsgcount.ToString());
	templateBuilder.Append("条</em> <em>上限:");
	templateBuilder.Append(maxmsg.ToString());
	templateBuilder.Append("条</em> ");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append(" <em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em> \r\n				</div>\r\n				<a href=\"###\"  onclick=\"checkCheckBox($('pmform'),this)\">全选</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定要删除吗?'))$('pmform').submit();\">删除</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定标记 #选定的# 短消息为已读?'))PrivateBTMarkRead('mark')\">标记为已读</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定标记 #选定的# 短消息为未读?'))PrivateBTMarkRead('unmark')\">标记为未读</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定标记 #全部# 短消息为已读?'))PrivateBTMarkRead('now')\">全部标记为已读</a>\r\n				");
	if (automarkread>0)
	{

	templateBuilder.Append("\r\n            &nbsp;（&nbsp;<a href=\"###\" onclick=\"if (confirm('您确定 #取消# 在访问收件箱时自动标记所有未读短消息为已读?'))PrivateBTMarkRead('off')\" title=\"在访问收件箱时自动标记所有未读短消息为已读\"><input id=\"automarkread\" type=\"checkbox\" name=\"automarkread\" value=\"2\" checked=\"checked\"/>自动</a>&nbsp;）&nbsp;\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            &nbsp;（&nbsp;<a href=\"###\" onclick=\"if (confirm('您确定在访问收件箱时自动标记所有未读短消息为已读?'))PrivateBTMarkRead('on')\" title=\"在访问收件箱时自动标记所有未读短消息为已读\"><input id=\"automarkread\" type=\"checkbox\" name=\"automarkread\" value=\"2\"/>自动</a>&nbsp;）&nbsp;\r\n        ");
	}	//end if

	templateBuilder.Append("\r\n        <span class=\"pipe\">|</span>\r\n        <a href=\"usercppreference.aspx\">提示音设置</a>\r\n			</div>\r\n		");
	}	//end if

	templateBuilder.Append(" \r\n		<script type=\"text/javascript\">	\r\n        function PrivateBTMarkRead(markauto)\r\n        {\r\n        /*\r\n            var markreadHttpReq;\r\n            if(window.ActiveXObject)\r\n            {\r\n                markreadHttpReq=new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n            }\r\n            else if(window.XMLHttpRequest)\r\n            {\r\n                markreadHttpReq=new XMLHttpRequest();\r\n            }\r\n            parm = \"markauto=\" + markauto;\r\n            \r\n            markreadHttpReq.open(\"POST\",\"usercpinbox.aspx\",true);\r\n            markreadHttpReq.setRequestHeader(\"cache-control\",\"no-cache\");\r\n            markreadHttpReq.setRequestHeader(\"contentType\",\"text/html;charset=uft-8\");\r\n            markreadHttpReq.setRequestHeader(\"Content-Type\", \"application/x-www-form-urlencoded;\"); \r\n            //markreadHttpReq.onreadystatechange = StatHandler; \r\n            markreadHttpReq.send(parm); \r\n            location.reload();\r\n            */\r\n            $('markauto').value = markauto;\r\n            $('pmform').submit();\r\n        }  \r\n		</");
	templateBuilder.Append("script>\r\n		<form id=\"pmform\" name=\"pmform\" method=\"post\" action=\"\">\r\n		<table cellspacing=\"0\" cellpadding=\"0\" class=\"pm_list\" summary=\"收件箱\">\r\n			<tbody>\r\n			");
	int pm__loop__id=0;
	foreach(PrivateMessageInfo pm in pmlist)
	{
		pm__loop__id++;

	templateBuilder.Append("\r\n			<tr id=\"");
	templateBuilder.Append(pm.Pmid.ToString().Trim());
	templateBuilder.Append("\">\r\n				<td class=\"msg_icon\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/pm_");
	templateBuilder.Append(pm.New.ToString().Trim());
	templateBuilder.Append(".gif\" ");
	if (pm.New==1)
	{

	templateBuilder.Append("title=\"未读\"");
	}
	else
	{

	templateBuilder.Append("title=\"已读\"");
	}	//end if

	templateBuilder.Append("/></td>\r\n				<td class=\"checkbox_toggle\"><input name=\"pmitemid\" id=\"id");
	templateBuilder.Append(pm.Pmid.ToString().Trim());
	templateBuilder.Append("\" type=\"checkbox\" value=\"");
	templateBuilder.Append(pm.Pmid.ToString().Trim());
	templateBuilder.Append("\" style=\"margin-top:2px;\"/></td>\r\n				<td class=\"profile_pic\">\r\n          ");
	if (pm.Msgfromid==0)
	{

	templateBuilder.Append("\r\n              <img width=\"48\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/common/noavatar_small.gif'\" src=\"icon.png\"/>\r\n          ");
	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(pm.Msgfromid);
	
	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n            ");	string avatarurl = Avatars.GetAvatarUrl(pm.Msgfromid,AvatarSize.Small);
	
	templateBuilder.Append("\r\n            <img width=\"48\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/common/noavatar_small.gif'\" src=\"");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\"/>\r\n            </a>\r\n					");
	}	//end if

	templateBuilder.Append("\r\n				</td>\r\n				<td class=\"name_and_date\">\r\n					<span class=\"name xg2\">\r\n            ");
	if (pm.Msgfromid==0)
	{

	templateBuilder.Append("\r\n                <a href=\"forumindex.aspx\" target=\"_blank\">");
	templateBuilder.Append(pm.Msgfrom.ToString().Trim());
	templateBuilder.Append("</a>\r\n            ");
	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(pm.Msgfromid);
	
	templateBuilder.Append("\r\n                <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(pm.Msgfrom.ToString().Trim());
	templateBuilder.Append("</a>\r\n            ");
	}	//end if

	templateBuilder.Append("\r\n						\r\n						\r\n					</span>\r\n					");	string postdatetime = ForumUtils.ConvertDateTime(pm.Postdatetime);
	
	templateBuilder.Append("	\r\n					<span class=\"date\">");
	templateBuilder.Append(postdatetime.ToString());
	templateBuilder.Append("</span></td>\r\n				<td class=\"pmsubject\">\r\n					<div class=\"subject_wrap xg2\">\r\n						<p ");
	if (pm.New==1)
	{

	templateBuilder.Append("class=\"f_bold\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpshowpm.aspx?pmid=");
	templateBuilder.Append(pm.Pmid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(pm.Subject.ToString().Trim());
	templateBuilder.Append("</a></p>\r\n						<div class=\"snippet_wrap xg1\">\r\n							<a href=\"usercpshowpm.aspx?pmid=");
	templateBuilder.Append(pm.Pmid.ToString().Trim());
	templateBuilder.Append("\">");	templateBuilder.Append(Utils.GetUnicodeSubString(Utils.RemoveHtml(pm.Message),40,"..."));
	templateBuilder.Append("</a>\r\n						</div>\r\n					</div>\r\n				</td>\r\n				<td class=\"delete_msg\"><a href=\"javascript:;\" onclick=\"if (confirm('您确定要删除吗?')){ $('id");
	templateBuilder.Append(pm.Pmid.ToString().Trim());
	templateBuilder.Append("').checked=true;$('pmform').submit();}\"></a></td>\r\n			</tr>\r\n			");
	}	//end loop

	templateBuilder.Append("\r\n			</tbody>\r\n		</table>\r\n		<input type=\"hidden\" id=\"markauto\" name=\"markauto\"/>\r\n		</form>\r\n		");
	if (pmcount>0)
	{

	templateBuilder.Append("\r\n			<div class=\"pages_btns\">\r\n				<div class=\"pages\">\r\n					<em>共有短消息:");
	templateBuilder.Append(usedmsgcount.ToString());
	templateBuilder.Append("条</em> <em>上限:");
	templateBuilder.Append(maxmsg.ToString());
	templateBuilder.Append("条</em> ");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append(" <em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em> \r\n				</div>\r\n				<a href=\"###\"  onclick=\"checkCheckBox($('pmform'),this)\">全选</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定要删除吗?'))$('pmform').submit();\">删除</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定标记 #选定的# 短消息为已读?'))PrivateBTMarkRead('mark')\">标记为已读</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定标记 #选定的# 短消息为未读?'))PrivateBTMarkRead('unmark')\">标记为未读</a>\r\n				<span class=\"pipe\">|</span>\r\n				<a href=\"###\" onclick=\"if (confirm('您确定标记 #全部# 短消息为已读?'))PrivateBTMarkRead('now')\">全部标记为已读</a>\r\n				");
	if (automarkread>0)
	{

	templateBuilder.Append("\r\n            &nbsp;（&nbsp;<a href=\"###\" onclick=\"if (confirm('您确定 #取消# 在访问收件箱时自动标记所有未读短消息为已读?'))PrivateBTMarkRead('off')\" title=\"在访问收件箱时自动标记所有未读短消息为已读\"><input id=\"automarkread\" type=\"checkbox\" name=\"automarkread\" value=\"2\" checked=\"checked\"/>自动</a>&nbsp;）&nbsp;\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            &nbsp;（&nbsp;<a href=\"###\" onclick=\"if (confirm('您确定在访问收件箱时自动标记所有未读短消息为已读?'))PrivateBTMarkRead('on')\" title=\"在访问收件箱时自动标记所有未读短消息为已读\"><input id=\"automarkread\" type=\"checkbox\" name=\"automarkread\" value=\"2\"/>自动</a>&nbsp;）&nbsp;\r\n        ");
	}	//end if

	templateBuilder.Append("\r\n			</div>\r\n		");
	}
	else
	{

	templateBuilder.Append("\r\n			<div class=\"zerothreads\">收件箱暂无短信息</div>\r\n		");
	}	//end if


	}	//end if


	}
	else
	{


	templateBuilder.Append("<div class=\"msgbox error_msg\">\r\n	<h3>错误提示</h3>\r\n	<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n	<p class=\"errorback\">\r\n		<script type=\"text/javascript\">\r\n			if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n			{\r\n				document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|  \");\r\n			}\r\n		</");
	templateBuilder.Append("script>\r\n		&nbsp; &nbsp; <a href=\"forumindex.aspx\">论坛首页</a>\r\n		");
	if (usergroupid==7)
	{

	templateBuilder.Append("\r\n		 &nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"login.aspx\">登录</a>&nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</p>\r\n</div>");


	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n	</div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n	function checkCheckBox(form,objtag)\r\n	{\r\n		if (typeof(objtag.checked) == \"undefined\")\r\n		{\r\n			objtag.checked = true;\r\n		}\r\n		for(var i = 0; i < form.elements.length; i++) \r\n		{\r\n			var e = form.elements[i];\r\n			if(e.name == \"pmitemid\") \r\n			{\r\n				e.checked = objtag.checked;\r\n			}\r\n		}\r\n		objtag.checked = !objtag.checked;\r\n	}\r\n</");
	templateBuilder.Append("script>\r\n");

	if (infloat!=1)
	{


	if (pagename=="website.aspx")
	{

	templateBuilder.Append("    \r\n       <div id=\"websitebottomad\"></div>\r\n");
	}
	else if (footerad!="")
	{

	templateBuilder.Append(" \r\n     <div id=\"ptnotice_footerbanner\">");
	templateBuilder.Append(footerad.ToString());
	templateBuilder.Append("</div>   \r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"footer\">\r\n	<div class=\"wrap\"  id=\"wp\">\r\n  <div id=\"footlinks\">\r\n        <p>推荐屏幕分辨率1366或以上&nbsp;&nbsp;&nbsp;<a href=\"http://bt.buaa6.edu.cn\" target=\"_blank\">北京航空航天大学 未来花园</a>&nbsp; \r\n        </p>\r\n        <a href=\"http://bt.buaa6.edu.cn\" target=\"_blank\">Discuz!NT 3.6</a>&nbsp; \r\n  </div>\r\n		<a title=\"Powered by Discuz!NT\" target=\"_blank\" href=\"http://nt.discuz.net\"><img border=\"0\" alt=\"Discuz!NT\" src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/discuznt_logo.gif\"/></a>\r\n		<p id=\"copyright\">\r\n			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT\">Discuz!NT</a></strong> <em class=\"f_bold\">3.6.711</em>\r\n			");
	if (config.Licensed==1)
	{

	templateBuilder.Append("\r\n				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n			");
	}	//end if

	templateBuilder.Append("\r\n				");
	templateBuilder.Append(config.Forumcopyright.ToString().Trim());
	templateBuilder.Append("\r\n		</p>\r\n		<p id=\"debuginfo\" class=\"grayfont\">\r\n		");
	if (config.Debug!=0)
	{

	templateBuilder.Append("\r\n			Processed in ");
	templateBuilder.Append(this.Processtime.ToString().Trim());
	templateBuilder.Append(" second(s)\r\n			");
	if (isguestcachepage==1)
	{

	templateBuilder.Append("\r\n				(Cached).\r\n			");
	}
	else if (querycount>1)
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" queries.\r\n			");
	}
	else
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" query.\r\n			");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n		</p>\r\n	</div>\r\n</div>\r\n<a id=\"scrolltop\" href=\"javascript:;\" style=\"display:none;\" class=\"scrolltop\" onclick=\"setScrollToTop(this.id);\">TOP</a>\r\n\r\n");
	int prentid__loop__id=0;
	foreach(string prentid in mainnavigationhassub)
	{
		prentid__loop__id++;

	templateBuilder.Append("\r\n<ul class=\"p_pop\" id=\"menu_");
	templateBuilder.Append(prentid.ToString());
	templateBuilder.Append("_menu\" style=\"display: none\">\r\n");
	int subnav__loop__id=0;
	foreach(DataRow subnav in subnavigation.Rows)
	{
		subnav__loop__id++;

	bool isoutput = false;
	

	if (subnav["parentid"].ToString().Trim()==prentid)
	{


	if (subnav["level"].ToString().Trim()=="0")
	{

	 isoutput = true;
	

	}
	else
	{


	if (subnav["level"].ToString().Trim()=="1" && userid>0)
	{

	 isoutput = true;
	

	}
	else
	{

	bool leveluseradmindi = true;
	
	 leveluseradmindi = (useradminid==3 || useradminid==1 || useradminid==2);
	

	if (subnav["level"].ToString().Trim()=="2" &&  leveluseradmindi)
	{

	 isoutput = true;
	

	}	//end if


	if (subnav["level"].ToString().Trim()=="3" && useradminid==1)
	{

	 isoutput = true;
	

	}	//end if


	}	//end if


	}	//end if


	}	//end if


	if (isoutput)
	{


	if (subnav["id"].ToString().Trim()=="11" || subnav["id"].ToString().Trim()=="12")
	{


	if (config.Statstatus==1)
	{

	templateBuilder.Append("\r\n	" + subnav["nav"].ToString().Trim() + "\r\n        ");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="18")
	{


	if (config.Oltimespan>0)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="24")
	{


	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="25")
	{


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="26")
	{


	if (config.Enablemall>=1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n   	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n</ul>\r\n");
	}	//end loop


	if (config.Stylejump==1)
	{


	if (userid>0 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("\r\n	<ul id=\"styleswitcher_menu\" class=\"popupmenu_popup s_clear\" style=\"display: none;\">\r\n	");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n	</ul>\r\n	");
	}	//end if


	}	//end if




	templateBuilder.Append("</body>\r\n</html>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n]]></root>\r\n");
	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>
