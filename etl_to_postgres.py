from sqlalchemy import create_engine
import pandas as pd

df = pd.read_csv(r'cleaned_flight_delays.csv')

# Connection data
username = 'postgres'       
password = '3131'   
host = 'localhost'
port = '5432'
database = 'flights_db'

# Create connection engine
engine = create_engine(f'postgresql+psycopg2://{username}:{password}@{host}:{port}/{database}')

# Check connection
try:
    with engine.connect() as connection:
        print("✅ Successful connection to PostgreSQL.")
except Exception as e:
    print(f"❌ Error connecting: {e}")

# Load the clean DataFrame 'df' into the database
df.to_sql('flight_delays', con=engine, if_exists='replace', index=False) 

print("✅ Data loaded to PostgreSQL.")



