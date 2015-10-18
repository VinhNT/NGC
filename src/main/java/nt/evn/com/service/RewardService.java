package nt.evn.com.service;

import java.util.List;

import nt.evn.com.entities.Reward;
import nt.evn.com.entities.RewardFile;
import nt.evn.com.model.RewardModel;

import org.springframework.web.multipart.MultipartFile;

public interface RewardService {
    public static final Byte EMPLOYEE_REWARD_TYPE   = 0;
    public static final Byte DEPARTMENT_REWARD_TYPE = 1;

    List<RewardModel> obtainEmployeeReward(Integer empId);

    List<RewardModel> obtainDepartmentReward(Integer dmntId);

    Reward obtainEmployeeRewardById(Integer empRwdId);

    RewardFile obtainRewardById(Integer rwdId);

    List<RewardModel> saveEmployeeReward(MultipartFile file, String rwdDte, String rwdVal,
            String rwdDcrpt, String subjectRwdId, String rwdId, String rwdFileId);
}
