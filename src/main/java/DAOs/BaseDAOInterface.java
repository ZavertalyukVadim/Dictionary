package DAOs;

import java.util.List;

/**
 * Created by Вадимка on 27.04.16.
 */
public interface BaseDAOInterface<T> {

    List<T> getTableRows();
    T getRowById(int id);
    void save(T object);
    void update(T object);
    void delete(T object);


}
