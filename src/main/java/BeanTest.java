import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album thriller = new Album(1, "Michael Jackson", "Thriller", 1982, 70, "Pop, post-disco, funk, rock");
        Album backInBlack = new Album(2, "AC/DC", "Back in black", 1980, 50, "Hard rock");
        System.out.println(thriller);
        System.out.println(backInBlack);
        System.out.printf("%s, %s, %s, %s, %s\n", backInBlack.getArtist(), backInBlack.getName(), backInBlack.getRelease_date(), backInBlack.getSales(), backInBlack.getGenre());

        Author author1 = new Author(1, "Douglas", "Adams");
        System.out.printf("%s %s %s\n", author1.getFirstName(), author1.getLastName(), author1.getId());

        Author author2 = new Author(2, "Mark", "Twain");
        System.out.printf("%s %s %s\n", author2.getFirstName(), author2.getLastName(), author2.getId());

        Quote quote1 = new Quote(1, "Dont panic", author1);
        Quote quote2 = new Quote(2, "Time is an illusion. Lunchtime doubly so.", author1);

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quote1);
        quotes.add(quote2);

        for (Quote quote : quotes) {
            System.out.printf("\"" + quote.getContent() + "\" - " + quote.getAuthor().getFirstName() +" "+ quote.getAuthor().getLastName() + "\n");
        }

    }
}
