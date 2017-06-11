<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>报名查询</title>
<link href="/resource/style/style.css" rel=stylesheet type="text/css" />
<style type="text/css">
   a,img,li,ul{margin:0px;padding:0px;list-style:none;}
   li.lyul{float:right;margin-right:50px;}
   #one{font-size:22px;}
   #t1{text-align:right;}
   tr{width:120px;height:60px;}
   #t2{width:100%;height:50%;}

</style>

</head>
<!--[if lte IE 6]> 
<script type="text/javascript" src="/resource/js/PNG.js"></script> 
<script> 
PNG.fix('*'); 
</script> 
<![endif]-->
<body>
<div class="content">

<div class="head">
<div class="head_1">
<div class="logo"><img src="/resource/images/logo.jpg" /></div>
</div>
<div class="nav">
<div class="nav_1">
<ul>
<li><a href="/index">学院首页</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<li><a href="http://www1.hnjc.org/" target="_blank">学院概况</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<li><a href="/zhaokao">招考信息</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<li><a href="/baoming/add">在线报名</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<li><a href="/chaxun">报名查询</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<li><a href="http://www1.hnjc.org/newsCenterAction.do?method=index" target="_blank">学院新闻</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<li><a href="/liuyan">留言咨询</a></li>
<li><img src="/resource/images/menu_line.jpg" /></li>
<Li><a href="/lianxiwomen">联系我们</a></Li>
</ul>
</div>
</div>

<div class="banner">
<div class="banner_1">
<script type="text/javascript" src="/resource/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/resource/js/index.js"></script>
      <div class="mainbanner">
        <div class="mainbanner_window">
          <ul id="slideContainer">
            <li><a href="#"><img src="/resource/images/banner1.jpg" width="1600" /></a></li>
            <li><a href="#"><img src="/resource/images/banner2.jpg" width="1600" /></a></li>
            <li><a href="#"><img src="/resource/images/banner3.jpg" width="1600"/></a></li>
          </ul>
        </div>
        <ul class="mainbanner_list">
          <li><a href="javascript:void(0);">1</a></li>
          <li><a href="javascript:void(0);">2</a></li>
          <li><a href="javascript:void(0);">3</a></li>
        </ul>
      </div>


</div>
</div>

</div>

<div class="main">

<div class="main_1">

<div class="left">
<div class="left_1">
<div class="left_title"><div class="title_left"><img src="/resource/images/title_fwxm.jpg" /></div><div class="title_right"><a href="fuwu.html"><img src="/resource/images/more.jpg" /></a></div></div>
<div class="left_list">
<ul>
<li><a href="/index">学院首页</a></li>
<li><a href="http://www1.hnjc.org/" target="_blank">学院概况</a></li>
<li><a href="/zhaokao">招考信息</a></li>
<li><a href="/baoming/add">在线报名</a></li>
<li><a href="/chaxun">报名查询</a></li>
<li><a href="http://www1.hnjc.org/newsCenterAction.do?method=index" target="_blank">学院新闻</a></li>
<li><a href="/liuyan">留言咨询</a></li>
<Li><a href="/lianxiwomen">联系我们</a></Li>
</ul>
</div>
</div>



</div>

<div class="right">

<div class="z_right">
<div class="z_title"><div class="title_left"><img src="/resource/images/index_title_bmcx.jpg" /></div> <div class="title_right"><input type="button" name="dy" value="打印"  style="width:60px;height:30px;"/></div></div>
<div class="z_list">
    <div style="width:600px;height:320px;margin-top:20px; background-color:#e8f4ff;">
	   <form action="/baoming/getStatus" method="post" name="regform" id="regform" onsubmit="return checkFrom();">
        <input type="hidden" name="ok" value="ok" />
        <table  align="center" >
		   <br/>
           <caption id="one" ><b>报名审核进度查询系统</b></caption>
            <tbody>
              <tr>
                    <td id="t1">考生姓名:</td>
                    <td><input  type="text" name="userName" id="userName"/></td>
              </tr>
			  <tr>
                    <td id="t1">考生电话:</td>
                    <td><input type="text" name="phone" id="phone"/></td>	
              </tr>
			  <tr>
                    <td id="t1">考生准考证号:</td>
                    <td><input type="text" name="cardNumber" id="cardNumber"/></td>	
              </tr>
			  
            </tbody>
            <tfoot>
              <tr>
                    <td colspan="2" align="center">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" name="submit" value="查询"  style="width:60px; height:30px;" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" name="reset" value="重置"  style="width:60px; height:30px;"/> 
                    </td>
              </tr>
            </tfoot>
        </table>
        </form>
	</div>
</div>
</div>

</div>
</div>

</div>

<div class="footer">
<div class="footer_1">

<div style="text-align:left;background-color:#e8f4ff;"><b><img src="/resource/images/index_title_yqlj.jpg" /></b></div>
<hr>
<br/>
  <ul>
      <li class="lyul"><a href="http://www1.hnjc.org/oa/login.do"><img src="/resource/images/oaxt.jpg" style="width:102px;height:29px;"></a></li>
	  <li class="lyul"><a href="http://www1.hnjc.org/library.do?method=index"><img src="/resource/images/tsg.jpg" style="width:102px;height:29px;"></a></li>
	  <li class="lyul"><a href="http://www1.hnjc.org/checkIp.do?method=webSite"><img src="/resource/images/wldh.jpg" style="width:102px;height:29px;"></a></li>
	  <li class="lyul"><a href="http://zsjy.hnjc.org/"><img src="/resource/images/zsjy.jpg" style="width:102px;height:29px;"></a></li>
	  <li class="lyul"><a href="http://www1.hnjc.org/politic.do?method=index"><img src="/resource/images/zzc.jpg" style="width:102px;height:29px;"></a></li>
	  <li class="lyul"><a href="http://www1.hnjc.org/train.do?method=index"><img src="/resource/images/jcgpx.jpg" style="width:102px;height:29px;"></a></li>
  </ul>
</div>
<div style="margin-top:45px;">河南检察职业学院人事考试报名查询系统 2007-2017 @ All Rights Reserved 联系电话：0371-69970073/69970079　 地址：郑州市新郑龙湖大学园区双湖大道1号</div>
</div>

</div>
</body>
</html>
<script type="text/javascript">
function checkFrom(){
	var userName = $("#userName").val();
	var phone = $("#phone").val();
	var cardNumber = $("#cardNumber").val();
	if(userName = "" || phone == ""){
		alert("请输入姓名和手机号码");
		return false;
	}
	return true;
}

</script> 
