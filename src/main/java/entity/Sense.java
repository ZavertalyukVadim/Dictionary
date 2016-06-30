package entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Вадимка on 27.04.16.
 */

@Entity
@Table(name = "sense")
public class Sense {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String sense;

    @ManyToMany(fetch = FetchType.EAGER, mappedBy = "senses")
    private List<Word> words;

    public Sense(){}

    public Sense(String sense) {
        this.sense = sense;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSense() {
        return sense;
    }

    public void setSense(String sense) {
        this.sense = sense;
    }

    public List<Word> getWords() {
        return words;
    }

    public void setWords(List<Word> words) {
        this.words = words;
    }
}
