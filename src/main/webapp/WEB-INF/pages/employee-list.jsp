<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Danh sach nhan vien</title>
</head>
<body>
    <table class="table table-bordered table-hover first-time-initial" id="table-employee-list">
    <thead>
        <tr>
            <td>Ma nhan vien</td>
            <td>Ten nhan vien</td>
            <td>Gioi tinh</td>
            <td>Phong ban</td>
            <td>Dia chi</td>
            <td>Dien thoai</td>
            <td>Mobile</td>
            <td>Email</td>
            <td>&nbsp;</td>
        </tr>
    </thead>
    <tbody>
        
    </tbody>
    </table>
    <button class="btn btn-primary" name="createNewEmployee" onclick="evnReward.showEmployeeForm(this, true);">Them moi nhan vien</button>

<!-- Modal -->
<div class="modal fade" id="popup-emloyee-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
  <form name="employee-form">
    <input type="text" name="empId" id="empId" class="form-control col-md-10 hide empId"/>
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Nhap thong tin nhan vien</h4>
      </div>
      <div class="modal-body">
         <div class="row">
             <div class="col-md-6"><label for="form_empNme">Ho ten nhan vien</label></div>
             <div class="col-md-6"><input type="text" name="empNme" id="form_empNme" class="form-control col-md-10 form_empNme"/></div>
         </div>
         <div class="row">
             <div class="col-md-6"><label for="form_empRndr">Gioi tinh</label></div>
             <div class="col-md-6">
                 <select id="form_empRndr" name ="empRndr" class="form-control col-md-10 empRndr">
                     <option value="0">Nam</option>
                     <option value="1">Nu</option>
                 </select>
             </div>
         </div>
         <div class="row">
             <div class="col-md-6"><label for="form_dmntId">Phong ban</label></div>
             <div class="col-md-6">
                 <select name="dmntId" id="form_dmntId" class="form-control col-md-10 form_dmntId">
                     <option value="">Chon phong ban</option> 
                     <c:forEach items="${departments}" var="department">
                     <option value="${department.getDmntId()}" title="${department.getDmntDcspt()}">${department.getDmntNme()}</option>
                     </c:forEach>
                 </select>
             </div>
         </div>
         <div class="row">
             <div class="col-md-6"><label for="form_empAddr">Dia chi</label></div>
             <div class="col-md-6"><input type="text" name="empAddr" id="form_empAddr" class="form-control col-md-10 empAddr"/></div>
         </div>
         <div class="row">
             <div class="col-md-6"><label for="form_empTel">Tel</label></div>
             <div class="col-md-6"><input type="text" name="empTel" id="form_empTel" class="form-control col-md-10 empTel"/></div>
         </div>
         <div class="row">
             <div class="col-md-6"><label for="form_empClpne">Mobile</label></div>
             <div class="col-md-6"><input type="text" name="empClpne" id="form_empClpne" class="form-control col-md-10 empClpne"/></div>
         </div>
         <div class="row">
             <div class="col-md-6"><label for="form_empEml">Email</label></div>
             <div class="col-md-6"><input type="text" name="empEml" id="form_empEml" class="form-control col-md-10 empEml"/></div>
         </div>
       </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="evnReward.saveEmployee(this, '#table-employee-list');">Save changes</button>
      </div>
    </div>
    </form>
  </div>
</div>
<script>
 $(document).ready(function() {
     evnReward.loadEmployeeDatatable('#table-employee-list');
 });
</script>
</body>
</html>