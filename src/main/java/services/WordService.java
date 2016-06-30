package services;

import DAOs.WordDAO;
import entity.Word;

import java.util.List;

/**
 * Created by Вадимка on 30.04.16.
 */
public class WordService implements WordServiceInterface {

    private WordDAO wordDAO;

    WordService(WordDAO wordDAO) {
        this.wordDAO = wordDAO;
    }


    @Override
    public List<Word> getSortedCategoryWords(int categoryId) {
        return wordDAO.getSortedCategoryWord(categoryId);///
    }

    @Override
    public List<Word> getLikeWords(String likeString) {
        return wordDAO.getLikeWords(likeString);
    }

    @Override
    public List<Word> getWords() {
        return wordDAO.getTableRows();
    }

    @Override
    public Word getWordById(int id) {
        return wordDAO.getRowById(id);
    }

    @Override
    public void addWord(Word word) {
        wordDAO.save(word);
    }

    @Override
    public void updateWord(Word word) {
        wordDAO.update(word);
    }

    @Override
    public void deleteWord(Word word) {
        wordDAO.delete(word);
    }

}
