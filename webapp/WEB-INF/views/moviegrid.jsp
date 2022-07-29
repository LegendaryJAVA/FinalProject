<%--
  Created by IntelliJ IDEA.
  User: sniperditto
  Date: 2022/06/24
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>영화관리테스트</title>
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.edatagrid.js"></script>
</head>
<body>
    <div>
        <table id="dg" title="Movie List" style="width:1200px;height:700px"
               data-options="
                url:'moviegridData',
                rownumbers:true,
                fitColumns:true,
                pagination:true,
                singleSelect:false,
                idField:'DOCID',
                toolbar:'#toolbar',
                selectOnCheck:false,
                checkOnSelect:false,

                ">
            <thead>
            <tr>
                <th field="ck" checkbox="true"> </th>
                <th field="DOCID" width="50" editor="{type:'validatebox',options:{required:true}}" sortable = "true">DOCID</th>
                <th field="title" width="50" editor="{type:'validatebox'}" sortable = "true">title</th>
                <th field="titleEng" width="50" editor="{type:'validatebox'}">titleEng</th>
                <th field="titleEtc" width="50" editor="{type:'validatebox'}">titleEtc</th>
                <th field="prodYear" width="50" editor="{type:'validatebox'}" sortable = "true">prodYear</th>
                <th field="nation" width="50" editor="{type:'validatebox'}">nation</th>
                <th field="runtime" width="50" editor="{type:'validatebox'}" sortable = "true">runtime</th>
                <th field="genre" width="50" editor="{type:'validatebox'}">genre</th>
                <th field="plots" width="50" editor="{type:'validatebox'}">plots</th>
                <th field="posters" width="50" editor="{type:'validatebox'}">posters</th>
                <th field="releaseDate" width="50" editor="{type:'validatebox'}" sortable = "true">releaseDate</th>
                <th field="keywords" width="50" editor="{type:'validatebox'}">keywords</th>
                <th field="company" width="50" editor="{type:'validatebox'}">company</th>
            </tr>
            </thead>
        </table>
        <div id="toolbar">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#dg').edatagrid('addRow')">행 추가</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:$('#dg').edatagrid('destroyRow')">행 삭제</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#dg').edatagrid('saveRow')">행 저장</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">행 되돌리기</a>
        </div>
    </div>


    <script type="text/javascript">
        $(function(){
            $('#dg').edatagrid({
                /*
                정렬 관련 처리하기
                페이지 처리하기

                url : A URL to retrieve data from server.
                saveUrl : A URL to save data to server and return the added row.
                updateUrl : A URL to update data to server and return the updated row.
                destroyUrl : A URL to post 'id' parameter to server to destroy that row.
                 */
                autoSave: true,
                url: 'moviegridData',
                saveUrl: 'moviegridSave',
                updateUrl: 'moviegridSave',
                destroyUrl: 'moviegridDelete',
                onSave:function(index,row){
                    $('#dg').edatagrid('reload');
                },
                onDestroy:function(index,row){
                    $('#dg').edatagrid('reload');
                }
            });
        });
    </script>

</body>
</html>
