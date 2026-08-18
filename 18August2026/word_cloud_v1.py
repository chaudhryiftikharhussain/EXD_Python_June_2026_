# Read the articles from the txt

# Generate word cloud for each article

from wordcloud import WordCloud, wordcloud

wordcloud = WordCloud(
    background_color='white',
    max_words=2000
)