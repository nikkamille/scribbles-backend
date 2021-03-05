test_notebook = Notebook.create(title: "Test")

note1 = Note.create(title: "Test Note", content: "This is a test note.", date: Date.today, notebook_id: 5)

note2 = Note.create(title: "Another Test Note", content: "This is another test note. I hope everything works.", date: Date.today, notebook_id: 5)

another_notebook = Notebook.create(title: "Another Notebook")

test_note = Note.create(title: "For Project", content: "For project notes.", date: Date.today, notebook_id: 6)

test_note2 = Note.create(title: "Rails/Redux Project", content: "All my project notes are here.", date: Date.today, notebook_id: 6)