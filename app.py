import tensorflow as tf

import streamlit as st

print(tf.__version__)

st.markdown('### Sentiment Analyzer')
st.markdown('---')
text = st.text_area('Enter Movie Review:', "This was a nice movie to watch!")

model = tf.keras.models.load_model('model_ffnn')
st.markdown('   ')
if st.button('Predict'):
    prediction = model.predict([text])

    prediction = tf.round(prediction).numpy()
    if prediction == 0:
        output = "Negative 😞"
    else:
        output = "Positive ☺️"
    st.markdown('   ')
    st.write('Prediction:', output)

else:
    pass
