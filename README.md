# Movie-Rating-Sentiment-Analysis
<center><img src= "https://raw.githubusercontent.com/ashwinshetgaonkar/kaggle-kernel-images/main/sentiment-analysis.jpg" alt ="Movie Rating" style='width:600px;'></center><br>

## Context:
<li>Sentiment analysis, also referred to as opinion mining, is an approach to natural language processing (NLP) that identifies the emotional tone behind a body of text.</li><br>
    <li>This is a popular way for organizations to determine and categorize opinions about a product, service, or idea.</li><br>
    <li>In this problem we will be categorizing the movie reviews as either positive (1) or negative (0). </li></h3>


## Data:
* The dataset contains movie reviews consisting of text along with its labels taken from IMDB.

|Column Name| Description|
|----------|-------------|
|text|review on a movie|
|label|label assigned to the movie review,"0"[negative] or "1"[positive]|



## My work:
* My objective for this project was to train and compare the performance of various models on the basis of f1_score and time taken per prediction.
* I have demostrated a stepwise approach and have attempted the problem using various algorithms from Naive Bayes to state of the art transformers.
* Analysed and compared the model on the basis of f1_score and time taken per prediction.
* Here I have demostrated how increasing the complexity of the model will lead to better performance but will hamper the time taken per prediction.
* Build an web app using streamlit which uses model trained using a feed forward neutral network.
* Tech Stack used : Python,numpy,pandas,sklearn,tensorflow,html,css,streamlit


## Web app working:
* The user has to enter the review whose sentiment is to be determined and the application will predict whether the entered review has positive or negative sentiment after the user clicks the predict button.

* To use the web app bulit using streamlit check out [app.py.](https://share.streamlit.io/ashwinshetgaonkar/movie-rating-sentiment-analysis/main/app.py)


