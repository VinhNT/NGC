var NgcJs = function() {
    this.urlContext = null;
    this.employeeTable = null;
    this.employeeRewardTable = null;
}

NgcJs.prototype.setContextUrl = function(urlContext) {
    this.urlContext = urlContext;
}

var ngcJs = new NgcJs();