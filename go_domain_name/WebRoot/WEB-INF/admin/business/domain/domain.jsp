<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@include file="/WEB-INF/admin/common/includefile.jsp" %>
<script type="text/javascript">
var url="hdomainAction";
function showSale(val,row,index){
	var res = "";
	switch(val){
	case '1':
		res = "议价域名";
		break;
	case '2':
		res = "拍卖域名";
		break;
	case '3':
		res = "一口价域名";
		break;
	case '4':
		res = "优质域名";
		break;
		
	}
	return res;
}
</script>
<body style="margin: 0px;padding: 0px;">
<%@include file="/WEB-INF/admin/business/domain/domainList.jsp" %>  
<!-- 数据编辑层 -->
<%@include file="/WEB-INF/admin/business/domain/domainEdit.jsp" %>
</div>
</body>
</html>
