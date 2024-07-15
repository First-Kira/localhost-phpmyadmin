<?php
// Database connection parameters
$servername = "localhost";  // Change this if your MySQL server is on a different host
$username = "root";         // MySQL username (default is root)
$password = "";             // MySQL password (default is empty)
$dbname = "yugioh_deck";    // Name of your database

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch data from the table
$sql = "SELECT * FROM deck";
$result = $conn->query($sql);

$cards = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $cards[] = $row;
    }
} else {
    echo "0 results";
}

// Close connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yu-Gi-Oh! Deck</title>
    <style>
        .card {
            display: inline-block;
            margin: 10px;
            text-align: center;
        }
        .card img {
            width: 100px;
            height: auto;
        }
    </style>
</head>
<body>
    <h1>Random Yu-Gi-Oh! Hand</h1>
    <button onclick="getRandomCards()">Get Random Cards</button>
    <div id="card-container"></div>

    <script>
        const deck = <?php echo json_encode($cards); ?>;

        function getRandomCards() {
            let allCards = [];
            deck.forEach(card => {
                for (let i = 0; i < card.count; i++) {
                    allCards.push(card);
                }
            });
            
            const shuffled = allCards.sort(() => 0.5 - Math.random());
            const selectedCards = shuffled.slice(0, 5);
            
            const cardContainer = document.getElementById('card-container');
            cardContainer.innerHTML = '';
            selectedCards.forEach(card => {
                const cardElement = document.createElement('div');
                cardElement.className = 'card';
                cardElement.innerHTML = `
                    <img src="${card.imageUrl}" alt="${card.name}">
                    <p>${card.name}</p>
                `;
                cardContainer.appendChild(cardElement);
            });
        }
    </script>
</body>
</html>
