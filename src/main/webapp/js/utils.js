function reloadTable(table, aaData) {
    oSettings = table.fnSettings();

    table.fnClearTable(this);

    for (var i = 0; i < aaData.length; i++) {
        table.oApi._fnAddData(oSettings, aaData[i]);
    }
    oSettings.aiDisplay = oSettings.aiDisplayMaster.slice();
    table.fnDraw();
}

function initUploadFile(inputSelector) {
    $(inputSelector).fileupload({
            dataType : 'json',
            done : function(e, data) {
                alert('Done');
            },
            progressall : function(e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                console.log(progress)
            }
        });
}

function initCKEditor(inputName, uploadURL) {
    CKEDITOR.replace(inputName, {filebrowserUploadUrl: uploadURL});
}