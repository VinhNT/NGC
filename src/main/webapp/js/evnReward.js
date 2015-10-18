var EvnReward = function() {
    var urlContext;
    var employeeTable = null;
    var employeeRewardTable = null;
}

EvnReward.prototype.setUrlContext = function(urlContext) {
    this.urlContext = urlContext;
}

EvnReward.prototype.showEmployeeForm = function(linkButton, isCreateNew ) {
    $("#popup-emloyee-form form")[0].reset();
    $("#popup-emloyee-form").modal('show');
}

EvnReward.prototype.saveEmployee = function(button, tableId) {
    var _this = this;
    var dataForm = $(button).closest("form")[0];
    var employee = this.prepareEmployeeJson(dataForm);
    $.ajax({
        url : _this.urlContext + '/ajax/employee/addOrUpdate',
        type : 'POST',
        dataType: "json",
        data: JSON.stringify(employee),
        contentType:"application/json",
        success : function(data) {
            var jsonData = eval(data);
            _this.resetEmployeeTable(tableId, jsonData);
        },
        error : function(a,b,c) {
            alert("Oh noes" + a + "  " + b + "   " + c);
        }
    });
}

EvnReward.prototype.prepareEmployeeJson = function(empForm) {
    var updatedEmpId = $("#popup-emloyee-form .empId").val();
    var form_dmntId = $(".form_dmntId", empForm).val();
    var form_empNme = $(".form_empNme", empForm).val();
    var empRndr = $(".empRndr", empForm).val();
    var empAddr = $(".empAddr", empForm).val();
    var empTel = $(".empTel", empForm).val();
    var empClpne = $(".empClpne", empForm).val();
    var empEml = $(".empEml", empForm).val();
    if (updatedEmpId) {
        return {empId: updatedEmpId, dmntId: form_dmntId, empNme: form_empNme, empRndr: empRndr, empAddr: empAddr, empTel: empTel, empClpne: empClpne, empEml: empEml}
    }else {
        return {empId: null, dmntId: form_dmntId, empNme: form_empNme, empRndr: empRndr, empAddr: empAddr, empTel: empTel, empClpne: empClpne, empEml: empEml}
    }
}

EvnReward.prototype.loadEmployeeDatatable = function(tableId, departmentId) {
    var _this = this;
    $.ajax({
        url : _this.urlContext + '/ajax/employee/list',
        type : 'GET',
        dataType: "text",
        success : function(data) {
            var jsonData = eval(data);
            _this.resetEmployeeTable(tableId, jsonData);
        },
        error : function(a,b,c) {
            alert("Oh noes" + a + "  " + b + "   " + c);
        }
    });

}

EvnReward.prototype.loadEmployeeReward = function(tableId, employeeId) {
    var _this = this;
    $.ajax({
        url : _this.urlContext + '/ajax/employee/reward/list',
        type : 'GET',
        dataType: "text",
        data: {id : employeeId},
        success : function(data) {
            var jsonData = eval(data);
            _this.resetEmployeeRewardTable(tableId, jsonData);
        },
        error : function(a,b,c) {
            alert("Oh noes" + a + "  " + b + "   " + c);
        }
    });

}

EvnReward.prototype.resetEmployeeRewardTable = function(tableId, jsonData) {
    var _this = this;

    if (!this.employeeRewardTable) {
        this.employeeRewardTable = $(tableId).dataTable({
            "bProcessing" : true,
            data: jsonData,
            aoColumns : [
                         {"mData" : "rwdDte"}, 
                         {"mData" : "rwdVal"}, 
                         {"mData" : "rwdDcrpt"},
                         {"mData" : "rwdFileId", "mRender": function(data, type, full) {
                             if (data) {
                                 return '<td><a target="new" href="' + _this.urlContext + '/ajax/employee-reward/download/' + full.rwdId + '/' + '">Tai ve</a></td>';
                             } else {
                                 return '<td>&nbsp;</td>';
                             }
                             
                         }},
                         {"mData" : null, "mRender": function(data, type, full) {
                             return '<td><a href="#" onClick="evnReward.updateReward(this, ' + full.rwdId + ');">Cap nhat</a>&nbsp;/&nbsp;<a href="#" onclick="evnReward.updateReward(this, ' + full.rwdId + ');">Xoa</a></td>';
                         }},
                         ],
        });
    }else {
        reloadTable(this.employeeRewardTable, jsonData);
    }
}

EvnReward.prototype.updateReward = function(button, rwdId) {
    $('#popup-emloyee-reward-form').modal("show");
    $('form', $('#popup-emloyee-reward-form'))[0];
    this.populateRewardForm(button, rwdId, $('form', $('#popup-emloyee-reward-form'))[0]);
}

EvnReward.prototype.addReward = function(sbjEd) {
    $('#popup-emloyee-reward-form').modal("show");
    $('form', $('#popup-emloyee-reward-form'))[0].reset();
    $('.sbt_rwd_id', formObject).val(aData.empRwdId);
}

EvnReward.prototype.populateRewardForm = function(button, rwdId, formObject) {
    var tableId = $(button).closest("table").attr("id");
    var td = $(button).closest("td")[0];
    var _this = this;
    var pos = this.employeeRewardTable.fnGetPosition(td);
    var aData = this.employeeRewardTable.fnGetData(pos[0]);
    formObject.reset();
    $('.form_emp_rwd_dte', formObject).datepicker().val(aData.rwdDte);
    $('.emp_rwd_val', formObject).val(aData.rwdVal);
    $('.emp_rwd_dcrpt', formObject).val(aData.rwdDcrpt);
    $('.sbt_rwd_id', formObject).val(aData.empRwdId);
    $('.form_rwd_id', formObject).val(aData.rwdId);
    if (aData.rwdFileId) {
        $('.current-file-container .current-file-title').text(aData.rwdFileName);
        $('.current-file-container').removeClass("hide");
        $('.upload-button-container').addClass("hide");
        $('.form_rwd_file_id', formObject).val(aData.rwdFileId);
    } else {
        $('.current-file-container').addClass("hide");
        $('.upload-button-container').removeClass("hide");
    }

}

EvnReward.prototype.submitRewardForm = function(button) {
    var rwdFrm = $(button).closest("form")[0];
    var formData = new FormData(rwdFrm);
    $.ajax({
        type : "POST",
        url : $(rwdFrm).attr("action"),
        data : $(formData).serialize(), // serializes the form's elements.
        success : function(data) {
            alert(data); // show response from the php script.
        }
    });
    return false;
}

EvnReward.prototype.resetEmployeeTable = function(tableId, jsonData) {
    var _this = this;
    if (!this.employeeTable) {
        this.employeeTable = $(tableId).dataTable({
            "bProcessing" : true,
            data: jsonData,
            aoColumns : [
                         {"mData" : "empId"}, 
                         {"mData" :"empNme"},
                         {"mData" :"empRndr", "mRender": function( data, type, full) {
                             if (data==='0') {
                                 return '<td>Nam</td>'; 
                             }else {
                                 return '<td>Nu</td>';
                             }
                             //return '<td><a href="#" class="delete"><i class="aug-delete" rel="tooltip" data-placement="right" title="Delete"></i></a></td>';
                         }},
                         
                         {"mData" :"dmntId"},
                         {"mData" :"empAddr"},
                         {"mData" :"empTel"},
                         {"mData" :"empClpne"},
                         {"mData" :"empEml"},
                         {"mData" : null, "mRender": function(data, type, full) {
                             return '<td><a href="#" onClick="evnReward.updateEmployee(this, ' + full.empId + ');">Cap nhat</a>&nbsp;/&nbsp;<a href="#" onclick="evnReward.removeEmployee(this, ' + full.empId + ');">Xoa</a>&nbsp;/&nbsp;<a href="' + _this.urlContext + '/employee?id=' + full.empId  + '">Chi tiet</a></td>';
                         }},
                         ],
        });
    }else {
        reloadTable(this.employeeTable, jsonData);
    }
}

EvnReward.prototype.updateEmployee = function(button, employeeId) {
    var tableId = $(button).closest("table").attr("id");
    var td = $(button).closest("td")[0];
    
    var _this = this;
    var pos = this.employeeTable.fnGetPosition(td);
    var aData = this.employeeTable.fnGetData(pos[0]);
    $("#popup-emloyee-form").modal('show');
    $("#popup-emloyee-form .empId").val(aData.empId);
    var empForm = $("#popup-emloyee-form");
    $("#popup-emloyee-form .form_dmntId").val(aData.dmntId);
    var form_empNme = $("#popup-emloyee-form .form_empNme").val(aData.empNme);
    var empRndr = $("#popup-emloyee-form .empRndr").val(aData.empRndr);
    var empAddr = $("#popup-emloyee-form .empAddr").val(aData.empAddr);
    var empTel = $("#popup-emloyee-form .empTel").val(aData.empTel);
    var empClpne = $("#popup-emloyee-form .empClpne").val(aData.empClpne);
    var empEml = $("#popup-emloyee-form .empEml").val(aData.empEml);
    
}
EvnReward.prototype.removeEmployee = function(button, employeeId) {
    var tableId = $(button).closest("table").attr("id");
    var _this = this;
    $.ajax({
        url : _this.urlContext + '/ajax/employee/remove/' + employeeId + '/', 
        type : 'GET',
        dataType: "text",
        success : function(data) {
            var jsonData = eval(data);
            _this.resetEmployeeTable(tableId, jsonData);
        },
        error : function(a,b,c) {
            alert("Oh noes" + a + "  " + b + "   " + c);
        }
    }); 
}

var evnReward = new EvnReward();