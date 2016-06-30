package services;

import entity.Category;
import entity.Sense;
import entity.Word;

import java.util.List;

/**
 * Created by Вадимка on 30.04.16.
 */
public class DictionaryService implements DictionaryServiceInterface {

    private CategoryService categoryService;
    private SenseService senseService;
    private WordService wordService;

    DictionaryService(
            CategoryService categoryService,
            SenseService senseService,
            WordService wordService
    ) {
        this.categoryService = categoryService;
        this.senseService = senseService;
        this.wordService = wordService;
    }



    ///////////////////////////////
    // Category service methods //
    /////////////////////////////

    @Override
    public List<Category> getCategories() {
        return categoryService.getCategories();
    }

    @Override
    public Category getCategoryById(int id) {
        return categoryService.getCategoryById(id);
    }

    @Override
    public void addCategory(Category category) {
        categoryService.addCategory(category);
    }

    @Override
    public void updateCategory(Category category) {
        categoryService.updateCategory(category);
    }

    @Override
    public void deleteCategory(Category category) {
        categoryService.deleteCategory(category);
    }

    ////////////////////////////
    // Sense service methods //
    //////////////////////////

    @Override
    public List<Sense> getSenses() {
        return senseService.getSenses();
    }

    @Override
    public Sense getSenseById(int id) {
        return senseService.getSenseById(id);
    }

    @Override
    public void addSense(Sense sense) {
        senseService.addSense(sense);
    }

    @Override
    public void updateSense(Sense sense) {
        senseService.updateSense(sense);
    }

    @Override
    public void deleteSense(Sense sense) {
        senseService.deleteSense(sense);
    }

    ///////////////////////////
    // Word service methods //
    /////////////////////////

    @Override
    public List<Word> getWords() {
        return wordService.getWords();
    }

    @Override
    public Word getWordById(int id) {
        return wordService.getWordById(id);
    }

    @Override
    public void addWord(Word word) {
        wordService.addWord(word);
    }

    @Override
    public void updateWord(Word word) {
        wordService.updateWord(word);
    }

    @Override
    public void deleteWord(Word word) {
        wordService.deleteWord(word);
    }

    @Override
    public List<Word> getSortedCategoryWords(int categoryId) {

        return wordService.getSortedCategoryWords(categoryId);
    }

    @Override
    public List<Word> getLikeWords(String likeString) {
        return wordService.getLikeWords(likeString);
    }


}
