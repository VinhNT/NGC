package nt.evn.com.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class RewardModel implements Serializable {

    private static final long serialVersionUID = 4161486078255153844L;
    private Integer           rwdId;
    private byte              rwdType;
    private Date              rwdDte;
    private int               subjectId;
    private BigDecimal        rwdVal;
    private String            rwdDcrpt;
    private Integer           rwdFileId;
    private String            rwdFileName;
    private String            rwdFileType;

    public RewardModel(Integer rwdId, byte rwdType, Date rwdDte, int subjectId, BigDecimal rwdVal,
            String rwdDcrpt, Integer rwdFileId, String rwdFileName, String rwdFileType) {
        super();
        this.rwdId = rwdId;
        this.rwdType = rwdType;
        this.rwdDte = rwdDte;
        this.subjectId = subjectId;
        this.rwdVal = rwdVal;
        this.rwdDcrpt = rwdDcrpt;
        this.rwdFileId = rwdFileId;
        this.rwdFileName = rwdFileName;
        this.rwdFileType = rwdFileType;
    }

    public Integer getRwdId() {
        return rwdId;
    }

    public void setRwdId(Integer rwdId) {
        this.rwdId = rwdId;
    }

    public byte getRwdType() {
        return rwdType;
    }

    public void setRwdType(byte rwdType) {
        this.rwdType = rwdType;
    }

    public Date getRwdDte() {
        return rwdDte;
    }

    public void setRwdDte(Date rwdDte) {
        this.rwdDte = rwdDte;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public BigDecimal getRwdVal() {
        return rwdVal;
    }

    public void setRwdVal(BigDecimal rwdVal) {
        this.rwdVal = rwdVal;
    }

    public String getRwdDcrpt() {
        return rwdDcrpt;
    }

    public void setRwdDcrpt(String rwdDcrpt) {
        this.rwdDcrpt = rwdDcrpt;
    }

    public Integer getRwdFileId() {
        return rwdFileId;
    }

    public void setRwdFileId(Integer rwdFileId) {
        this.rwdFileId = rwdFileId;
    }

    public String getRwdFileName() {
        return rwdFileName;
    }

    public void setRwdFileName(String rwdFileName) {
        this.rwdFileName = rwdFileName;
    }

    public String getRwdFileType() {
        return rwdFileType;
    }

    public void setRwdFileType(String rwdFileType) {
        this.rwdFileType = rwdFileType;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }
}
