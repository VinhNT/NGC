package nt.evn.com.dao;

import java.util.List;

import nt.evn.com.entities.Reward;
import nt.evn.com.model.RewardModel;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface RewardRepository extends CrudRepository<Reward, Integer> {

    List<Reward> findBySubjectIdAndRwdType(Integer empId, Byte rwdType);

    Reward findByRwdId(Integer rwdId);
    
    @Query("SELECT new nt.evn.com.model.RewardModel(r.rwdId, r.rwdType, r.rwdDte, r.subjectId, r.rwdVal, r.rwdDcrpt, "
            + "rf.rwdFileId, rf.rwdFileName, rf.rwdFileType) FROM Reward r LEFT JOIN r.rewardFile rf WHERE r.rwdId =?1 and r.rwdType = ?2 ")
    List<RewardModel> findRwdMdlByRwdIdAndRwdType(Integer rwdId, Byte rwdType); 
}
