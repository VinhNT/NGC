package nt.ngc.com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"bytes"})
public class FileMeta {

    public FileMeta() {
        super();
    }

    private String fileName;
    private String fileSize;
    private String fileType;
    private boolean uploaded;
    private String errMessage;

    private String fileId;
    private String fileDownLoadUrl;

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public boolean isUploaded() {
        return uploaded;
    }

    public void setUploaded(boolean uploaded) {
        this.uploaded = uploaded;
    }

    public String getErrMessage() {
        return errMessage;
    }

    public void setErrMessage(String errMessage) {
        this.errMessage = errMessage;
    }

    public String getFileId() {
        return fileId;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    public String getFileDownLoadUrl() {
        return fileDownLoadUrl;
    }

    public void setFileDownLoadUrl(String fileDownLoadUrl) {
        this.fileDownLoadUrl = fileDownLoadUrl;
    }
}
