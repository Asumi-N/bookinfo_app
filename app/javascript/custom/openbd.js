document.getElementById('getBookInfo').addEventListener('click', () => {
    var userInput = document.getElementById('isbn').value;
    var query = userInput.split(' ').join('+');
    const url = "https://api.openbd.jp/v1/get?isbn=" + query + "&pretty";

    fetch(url).then(
        response => {
            return response.json();
         }).then(data => {
    for (let i = 0; i < data.length; i++) {
         const bookImg = document.getElementById('thumbnail');
         const bookImgSrc = data[0].summary.cover;
         console.log(bookImgSrc);
         bookImg.setAttribute('src', bookImgSrc);
         document.getElementById('booktitle').innerHTML = data[0].summary.title;
         document.getElementById('author').innerHTML = data[0].summary.author;
         document.getElementById('publisher').innerHTML = data[0].summary.publisher;
    }
         document.getElementById('bookInfo').classList.add('show');
    
    }).catch(err => {
        console.log('Error: ' + err)
    })
});

