<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/6/1
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../statics/css/layui.css">
<script src="../../statics/layui.js"></script>
<html>
<head>
    <title>发帖</title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="layui-container" style="height: 800px;">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>
            <span class="layui-badge">快捷导航</span></legend>
    </fieldset>
    <div class="layui-anim layui-anim-up">
        <span class="layui-breadcrumb" lay-separator="/">
  <a href="/board/1">英雄联盟</a>
  <a href="/board/2">绝地求生</a>
  <a href="/board/3">穿越火线</a>
  <a href="/board/4">CS:GO</a>
  <a href="/board/5">FIFA</a>
</span>

    </div>
    <div style="height: 50px"></div>
    <form class="layui-form" action="/addTopicSuccess" style="width: 800px;" method="post">
        <input type="hidden" name="userId" value="${user.userId}">
        <div class="layui-form-item">
            <label class="layui-form-label">选择板块</label>
            <div class="layui-input-block" style="width: 120px">
                <select name="boardId" lay-filter="sel">
                    <c:forEach items="${boardList}" var="b">
                        <option value="${b.boardId}">${b.boardName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选择子板块</label>
            <div class="layui-input-block" style="width: 120px">
                <select name="subBoardId" lay-filter="sel">
                    <option value="0">社区讨论</option>
                    <option value="1">攻略分享</option>
                    <option value="2">组队交友</option>
                    <option value="3">比赛资讯</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">标题:</label>
            <div class="layui-input-block">
                <input type="text" id="title" name="title" placeholder="请输入帖子标题" autocomplete="off" class="layui-input">
            </div>
        </div>
        <textarea id="demo" name="text" style="display: none;"></textarea>
        <div style="width: 120px;float: right">
            <input type="submit" id="put" class="layui-btn  layui-btn-fluid">
            </input>
        </div>

    </form>
</div>
<%@include file="footer.jsp" %>
<script>
    var index;
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        index = layedit.build('demo', {height: 180}); //建立编辑器
    });
    var text;
    var select;
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        text = layedit.getContent(index);
    });
    layui.use('form', function () {
        var form = layui.form;
        form.on('select(sel)', function (data) {
            select = data.value;
        });
    });
</script>
</body>
</html>
