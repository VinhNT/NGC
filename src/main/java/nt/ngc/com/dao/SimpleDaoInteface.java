package nt.ngc.com.dao;

import java.io.Serializable;

public interface SimpleDaoInteface<T, Id extends Serializable> {

    public void persist(T entity, boolean isFlush);

    public void update(T entity, boolean isFlush);

    public void delete(T entity, boolean isFlush);

}