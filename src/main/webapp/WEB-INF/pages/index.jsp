<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Upload File for testing</title>
</head>
<body>
    <h3>Upload your file</h3>
    <input id="fileupload" type="file" name="files[]" data-url="<c:url value="files/upload"/>" multiple>
    <textarea name="editor1" id="editor1" rows="10" cols="80">
    This is my textarea to be replaced with CKEditor.
    </textarea>
<script>
    $(document).ready(function() {
        initUploadFile('#fileupload');
        initCKEditor('editor1');
    });
</script>
</body>

</html>