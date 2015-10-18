function reloadTable(table, aaData) {
    oSettings = table.fnSettings();

    table.fnClearTable(this);

    for (var i = 0; i < aaData.length; i++) {
        table.oApi._fnAddData(oSettings, aaData[i]);
    }
    oSettings.aiDisplay = oSettings.aiDisplayMaster.slice();
    table.fnDraw();
}