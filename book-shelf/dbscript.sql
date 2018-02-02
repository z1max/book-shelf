USE test;

DROP TABLE IF EXISTS books;

CREATE TABLE books(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(100),
	description VARCHAR(255),
	author VARCHAR(100),
	isbn VARCHAR(20),
	print_year INT,
	read_already BOOLEAN,
	PRIMARY KEY(id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO books (id, title, description, author, isbn, print_year, read_already) VALUES
	('1', 'Little Fires Everywhere', 'Named a Best Book of the Year by: People, The Washington Post, Bustle, Esquire, Southern Living, The Daily Beast, GQ, Entertainment Weekly, NPR, Amazon, Barnes & Noble, iBooks, Audible, Goodreads, Library Reads, Book of the Month, Paste, and many more!', 'Celeste Ng', ' 978-0735224292', '2017', '0'),
	
	('2', 'Before We Were Yours: A Novel', 'Two families, generations apart, are forever changed by a heartbreaking injustice in this poignant novel, inspired by a true story, for readers of Orphan Train and The Nightingale.', 'Lisa Wingate', '978-0425284681', '2017', '0'),

	('3', 'Fantastic Beasts and Where to Find Them: The Original Screenplay', 'When Magizoologist Newt Scamander arrives in New York, he intends his stay to be just a brief stopover. However, when his magical case is misplaced and some of Newt\'s fantastic beasts escape, it spells trouble for everyone…', 'J.K. Rowling', '978-0325401126', '2016', '0'),

	('4', 'Without Merit: A Novel', 'Not every mistake deserves a consequence. Sometimes the only thing it deserves is forgiveness.', 'Colleen Hoover', '978-1501179761', '2017', '0'),

	('5', '1984', 'Written in 1948, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, his dystopian vision of a government that will do anything to control the narrative is timelier than ever...', 'George Orwell', '978-0451524935', '1961', '0'),

	('6', 'A Brief History of Time', 'A Brief History of Time was a landmark volume in science writing and in world-wide acclaim and popularity. The original edition was on the cutting edge of what was then known about the origins and nature of the universe.', 'Stephen Hawking', '978-0553380163', '1998', '0'),

	('7', 'A Heartbreaking Work of Staggering Genius', 'A Heartbreaking Work of Staggering Genius is an instant classic that will be read for decades to come.', 'Dave Eggers', '978-0375725784', '2001', '0'),

	('8', 'A Long Way Gone: Memoirs of a Boy Soldier', 'This is how wars are fought now: by children, hopped-up on drugs and wielding AK-47s. Children have become soldiers of choice. Ishmael Beah used to be one of them.', 'Ishmael Beah', ' 978-0374531263', '2008', '0'),

	('9', 'The Bad Beginning: Or, Orphans! (A Series of Unfortunate Events, Book 1)', 'Are you made fainthearted by death? Does fire unnerve you? Is a villain something that might crop up in future nightmares of yours? Are you thrilled by nefarious plots? Is cold porridge upsetting to you? Vicious threats? Hooks? Uncomfortable clothing?', 'Lemony Snicket', '978-0061146305', '2007', '0'),

	('10', 'Are You There God? It\'s Me, Margaret.', 'A twelve-year-old talks to God about her ardent desire to be grown up.', 'Judy Blume', '978-0385739863', '2010', '0'),

	('11', 'Bel Canto (P.S.)', 'Blissfully Romantic….A strange, terrific, spellcasting story.', 'Ann Patchett', '978-0061565311', '2008', '0'),

	('12', 'Charlie and the Chocolate Factory', 'What happens when the five luckiest children in the entire world walk through the doors of Willy Wonka\'s famous, mysterious chocolate factory? What happens when, one by one, the children disobey Mr. Wonka\'s orders?', 'Roald Dahl', '978-0375815263', '2001', '0'),

	('13', 'Cutting for Stone', 'Moving from Addis Ababa to New York City and back again, Cutting for Stone is an unforgettable story of love and betrayal, medicine and ordinary miracles--and two brothers whose fates are forever intertwined.', 'Abraham Verghese', '978-0375714368', '2010', '0'),

	('14', 'Fahrenheit 451', 'Ray Bradbury’s internationally acclaimed novel Fahrenheit 451 is a masterwork of twentieth-century literature set in a bleak, dystopian future.', 'Ray Bradbury', '978-1451673319', '2012', '1'),

	('15', 'Gone Girl', 'On a warm summer morning in North Carthage, Missouri, it is Nick and Amy Dunne’s fifth wedding anniversary. Presents are being wrapped and reservations are being made when Nick’s clever and beautiful wife disappears.', 'Gillian Flynn', '978-0307588371', '2014', '1'),

	('16', 'In Cold Blood', 'On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues.', 'Truman Capote', '978-0679745587', '1994', '0'),

	('17', 'Invisible Man', 'This Book is a milestone in American literature, a book that has continued to engage readers since its appearance in 1952. A first novel by an unknown writer, it remained on the bestseller list for sixteen weeks, won the National Book Award for fiction.', 'Ralph Ellison', ' 978-0679732761', '1995', '0'),

	('18', 'The Book Thief', 'It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will become busier still. Liesel Meminger is a foster girl living outside of Munich...', 'Markus Zusak', '978-0375842207', '2007', '0'),

	('19', 'The Catcher in the Rye', 'Through circumstances that tend to preclude adult, secondhand description, he leaves his prep school in Pennsylvania and goes underground in New York City for three days. The boy himself is at once too simple and too complex for us.', 'J. D. Salinger', '978-0316769174', '2001', '1'),

	('20', 'The Lord of the Rings', 'In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him...', 'J.R.R. Tolkien', '978-0544003415', '2012', '0'),

	('21', 'The Shining', 'Jack Torrance’s new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he’ll have plenty of time to spend reconnecting with his family and working on his writing.', 'Stephen King', '978-0307743657', '2012', '0'),

	('22', 'To Kill a Mockingbird', 'One of the best-loved stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than thirty million copies worldwide, served as the basis for an enormously popular motion picture.', 'Harper Lee', '978-3125788657', '1982', '1'),

	('23', 'The Great Gatsby', 'The Great Gatsby stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan', 'F. Scott Fitzgerald', '978-0743273565', '2004', '0'),

	('24', 'Crime and Punishment', 'Fyodor Dostoevsky\'s classic tale of Rodion Raskolnikov, the murder he commits as an exploration of the human condition, and the crushing criminal and psychological consequences.', 'Fyodor Dostoevsky', '9781975911553', '2017', '1'),

	('25', 'Memoirs of a Geisha: A Novel', 'Nitta Sayuri tells the story of her life as a geisha. It begins in a poor fishing village in 1929, when, as a nine-year-old girl with unusual blue-gray eyes, she is taken from her home and sold into slavery to a renowned geisha house.', 'Arthur Golden', '978-0679781585', '1999', '0'),

	('26', 'The Da Vinci Code', 'As millions of readers around the globe have already discovered, The Da Vinci Code is a reading experience unlike any other. Simultaneously lightning-paced, intelligent, and intricately layered with remarkable research and detail.', 'Dan Brown', ' 978-0307474278', '2009', '1'),

	('27', 'One Hundred Years of Solitude', 'The brilliant, bestselling, landmark novel that tells the story of the Buendia family, and chronicles the irreconcilable conflict between the desire for solitude and the need for love—in rich...', 'Gabriel Garcia Marquez', ' 978-0679444657', '1995', '1')	

;

DROP TABLE IF EXISTS hibernate_sequence;

CREATE TABLE hibernate_sequence(
	next_val BIGINT(20)
);

INSERT INTO hibernate_sequence (next_val) VALUES ('28');

