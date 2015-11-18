package nt.ngc.com.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the images database table.
 * 
 */
@Entity
@Table(
        name = "binaryfiles")
@NamedQuery(
        name = "BinaryFile.findAll", query = "SELECT b FROM BinaryFile b")
public class BinaryFile implements Serializable {
    private static final long serialVersionUID = 1L;

    @Lob
    private byte[] binarydata;

    private String binarytype;

    @Id
    private String id;

    private int orginalwidth;

    private int originalheight;

    @Lob
    private byte[] thumbnaildata;

    @Temporal(TemporalType.TIMESTAMP)
    private Date timestamp;

    private String uploader;

    public BinaryFile() {

    }

    public BinaryFile(String id) {
        this.id = id;
    }

    public byte[] getBinarydata() {
        return this.binarydata;
    }

    public void setBinarydata(byte[] binarydata) {
        this.binarydata = binarydata;
    }

    public String getBinarytype() {
        return this.binarytype;
    }

    public void setBinarytype(String binarytype) {
        this.binarytype = binarytype;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getOrginalwidth() {
        return this.orginalwidth;
    }

    public void setOrginalwidth(int orginalwidth) {
        this.orginalwidth = orginalwidth;
    }

    public int getOriginalheight() {
        return this.originalheight;
    }

    public void setOriginalheight(int originalheight) {
        this.originalheight = originalheight;
    }

    public byte[] getThumbnaildata() {
        return this.thumbnaildata;
    }

    public void setThumbnaildata(byte[] thumbnaildata) {
        this.thumbnaildata = thumbnaildata;
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