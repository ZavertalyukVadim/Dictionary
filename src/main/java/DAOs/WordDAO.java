package DAOs;

import entity.Word;

import java.util.List;

/**
 * Created by Вадимка on 27.04.16.
 */
public class WordDAO extends BaseDAO<Word> implements WordDAOInterface {


//    @SuppressWarnings("unchecked")
//    public List<Word> test(int id) {
//        return sessionFactory.getCurrentSession().createQuery("from Word W where W.category.id = " + id + " order by W.word").list();
//    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Word> getSortedCategoryWord(int categoryId) {
        return sessionFactory.getCurrentSession().createQuery("from Word W where W.category.id = " + categoryId + " order by W.word").list();
    }

    @Override
    public List<Word> getLikeWords(String likeString) {
        return sessionFactory
                .getCurrentSession()
//                .createQuery("from Word W WHERE W.word like '%" + likeString + "%'")
                .createQuery("from Word")
                .list();
    }
}
