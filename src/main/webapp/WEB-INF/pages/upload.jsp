<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/7/12
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="${pageContext.request.contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/vendors/webuploader-0.1.5/webuploader.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/vendors/pnotify/dist/pnotify.custom.min.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/vendors/jquery/dist/jquery.min.js"></script>
<style>
    .brighttheme-success {
        color: #ffffff !important;
        background-color: rgba(38, 185, 154, 0.88) !important;
        border-color: rgba(38, 185, 154, 0.88) !important
    }
    .brighttheme-info {
        color: #E9EDEF !important;
        background-color: rgba(52, 152, 219, 0.88) !important;
        border-color: rgba(52, 152, 219, 0.88) !important;
    }
    .brighttheme-warning {
        color: #E9EDEF !important;
        background-color: rgba(243, 156, 18, 0.88) !important;
        border-color: rgba(243, 156, 18, 0.88) !important;
    }
    .brighttheme-danger,
    .brighttheme-error {
        color: #E9EDEF !important;
        background-color: rgba(231, 76, 60, 0.88) !important;
        border-color: rgba(231, 76, 60, 0.88) !important;
    }
</style>
<!--单独模块-->
<!--上传图片-->
<div id="wrapper">
    <div id="container">
        <div id="uploader">
            <div class="queueList">
                <div id="dndArea" class="placeholder">
                    <div id="filePicker"></div>
                    <p>或将照片拖到这里，并支持截图粘贴功能</p>
                </div>
            </div>
            <div class="statusBar" style="display:none;">
                <div class="progress">
                    <span class="text">0%</span>
                    <span class="percentage"></span>
                </div><div class="info"></div>
                <div class="btns">
                    <div id="filePicker2"></div>
                    <div class="uploadBtn">开始上传</div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/webuploader-0.1.5/webuploader.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/pnotify/dist/pnotify.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/webuploader-0.1.5/upload.js?v=2"></script>
<script>
    $(function () {
        var callback = function (response) {
            if (response.code == 100) {
                new PNotify({ title: "成功！", text: response.message, type: 'success' });// 此处使用了Pnotify 插件== alert
            } else {
                new PNotify({ title: "失败！", text: "上传异常", type: 'error' });
            }
        }

        var uploadUrl = "/demo_ssm/upload/add";
        _init_upload(callback,uploadUrl);//初始化上传插件

        //ps: 其他版本同理，按照代码，配置即可。
    });
</script>