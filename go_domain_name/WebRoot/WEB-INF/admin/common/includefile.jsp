<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD  HTML   4.01  Transitional//EN">


<link href="<%=request.getContextPath() %>/css/jquery/easyui.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath() %>/css/jquery/icon.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.tabs.extend.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
      $.ajaxSetup ({
    	  global: false,
         cache: false //关闭AJAX相应的缓存
      });
  });
</script>