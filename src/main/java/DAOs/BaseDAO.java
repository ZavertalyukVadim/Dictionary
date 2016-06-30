package DAOs;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/**
 * Created by Вадимка on 27.04.16.
 */
@Transactional
public abstract class BaseDAO<T> implements BaseDAOInterface<T> {

    @Autowired
    protected SessionFactory sessionFactory;

    private Class<T> type;

    @SuppressWarnings("unchecked")
    public BaseDAO() {
        Type t = getClass().getGenericSuperclass();
        ParameterizedType pt = (ParameterizedType) t;
        type = (Class) pt.getActualTypeArguments()[0];
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<T> getTableRows() {
        return sessionFactory
                .getCurrentSession()
                .createQuery("from " + type.getSimpleName())
                .list();
    }
//from Word where word.id
//creareSQLQuery



    @Override
    @SuppressWarnings("unchecked")
    public T getRowById(int id) {
        return (T) sessionFactory.getCurrentSession().get(type, id);
    }

    @Override
    public void save(T object) {
        sessionFactory.getCurrentSession().save(object);
    }

    @Override
    public void update(T object) {
        sessionFactory.getCurrentSession().saveOrUpdate(object);
    }

    @Override
    public void delete(T object) {
        sessionFactory.getCurrentSession().delete(object);
    }
}
