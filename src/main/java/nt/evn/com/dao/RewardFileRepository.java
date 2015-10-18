package nt.evn.com.dao;

import nt.evn.com.entities.RewardFile;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface RewardFileRepository extends CrudRepository<RewardFile, Integer> {
    RewardFile findByRwdFileId(Integer rwdFileId);
    void deleteByRwdFileId(Integer rwdFileId);
}
