package nt.ngc.com.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import nt.ngc.com.dao.SimpleDaoInteface;
import nt.ngc.com.entities.BinaryFile;

@Component
public class BinaryFileDao implements SimpleDaoInteface<BinaryFile, String> {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void persist(BinaryFile binaryFile, boolean isFlush) {
        entityManager.persist(binaryFile);
        commitTransaction(isFlush);
    }

    @Override
    public void update(BinaryFile binaryFile, boolean isFlush) {
        entityManager.persist(binaryFile);
        commitTransaction(isFlush);
    }


    @Override
    public void delete(BinaryFile entity, boolean isFlush) {
        entityManager.remove(entity);
        commitTransaction(isFlush);
    }

    private void commitTransaction(boolean isFlush) {
        if (isFlush) {
            entityManager.flush();
        }
    }

}
