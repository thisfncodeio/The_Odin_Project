const book = new Book('The Hobbit', 'J.R.R. Tolkien', 765, false);
const book2 = new Book('To Kill A Mockingbird', 'Harper Lee', 296, true);
let myLibrary = [book, book2];
// let myLibrary = [];

let printLib = () => console.log(myLibrary);

function Book(title, author, numOfPages, isRead) {
    this.title = title;
    this.author = author;
    this.numOfPages = numOfPages;
    this.isRead = isRead;
}

Book.prototype.info = function () {
    return `${this.title} by ${this.author}, ${this.numOfPages} pages, ${this.isRead ? "already read" : "not read yet"}`;
}

function addBookToLibrary() {
    let bookTitle = document.getElementById("book-title");
    let bookAuthor = document.getElementById("book-author");
    let numOfPages = document.getElementById("book-pages");
    let isRead = document.getElementById("book-isRead");

    document.querySelectorAll("input").forEach((input) => {
        (!input.value) ?
            input.classList.add('error') :
            input.classList.remove('error');
    });

    if (!bookTitle.value || !bookAuthor.value || !numOfPages.value) return;

    const newBook = new Book(bookTitle.value, bookAuthor.value, numOfPages.value, isRead.checked);
    myLibrary.push(newBook);

    bookTitle.value = "";
    bookAuthor.value = "";
    numOfPages.value = "";
    isRead.checked = true;

    renderNewBook(myLibrary);
}

document.getElementById("book-submit").addEventListener("click", addBookToLibrary);

const bookListTable = document.getElementById("booklist_table");
const TABLE = document.createElement("TABLE");
const TBODY = document.createElement("TBODY");

function render(library) {
    const tableHeadings = [
        "Title",
        "Author",
        "Number of Pages",
        "Read?",
        ""
    ];
    const THEAD = document.createElement("THEAD");
    const TR = document.createElement("TR");

    for (let i = 0; i < tableHeadings.length; i++) {
        const TH = document.createElement("TH");
        TH.innerHTML = tableHeadings[i];
        TR.appendChild(TH);
    }

    THEAD.appendChild(TR);
    TABLE.appendChild(THEAD);
    for (let i = 0; i < library.length; i++) {
        const TR = document.createElement("TR");
        const removeButton = document.createElement("BUTTON");
        removeButton.setAttribute("id", "remove-button");
        removeButton.innerHTML = "X";
        for (let prop in library[i]) {
            if (library[i].hasOwnProperty(prop)) {
                const TD = document.createElement("TD");
                if (prop === "isRead") {
                    TD.innerHTML = library[i][prop] ? "Already Read" : "Not Yet Read";
                } else {
                    TD.innerHTML = library[i][prop];
                }
                TR.appendChild(TD);
            }
        }
        const TD = document.createElement("TD");
        TD.appendChild(removeButton);
        TR.appendChild(TD);
        TBODY.appendChild(TR);
    }

    TABLE.appendChild(TBODY);
    bookListTable.appendChild(TABLE);

    handleRemoveButton();
}

function renderNewBook(booksArray) {
    const TR = document.createElement("TR");
    const removeButton = document.createElement("BUTTON");
    removeButton.setAttribute("id", "remove-button");
    removeButton.innerHTML = "X";
    for (let prop in booksArray[booksArray.length - 1]) {
        if (booksArray[booksArray.length - 1].hasOwnProperty(prop)) {
            const TD = document.createElement("TD");
            if (prop === "isRead") {
                TD.innerHTML = booksArray[booksArray.length - 1][prop] ? "Already Read" : "Not Yet Read";
            } else {
                TD.innerHTML = booksArray[booksArray.length - 1][prop];
            }
            TR.appendChild(TD);
        }
    }
    const TD = document.createElement("TD");
    TD.appendChild(removeButton);
    TR.appendChild(TD);
    TBODY.appendChild(TR);

    handleRemoveButton();
}

function handleRemoveButton() {
    document.querySelectorAll("#remove-button").forEach(button => {
        button.addEventListener("click", (e) => {
            // Produces a "Uncaught NotFoundError: Failed to execute 'removeChild' on 'Node': The node to be removed is not a child of this node." error without a try/catch
            try {
                TBODY.removeChild(e.target.parentNode.parentNode)
            } catch (e) { }

        });
    });
}

document.getElementById("booklist-form_button").addEventListener("click", (e) => {
    (bookListTable.style.top === "0px" || bookListTable.style.top === "") ?
        bookListTable.style.top = "100%" :
        bookListTable.style.top = "0px";

    if (e.target.innerHTML === "Add Book") {
        e.target.innerHTML = "Close";
        document.querySelectorAll("input").forEach((input) => {
            input.classList.remove('error');
        });
    } else {
        e.target.innerHTML = "Add Book";
    }
});

render(myLibrary);