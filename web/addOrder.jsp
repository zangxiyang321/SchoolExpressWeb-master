
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .layui-body{
        top: 60px;
        bottom: 44px;
        padding: 15px;
    }

</style>
<div class="layui-body">
<div class="layui-card">
    <div class="layui-card-header">下订单</div>
    <div class="layui-card-body">
            <form class="layui-form" action="addOrderHandle" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">你的姓名</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">联系电话:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="phone" required  lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">你的手机号码</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">取货地址:</label>
                    <div class="layui-input-block">
                        <input type="text" name="pickupAddress" required lay-verify="required" placeholder="请输入取货地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">取件码:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="pickupCode" required lay-verify="required" placeholder="请输入取件码" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">取货的取件码</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">送达地址:</label>
                    <div class="layui-input-block">
                        <input type="text" name="toAddress" required lay-verify="required" placeholder="请输入送达地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit type="submit">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
                <div class="layui-form-item">
                        <blockquote class="layui-elem-quote">
                            尊敬的用户，您好:<br>
                            下单前请检查以下事项。<br>
                            1、收件人名字是否正确。<br>
                            2、收件地址是否正确。<br>
                            3、联系电话是否正确。<br>
                            4、取件码是否正确。<br>
                            5、快递员送货地址是否正确。<br>
                            请检查无误后再确认发布订单，以免造成不必要的损失或麻烦。谢谢配合！
                        </blockquote>
                </div>
            </form>
        </div>
        <script>
            //Demo
            layui.use('form', function(){
                var form = layui.form;

            });
            <c:if test="${sessionScope.addOrderReturn == 0}">
                layui.use('layer',function () {
                    var layer = layui.layer;
                    layer.alert('下单成功!', {icon: 1});
                });
                <%
                    session.setAttribute("addOrderReturn",null);
                %>
            </c:if>
            <c:if test="${sessionScope.addOrderReturn == 1}">
                layui.use('layer',function () {
                    var layer = layui.layer;
                    layer.alert("下单失败!<br>请联系管理员", {icon: 5});
                });
                <%
                    session.setAttribute("addOrderReturn",null);
                %>


            </c:if>

        </script>
    </div>
</div>