# evision-prediction-python

## Setup
1. Set up: `python3 -m venv .venv`
2. Start venv: `source .venv/bin/activate`
3. Install requirements
  ```
  pip3 install -r evision/requirements.txt
  pip3 install -r evision/requirements-dev.txt
  ```
4. Create a copy of `.env.example`. Rename it to `.env`. Update the variables accordingly

## Start
**_NOTE:_**  If running for the first time, call `influenza_data_scraper::scrape_cdc_trends_data()` to seed data

To run server:
`streamlit run evision/app.py`
