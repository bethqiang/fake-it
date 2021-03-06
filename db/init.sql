\c fake-it

DROP TABLE IF EXISTS words;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(64) NOT NULL
);

CREATE TABLE words (
  id SERIAL PRIMARY KEY NOT NULL,
  category_id INT NOT NULL,
  word VARCHAR(64) NOT NULL,
  CONSTRAINT fk_category
    FOREIGN KEY(category_id) 
	    REFERENCES categories(id)
	    ON DELETE CASCADE
);

INSERT INTO categories(name)
  VALUES ('Cartoon Animals'),
  ('Children''s Books'),
  ('Cities'),
  ('Countries'),
  ('Desserts'),
  ('Drinks'),
  ('Fairy Tales'),
  ('Fictional Characters'),
  ('Film Genres'),
  ('Food'),
  ('Games'),
  ('Geography'),
  ('Hobbies'),
  ('Inventions'),
  ('Jobs'),
  ('Movies'),
  ('Music'),
  ('Musical Instruments'),
  ('Mythical Creatures'),
  ('Pets'),
  ('Phobias'),
  ('Rooms'),
  ('School Subjects'),
  ('Sports'),
  ('States'),
  ('Superheroes'),
  ('The Arts'),
  ('Toys'),
  ('Transport'),
  ('Video Games'),
  ('Wild Animals'),
  ('World Wonders');

INSERT INTO words (category_id, word)
  VALUES ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Garfield'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Scooby-Doo'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Yogi Bear'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Bugs Bunny'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Mickey Mouse'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Goofy'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Jiminy Cricket'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Kung Fu Panda'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Nemo'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Tony the Tiger'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Snoopy'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Bambi'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Dumbo'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Wile E. Coyote'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Simba'),
  ((SELECT id FROM categories WHERE NAME = 'Cartoon Animals'), 'Sonic the Hedgehog'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'The Hobbit'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Peter Pan'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'The Very Hungry Caterpillar'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), '101 Dalmatians'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Matilda'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Harry Potter & The Sorcerer''s Stone'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Alice in Wonderland'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'The Lion, the Witch, and the Wardrobe'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Stuart Little'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Goodnight Moon'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Charlie and the Chocolate Factory'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Where the Wild Things Are'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Winnie-the-Pooh'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'The Adventures of Tom Sawyer'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'The Jungle Book'),
  ((SELECT id FROM categories WHERE NAME = 'Children''s Books'), 'Charlotte''s Web'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'New York City'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Moscow'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Delhi'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'London'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Paris'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Rome'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Rio de Janerio'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Sydney'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Tokyo'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Athens'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Cairo'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Hong Kong'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Chicago'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'L.A'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'San Francisco'),
  ((SELECT id FROM categories WHERE NAME = 'Cities'), 'Jerusalem'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'UK'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Spain'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Japan'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Brazil'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'France'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'USA'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Italy'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Australia'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Germany'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Mexico'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'India'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Israel'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Canada'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'China'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Russia'),
  ((SELECT id FROM categories WHERE NAME = 'Countries'), 'Egypt'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Ice Cream'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Chocolate'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Brownies'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Cookies'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Cake'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Cheesecake'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Fudge'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Pie'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Cobbler'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Tiramisu'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'S''mores'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Cupcakes'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Lemon Bars'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Peanut Brittle'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Toffee'),
  ((SELECT id FROM categories WHERE NAME = 'Desserts'), 'Rice Krispie Treats'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Coffee'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Tea'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Lemonade'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Soda'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Wine'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Beer'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Punch'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Tequila'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Hot Chocolate'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Milkshake'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Boba'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Water'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Smoothie'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Orange Juice'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Milk'),
  ((SELECT id FROM categories WHERE NAME = 'Drinks'), 'Champagne'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Cinderella'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Goldilocks'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Jack and the Beanstalk'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Hare and the Tortoise'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Snow White'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Rapunzel'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Aladdin'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Robin Hood'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Peter Pan'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Little Red Riding Hood'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Pinocchio'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Beauty and the Beast'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Sleeping Beauty'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Hansel and Gretel'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Gingerbread Man'),
  ((SELECT id FROM categories WHERE NAME = 'Fairy Tales'), 'Three Little Pigs'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Indiana Jones'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Mary Poppins'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Spiderman'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Catwoman'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'James Bond'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Wonder Woman'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Princess Leia'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'The Little Mermaid'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Dracula'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Mickey Mouse'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Robin Hood'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Hermione Granger'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Super Mario'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Homer Simpson'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Hercules'),
  ((SELECT id FROM categories WHERE NAME = 'Fictional Characters'), 'Katniss Everdeen'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Horror'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Action'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Thriller'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Sci-Fi'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Rom-Com'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Western'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Comedy'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Christmas'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Gangster'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Foreign Language'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'War'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Documentary'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Musical'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Animation'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Zombie'),
  ((SELECT id FROM categories WHERE NAME = 'Film Genres'), 'Sport'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Pizza'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Potatoes'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Fish'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Cake'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Pasta'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Salad'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Soup'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Bread'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Eggs'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Cheese'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Fruit'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Chicken'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Sausage'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Ice Cream'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Chocolate'),
  ((SELECT id FROM categories WHERE NAME = 'Food'), 'Beef'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Monopoly'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Scrabble'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Mouse Trap'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Guess Who'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Risk'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Operation'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Twister'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Pictionary'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Battleship'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Sudoku'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Clue'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Chess'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Checkers'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Trivial Pursuit'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Jenga'),
  ((SELECT id FROM categories WHERE NAME = 'Games'), 'Hungry Hungry Hippos'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Lake'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Sea'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Valley'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Mountain'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'River'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Desert'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Ocean'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Forest'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Jungle'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Island'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Glacier'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Waterfall'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Volcano'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Cave'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Arctic'),
  ((SELECT id FROM categories WHERE NAME = 'Geography'), 'Swamp'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Stamps'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Trains'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Model Making'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Knitting'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Fishing'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Reading'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Painting'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Gardening'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Sailing'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Travel'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Walking'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Pottery'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Cooking'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Yoga'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Photography'),
  ((SELECT id FROM categories WHERE NAME = 'Hobbies'), 'Hiking'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Matches'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Gunpowder'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Wheel'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Printing'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Computer'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Internet'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Compass'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Plane'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'TV'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Electricity'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Writing'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Steam Engine'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Car'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Telephone'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Camera'),
  ((SELECT id FROM categories WHERE NAME = 'Inventions'), 'Radio'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Fisherman'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Lumberjack'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Nurse'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Waiter'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Janitor'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Secretary'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Accountant'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Teacher'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Truck Driver'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Security Guard'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Chef'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Architect'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Software Engineer'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Lawyer'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Carpenter'),
  ((SELECT id FROM categories WHERE NAME = 'Jobs'), 'Butcher'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Jurassic Park'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Jaws'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Raiders of the Lost Ark'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'The Avengers'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Transformers'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Toy Story'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Home Alone'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Titanic'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'E.T.'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'The Wizard of Oz'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'King Kong'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Legally Blonde'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Shrek'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Princess Diaries'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Finding Nemo'),
  ((SELECT id FROM categories WHERE NAME = 'Movies'), 'Avatar'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Rock'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Heavy Metal'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Classical'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Funk'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Hip Hop'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Pop'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Techno'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Blues'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Rap'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Punk'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Indie'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Christmas'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Country'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'House'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Disco'),
  ((SELECT id FROM categories WHERE NAME = 'Music'), 'Reggae'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Electric Guitar'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Piano'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Violin'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Drums'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Bass Guitar'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Saxophone'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Cello'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Flute'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Clarinet'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Trumpet'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Voice'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Ukulele'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Harp'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Bagpipes'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Harmonica'),
  ((SELECT id FROM categories WHERE NAME = 'Musical Instruments'), 'Banjo'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Cyclops'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Pegasus'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Medusa'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Sphinx'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Werewolf'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Unicorn'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Dragon'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Troll'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Loch Ness Monster'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Mermaid'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Phoenix'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Vampire'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Minotaur'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Hydra'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Yeti'),
  ((SELECT id FROM categories WHERE NAME = 'Mythical Creatures'), 'Centaur'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Dog'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Cat'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Fish'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Guinea Pig'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Parakeet'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Ferret'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Sugar Glider'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Hermit Crab'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Parrot'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Snake'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Lizard'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Tarantula'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Boyfriends'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Horse'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Rat'),
  ((SELECT id FROM categories WHERE NAME = 'Pets'), 'Hamster'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Ghosts'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Spiders'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Monsters'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Rats'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Toilets'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Snakes'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Germs'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Clowns'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Needles'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Dogs'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Birds'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Insects'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Children'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Shadows'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Roller Coasters'),
  ((SELECT id FROM categories WHERE NAME = 'Phobias'), 'Planes'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Kitchen'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Hallway'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Greenhouse'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Bedroom'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Bathroom'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Dining Room'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Office'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Living Room'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Attic'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Basement'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Porch'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Nursery'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Den'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Bunker'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Shed'),
  ((SELECT id FROM categories WHERE NAME = 'Rooms'), 'Garage'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Math'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Chemistry'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Physics'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Biology'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'History'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Philosophy'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Geography'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'English'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Economics'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Spanish'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Art'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Music'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Gym'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Latin'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Religion'),
  ((SELECT id FROM categories WHERE NAME = 'School Subjects'), 'Technology'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Football'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Soccer'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Golf'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Baseball'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Basketball'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Ice Hockey'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Sailing'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Squash'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Tennis'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Badminton'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Rock Climbing'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Wrestling'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Lacrosse'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Volleyball'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Triathlon'),
  ((SELECT id FROM categories WHERE NAME = 'Sports'), 'Cycling'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'California'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Texas'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Alabama'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Hawaii'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Florida'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Montana'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Nevada'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Mississippi'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'North Carolina'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'New York'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Kentucky'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Tennessee'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Colorado'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Washington'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Illinois'),
  ((SELECT id FROM categories WHERE NAME = 'States'), 'Alaska'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Wonder Woman'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Spiderman'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Ironman'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Captain America'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'The Flash'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Wolverine'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Green Lantern'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Groot'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'The Incredibles'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Batman'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Scarlet Witch'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'The Incredible Hulk'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Black Widow'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Powerpuff Girls'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Power Rangers'),
  ((SELECT id FROM categories WHERE NAME = 'Superheroes'), 'Superman'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Painting'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Sculpture'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Architecture'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Dance'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Literature'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Opera'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Stand-up'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Comic Books'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Illustration'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Music'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Theatre'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Cinema'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Video Games'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Graffiti'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Fashion'),
  ((SELECT id FROM categories WHERE NAME = 'The Arts'), 'Photography'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Lego'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Rocking Horse'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Super Soaker'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Cabbage Patch Dolls'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Rubik''s Cube'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Etch a Sketch'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Teddy Bear'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Play Doh'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Yo-yo'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Frisbee'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Hot Wheels'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Barbie'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Slinky'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'G.I. Joe'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Hula Hoop'),
  ((SELECT id FROM categories WHERE NAME = 'Toys'), 'Furby'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Plane'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Car'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Tank'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Helicopter'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Cruise Ship'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Hovercraft'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Motorbike'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Bus'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Segway'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Cable Car'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Jet Ski'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Hot Air Balloon'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Train'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Spaceship'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Magic Carpet'),
  ((SELECT id FROM categories WHERE NAME = 'Transport'), 'Broomstick'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Zelda'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Mario'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Pong'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Tetris'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Farmville'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Sims'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Zoo Tycoon'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Animal Crossing'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Minecraft'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Minesweeper'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Solitaire'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Wii Sports'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Pinball'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Pokemon'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Sonic the Hedgehog'),
  ((SELECT id FROM categories WHERE NAME = 'Video Games'), 'Donkey Kong'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Elephant'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Giraffe'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Koala'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Tiger'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Lion'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Leopard'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Meerkat'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Buffalo'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Ostrich'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Owl'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Eagle'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Parrot'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Scorpion'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Alligator'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Zebra'),
  ((SELECT id FROM categories WHERE NAME = 'Wild Animals'), 'Gorilla'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Pyramids'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Eiffel Tower'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Statue of Liberty'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Grand Canyon'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Stonehenge'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Golden Gate Bridge'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Colosseum'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Sydney Opera House'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Christ the Redeemer'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Machu Picchu'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Taj Mahal'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Hoover Dam'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Great Wall of China'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Great Barrier Reef'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Empire State Building'),
  ((SELECT id FROM categories WHERE NAME = 'World Wonders'), 'Leaning Tower of Pisa');
