package mx.edu.utez.gird.model;

import javax.management.ObjectInstance;
import java.util.List;

public interface DaoRepository<T> {
    List<T> findAll();

    T findOne(int id);

    boolean update(int id, Object usr);

    boolean delete(int id);

    boolean insert(Object usr);

}
