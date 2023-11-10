<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced Manga Reader</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        header {
            background-color: #343a40;
            color: #fff;
            padding: 1em;
            text-align: center;
        }

        main {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .manga-title {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .chapter-list {
            list-style: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .chapter-list-item {
            margin-bottom: 10px;
            width: 48%;
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .chapter-list-item:hover {
            background-color: #0056b3;
        }

        .pdf-viewer {
            width: 100%;
            height: 100%;
            overflow: auto; /* Enable scrolling for the iframe on smaller screens */
        }

        .fullscreen-btn {
            margin-top: 10px;
            margin-bottom: 20px;
            background-color: #28a745;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        footer {
            background-color: #343a40;
            color: #fff;
            padding: 1em;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>

    <!-- Add the script block here -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://mozilla.github.io/pdf.js/build/pdf.js"></script>
    <script>
        function loadChapter(chapter) {
            // Clear previous PDF viewer content
            document.getElementById('pdfViewer').innerHTML = '';

            // Create a new iframe to embed the PDF
            var iframe = document.createElement('iframe');
            iframe.src = `${chapter}.pdf`;
            iframe.style.width = '100%';
            iframe.style.height = '100%';
            iframe.style.border = 'none';

            // Append the iframe to the PDF viewer div
            document.getElementById('pdfViewer').appendChild(iframe);
        }

        function toggleFullscreen() {
            var pdfViewer = document.getElementById('pdfViewer');
            if (!document.fullscreenElement) {
                pdfViewer.requestFullscreen();
            } else {
                document.exitFullscreen();
            }
        }
    </script>
</head>
<body>

    <header>
        <h1>Advanced Manga Reader</h1>
    </header>

    <main>
        <h2 class="manga-title">Itachi Shinden: Book of Daylight</h2>

        <ul class="chapter-list">
            <!-- Add an ID to the chapter list item -->
            <li id="chapter1" class="chapter-list-item" onclick="loadChapter('itachi_shinden_book_of_daylight')">Chapter 1</li>
            <!-- Add another chapter button -->
            <li id="chapter2" class="chapter-list-item" onclick="loadChapter('itachi-story-midnight')">Story Midnight</li>
            <!-- Add more chapters as needed -->
        </ul>

        <div id="pdfViewer" class="pdf-viewer"></div>
    </main>

    <!-- Move the button outside the main section -->
    <button class="fullscreen-btn" onclick="toggleFullscreen()">Toggle Fullscreen</button>

    <footer>
        <p>&copy; 2023 Advanced Manga Reader</p>
    </footer>

</body>
</html>
