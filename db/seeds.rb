# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://robohash.org/Tom?set=set4', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales..', posts_counter: 0)
second_user = User.create(name: 'Lilly', photo: 'https://robohash.org/Lilly?set=set4', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales..', posts_counter: 0)
third_user = User.create(name: 'Jerry', photo: 'https://robohash.org/Jerry?set=set4', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales..', posts_counter: 0)
fourth_user = User.create(name: 'John', photo: 'https://robohash.org/John?set=set4', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales..', posts_counter: 0)
fifth_user = User.create(name: 'Jane', photo: 'https://robohash.org/Jane?set=set4', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales..', posts_counter: 0)

first_post = Post.create(author: first_user, title: 'Title 1', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
second_post = Post.create(author: first_user, title: 'Title 2', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
third_post = Post.create(author: first_user, title: 'Title 3', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
fourth_post = Post.create(author: first_user, title: 'Title 4', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
five_post = Post.create(author: first_user, title: 'Title 5', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)

first2_post = Post.create(author: second_user, title: 'Title 1', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
second2_post = Post.create(author: second_user, title: 'Title 2', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
third2_post = Post.create(author: second_user, title: 'Title 3', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
fourth2_post = Post.create(author: second_user, title: 'Title 4', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)
fifth2_post = Post.create(author: second_user, title:'Title 5', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In dictum non consectetur a erat nam. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Ut porttitor leo a diam sollicitudin. Nunc non blandit massa enim nec dui nunc mattis. At urna condimentum mattis pellentesque. Nibh venenatis cras sed felis eget velit. Cursus risus at ultrices mi tempus imperdiet. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Risus feugiat in ante metus dictum at tempor commodo. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. Quis hendrerit dolor magna eget est lorem ipsum.', comments_counter: 0, likes_counter: 0)

Comment.create(post: five_post, author: third_user, text: 'Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in.!' )
Comment.create(post: five_post, author: fourth_user, text: 'Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales' )
Comment.create(post: five_post, author: third_user, text: 'Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in.!' )
Comment.create(post: five_post, author: fifth_user, text: 'In dictum non consectetur a erat nam!' )

Comment.create(post: first2_post, author: third_user, text: 'Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales!' )
Comment.create(post: first2_post, author: first_user, text: 'Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in.!' )
Comment.create(post: first2_post, author: second_user, text: 'Ullamcorper a lacus vestibulum sed. Etiam sit amet nisl purus in.!' )
Comment.create(post: first2_post, author: first_user, text: 'In dictum non consectetur a erat nam!' )
Comment.create(post: first2_post, author: second_user, text: 'Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales!' )
Comment.create(post: first2_post, author: first_user, text: 'In dictum non consectetur a erat nam!' )