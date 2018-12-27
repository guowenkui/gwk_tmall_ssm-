<!-- 模仿天猫整站ssm 教程 为how2j.cn 版权所有-->
<!-- 本教程仅用于学习使用，切勿用于非法用途，由此引起一切后果与本站无关-->
<!-- 供购买者学习，请勿私自传播，否则自行承担相关法律责任-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="adminHeader.jsp"%>
<%@include file="adminNavigator.jsp"%>


<title>编辑属性</title>

<div class="workingArea">
	<ol class="breadcrumb">
		<li><a href="admin_category_list">所有分类</a></li>
		<li><a href="admin_property_list?cid=${p.category.id}">${p.category.name}</a></li>
		<li class="active">编辑属性</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">编辑属性</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="admin_property_update">
				<table class="editTable">
					<tr>
						<td>属性名称</td>
						<td><input id="name" name="name" value="${p.name}"
								   type="text" class="form-control"></td>
					</tr>
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="id" value="${p.id}">
							<input type="hidden" name="cid" value="${p.category.id}">
							<button type="submit" class="btn btn-success">提 交</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>