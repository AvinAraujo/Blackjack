#include <iostream>
#include <vector>
#include <string>
#include <limits>
#include <random>
#include <algorithm>

using namespace std;

// Structure to represent a Player in the game
struct Player {
    vector<int> playerHand; // Vector to store the player's hand (cards)
    string playerName;      // String to store the player's name

    // Constructor to initialize the player with a name
    Player(string name) : playerName(name) {}
};

struct Card {
    string suit;
    string rank;
    int value;
};

struct Deck {
    vector <Card> cards;

    void initialize(int &difficulty){
        string suits[] = {"Hearts", "Diamonds", "Clubs", "Spades"};
        string ranks[] = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"};
        int values[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11};

        for(int deckcount = 0; deckcount < difficulty; deckcount++){
            for (const auto& suit : suits) {
                for (int i = 0; i < 13; ++i) {
                    cards.push_back({suit, ranks[i], values[i]});
                }
            }
        }
    }

    void shuffleDeck() {
        random_device rd;
        mt19937 gen(rd());

        shuffle(cards.begin(), cards.end(), gen);
    }

    // Function to draw a card from the deck
    Card drawCard() {
        Card newCard = cards.back();
        cards.pop_back();
        return newCard;
    }

};

// Function to start the game and initialize players
void gameStart(vector<Player> &Table) {
    int playerNumber = 0; // Counter for the number of players

    // Loop to add up to 4 players
    for (int i = 0; i < 4; i++) {
        string playerName;

        // Prompt the user to enter a player name
        cout << "Enter Player Name (Exit to skip Player): \n";
        getline(cin, playerName);

        // If the user enters "Exit", break out of the loop
        if (playerName == "Exit") {
            break;
        }

        // Create a new player with a numbered name and add to the table
        Player newplayer(to_string(++playerNumber) + ". " + playerName);
        Table.push_back(newplayer);
    }
}

// Function to display the start menu and handle user choices
void startMenu(int &difficulty, vector<Player> &Table) {
    bool startMenuRunning = true; // Flag to keep the start menu running

    // Loop to display the start menu until the user chooses to quit
    while (startMenuRunning) {
        int choice;

        // Display the start menu options
        cout << "Hello, this is Blackjack for dipshits. Please choose an option:\n";
        cout << "1. Start Game\n";
        cout << "2. Set Difficulty\n";
        cout << "3. Quit Game\n";
        cout << "Enter your choice: ";

        cin >> choice;

        // Handle invalid input
        if(cin.fail()){
            cin.clear(); // Clear the error state
            cin.ignore(numeric_limits<streamsize>::max(), '\n'); // Ignore the rest of the input
            cout << "Invalid choice. Please try again.\n";
            continue;
        }
        cin.ignore();

        // Handle user choices
        switch (choice) {
            case 1:
                gameStart(Table); // Start the game and initialize players
                startMenuRunning = false; // Exit the start menu
                break;
            case 2:
                difficulty = 8; // Set difficulty to hard
                cout << "Difficulty set to hard.\n";
                break;
            case 3:
                startMenuRunning = false; // Exit the start menu
                break;
            default:
                cout << "Invalid choice. Please try again.\n";
                break;
        }
    }
}


int main(){
    // Initialize the table with one player, the Dealer
    vector<Player> Table = {{"Dealer"}};
    Deck deck;
    int difficulty = 1; // Flag to store the difficulty level

    // Start the game and add players
    startMenu(difficulty, Table);

    deck.initialize(difficulty);

    for (int i = 0; i < 3; i++) { // Shuffle 3 times for better randomness
        deck.shuffleDeck();
    }

    return 0;
}
