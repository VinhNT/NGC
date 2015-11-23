package nt.ngc.com.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(
        name = "binary_files")
@NamedQuery(
        name = "BinaryFile.findAll", query = "SELECT b FROM BinaryFile b")
public class BinaryFile implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    private String id;

    @Lob
    @Column(
            name = "binary_data")
    private byte[] binaryData;

    @Column(
            name = "binary_type")
    private String binaryType;

    @Column(
            name = "mime_type")
    private String mimeType;

    @Column(
            name = "orginal_width")
    private int orginalWidth;

    @Column(
            name = "original_file_name")
    private String originalFileName;

    @Column(
            name = "original_height")
    private int originalHeight;

    @Lob
    @Column(
            name = "thumbnail_data")
    private byte[] thumbnailData;

    @Temporal(TemporalType.TIMESTAMP)
    private Date timestamp;

    private String uploader;

    public BinaryFile() {
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public byte[] getBinaryData() {
        return this.binaryData;
    }

    public void setBinaryData(byte[] binaryData) {
        this.binaryData = binaryData;
    }

    public String getBinaryType() {
        return this.binaryType;
    }

    public void setBinaryType(String binaryType) {
        this.binaryType = binaryType;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public void setMimeType(String mimeType) {
        this.mimeType = mimeType;
    }

    public int getOrginalWidth() {
        return this.orginalWidth;
    }

    public void setOrginalWidth(int orginalWidth) {
        this.orginalWidth = orginalWidth;
    }

    public String getOriginalFileName() {
        return this.originalFileName;
    }

    public void setOriginalFileName(String originalFileName) {
        this.originalFileName = originalFileName;
    }

    public int getOriginalHeight() {
        return this.originalHeight;
    }

    public void setOriginalHeight(int originalHeight) {
        this.originalHeight = originalHeight;
    }

    public byte[] getThumbnailData() {
        return this.thumbnailData;
    }

    public void setThumbnailData(byte[] thumbnailData) {
        this.thumbnailData = thumbnailData;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    public String getUploader() {
        return this.uploader;
    }

    public void setUploader(String uploader) {
        this.uploader = uploader;
    }

}