<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Chi tiet khen thuong</title>
</head>
<body>
    <div class="col-md-12">
        <div class="row">
            <div class="col-xs-2 col-md-2">Ten nhan vien</div>
            <div class="col-xs-10 col-md-10">${employee.empNme}</div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-md-2">Phong ban</div>
            <div class="col-xs-10 col-md-10">${employee.dmntId}</div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-md-2">Dia chi</div>
            <div class="col-xs-10 col-md-10">${employee.empAddr}</div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-md-2">Dien thoai</div>
            <div class="col-xs-10 col-md-10">${employee.empTel}</div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-md-2">Di dong</div>
            <div class="col-xs-10 col-md-10">${employee.empClpne}</div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-md-2">Email </div>
            <div class="col-xs-10 col-md-10">${employee.empEml}</div>
        </div>
    </div>
    <div class="col-md-12">
    <h2>Khen thuong</h2>
    <table class="table table-bordered table-hover first-time-initial" id="table-employee-reward-list">
    <thead>
        <tr>
            <td class="col-md-2">Ngay thang</td>
            <td class="col-md-2">Gia tri</td>
            <td class="col-md-5">Mo ta</td>
            <td class="col-md-1">File</td>
            <td class="col-md-2"></td>
        </tr>
    </thead>
    <tbody>
    </tbody>
    </table>
    <button class="btn btn-primary" onclick="evnReward.addReward(${employee.empId});">Them quyet dinh khen thuong</button>
    </div>
<!-- Modal -->
<div class="modal fade" id="popup-emloyee-reward-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
  <form method="POST" action="<c:url value="ajax/employee/reward/save"/>" enctype="multipart/form-data" name="employee-reward-form">
    <input type="text" name="subjectRwdId" id="sbt_rwd_id" class="hide sbt_rwd_id"/>
    <input type="text" name="rwdId" id="form_rwd_id" class="hide form_rwd_id"/>
    <input type="text" name="rwdFileId" id="form_rwd_file_id" class="hide form_rwd_file_id"/>
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Nhap thong tin khen thuong</h4>
      </div>
      <div class="modal-body">
         <div class="row">
             <div class="col-md-4"><label for="form_emp_rwd_dte">Ngay thang</label></div>
             <div class="col-md-8"><input type="text" name="rwdDte" id="form_emp_rwd_dte" class="form-control col-md-10 form_emp_rwd_dte jquery-date-picker"/></div>
         </div>
         <div class="row">
             <div class="col-md-4"><label for="form_emp_rwd_dte">Gia tri</label></div>
             <div class="col-md-8"><input type="text" name="rwdVal" id="emp_rwd_val" class="form-control col-md-10 emp_rwd_val"/></div>
         </div>
         <div class="row">
             <div class="col-md-4"><label for="form_emp_rwd_dcrpt">Mo ta</label></div>
             <div class="col-md-8"><input type="text" name="rwdDcrpt" id="emp_rwd_dcrpt" class="form-control col-md-10 emp_rwd_dcrpt"/></div>
         </div>
         <div class="row">
             <div class="col-md-4"><label for="emp_rwd_file">File</label></div>
             <div class="col-md-8">
                <span class="current-file-container hide"><span class="btn btn-info current-file-title"></span> <span id="removeUploadedFileBtn" class="btn btn-danger remove_fields removeUploadedFileBtn">Xoa</span></span>
                <span class="upload-button-container">
                    <input type="file" name="rwdFile" id="emp_rwd_file" data-filename-placement="inside" class="col-md-8 emp_rwd_file"></input>
                </span>
             </div>
         </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="SUBMIT" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    </form>
  </div>
</div>
<script>
 $(document).ready(function() {
     evnReward.loadEmployeeReward('#table-employee-reward-list', '${employee.empId}');
     $('#emp_rwd_file').bootstrapFileInput();
     $('.jquery-date-picker').datepicker();
 });
</script>
</body>
</html>