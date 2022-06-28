<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.edatagrid.js"></script>
<title>관리자 페이지</title>
</head> 
<body>
    <%@ include file="../comp/admin.header.jsp" %>
    <div class="container-section">
        <div class="container">
            <div>
                <table id="dg" title="My Users" style="width:1200px;height:900px"
                       toolbar="#toolbar" pagination="true" idField="id"
                       rownumbers="true" fitColumns="true" singleSelect="true">
                    <thead>
                    <tr>
                        <th field="DOCID" width="50" editor="{type:'validatebox',options:{required:true}}">DOCID</th>
                        <th field="title" width="50" editor="{type:'validatebox',options:{required:true}}">title</th>
                        <th field="titleEng" width="50" editor="{type:'validatebox'}">titleEng</th>
                        <th field="titleEtc" width="50" editor="{type:'validatebox'}">titleEtc</th>
                        <th field="prodYear" width="50" editor="{type:'validatebox'}">prodYear</th>
                        <th field="nation" width="50" editor="{type:'validatebox'}">nation</th>
                        <th field="runtime" width="50" editor="{type:'validatebox'}">runtime</th>
                        <th field="genre" width="50" editor="{type:'validatebox'}">genre</th>
                        <th field="plots" width="50" editor="{type:'validatebox'}">plots</th>
                        <th field="posters" width="50" editor="{type:'validatebox'}">posters</th>
                        <th field="releaseDate" width="50" editor="{type:'validatebox'}">releaseDate</th>
                        <th field="keywords" width="50" editor="{type:'validatebox'}">keywords</th>
                        <th field="company" width="50" editor="{type:'validatebox'}">releaseDate</th>
                    </tr>
                    </thead>
                </table>
                <div id="toolbar">
                    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#dg').edatagrid('addRow')">New</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:$('#dg').edatagrid('destroyRow')">Destroy</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#dg').edatagrid('saveRow')">Save</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">Cancel</a>
                </div>
        
            </div>
            <div>
                ${gridList}
            </div>
        
        
            <script type="text/javascript">
                $(function(){
                    $('#dg').edatagrid({
                        url: 'moviegridData',
                        saveUrl: '',
                        updateUrl: '',
                        destroyUrl: ''
                    });
                });
            </script>
        </div>
    </div>
    <%@ include file="../comp/footer.jsp" %>
</body>

</html>