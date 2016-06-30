package entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Вадимка on 17.04.16.
 */
@Entity
@Table(name = "word")
public class Word {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String word;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
    @JoinTable(
            name = "synonym",
            joinColumns = {@JoinColumn(name = "word_id")},
            inverseJoinColumns = {@JoinColumn(name = "synonym_id")}
    )
    private List<Word> synonyms;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
    @JoinTable(
            name = "word_sense",
            joinColumns = {@JoinColumn(name = "word_id")},
            inverseJoinColumns = {@JoinColumn(name = "sense_id")}
    )
    private List<Sense> senses = new ArrayList<Sense>();

    public Word(){}

    public Word(String word, Category category) {
        this.word = word;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Word> getSynonyms() {
        return synonyms;
    }

    public void setSynonyms(List<Word> synonyms) {
        this.synonyms = synonyms;
    }

    public List<Sense> getSenses() {
        return senses;
    }

    public void setSenses(List<Sense> senses) {
        this.senses = senses;
    }
}
