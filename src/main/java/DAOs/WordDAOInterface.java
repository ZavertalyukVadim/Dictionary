package DAOs;

import entity.Word;

import java.util.List;

/**
 * Created by Вадимка on 27.04.16.
 */
public interface WordDAOInterface extends BaseDAOInterface<Word> {
    List<Word> getSortedCategoryWord(int categoryId);
    List<Word> getLikeWords(String likeString);
}
