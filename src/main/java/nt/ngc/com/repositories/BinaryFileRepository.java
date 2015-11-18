package nt.ngc.com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import nt.ngc.com.entities.BinaryFile;

public interface BinaryFileRepository extends JpaRepository<BinaryFile, String> {
    @Query("SELECT count(*) FROM BinaryFile bf WHERE bf.id=:fId")
    int countBinaryWithId(@Param("fId") String fileId);
}