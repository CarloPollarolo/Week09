import pathlib
import mysql.connector
from mysql.connector import errorcode

class DBConnect:
    _cnxpool = None

    @classmethod
    def get_connection(cls):
        if cls._cnxpool is None:
            cls._cnxpool = mysql.connector.pooling.MySQLConnectionPool(
                pool_name='cineclub_pool', pool_size=3,
                option_files=str(pathlib.Path(__file__).resolve().parent / 'db.cnf'),
            )
        return cls._cnxpool.get_connection()
