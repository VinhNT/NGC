package nt.evn.com.service.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import nt.evn.com.dao.RewardFileRepository;
import nt.evn.com.dao.RewardRepository;
import nt.evn.com.entities.Reward;
import nt.evn.com.entities.RewardFile;
import nt.evn.com.model.RewardModel;
import nt.evn.com.service.RewardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class RewardServiceImpl implements RewardService {

    @Autowired
    private RewardRepository     rewardRepository;

    @Autowired
    private RewardFileRepository rewardFileRepository;

    @Override
    public List<RewardModel> obtainEmployeeReward(Integer empId) {
        return rewardRepository.findRwdMdlByRwdIdAndRwdType(empId, EMPLOYEE_REWARD_TYPE);
    }

    @Override
    public Reward obtainEmployeeRewardById(Integer empRwdId) {
        return rewardRepository.findByRwdId(empRwdId);
    }

    public RewardFile obtainRewardById(Integer rwdId) {
        return rewardFileRepository.findByRwdFileId(rwdId);
    }

    @Override
    public List<RewardModel> obtainDepartmentReward(Integer dmntId) {
        return rewardRepository.findRwdMdlByRwdIdAndRwdType(dmntId, DEPARTMENT_REWARD_TYPE);
    }

    @Override
    public List<RewardModel> saveEmployeeReward(MultipartFile file, String rwdDte, String rwdVal,
            String rwdDcrpt, String subjectRwdId, String rwdId, String rwdFileId) {
        Integer intRwdId = convertStringToInteger(rwdId);
        Integer iRwdFileId = convertStringToInteger(rwdFileId);
        Integer iSubjectRwdId = convertStringToInteger(subjectRwdId);
        
        Reward rwd = null;
        if (intRwdId != null) {
            rwd = rewardRepository.findByRwdId(intRwdId);
        }
        rwd = rwd==null ? new Reward() : rwd;
        rwd.setRwdDcrpt(rwdDcrpt);
        rwd.setRwdDte(new Date(rwdDte));
        rwd.setRwdType(EMPLOYEE_REWARD_TYPE);
        rwd.setRwdVal(BigDecimal.valueOf(Double.parseDouble(rwdVal)));
        rwd.setSubjectId(iSubjectRwdId);
        
        if (file.isEmpty()) {
            // Remove file
            if (iRwdFileId != null) {
                rewardFileRepository.deleteByRwdFileId(iRwdFileId);
            }
            rwd.setRewardFile(null);
        } else {
            RewardFile rwdFile = null;
            if (iRwdFileId != null) {
                rwdFile = rewardFileRepository.findByRwdFileId(iRwdFileId);
            }
            rwdFile = rwdFile == null ? new RewardFile() : rwdFile;
            rwdFile.setRwdFileName(file.getOriginalFilename());
            rwdFile.setRwdFileType(file.getContentType());
            try {
                rwdFile.setRwdFileData(file.getBytes());
                rwdFile = rewardFileRepository.save(rwdFile);
            } catch (IOException e) {
                rwdFile = null;
            }
            rwd.setRewardFile(rwdFile);
            rewardRepository.save(rwd);
        }
        return null;
    }
    
    private Integer convertStringToInteger(String valueIn) {
        Integer intValue;
        try {
            intValue = Integer.valueOf(valueIn);
        } catch (NumberFormatException nfe) {
            return null;
        }
        return intValue;
    }


}
