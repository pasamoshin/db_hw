import psycopg2


def drop_table(cur, *table):
    for t in table:
        cur.execute(f"DROP TABLE {t}")


def create_db(cur):
    cur.execute("""
                CREATE TABLE IF NOT EXISTS clients(
                    id SERIAL PRIMARY KEY,
                    first_name VARCHAR(40) NOT NULL,
                    last_name VARCHAR(40) NOT NULL,
                    email VARCHAR(40) UNIQUE
                );
                CREATE TABLE IF NOT EXISTS clients_phones(
                    id SERIAL PRIMARY KEY,
                    id_client INTEGER NOT NULL REFERENCES clients(id),
                    phones VARCHAR(14)
                );
                """)


def add_client(cur, first_name, last_name, email, phones=None):
    cur.execute("""
                INSERT INTO clients(first_name, last_name, email)
                VALUES (%s, %s, %s)
                RETURNING id;
                """, (first_name, last_name, email))
    id_client = cur.fetchone()
    if phones:
        cur.execute("""
                    INSERT INTO clients_phones(id_client, phones)
                    VALUES (%s, %s)
                    """, (id_client, phones))


def add_phone(cur, id_client, phones):
    cur.execute("""
                INSERT INTO clients_phones(id_client, phones)
                VALUES (%s, %s)
                """, (id_client, phones))


def change_client(cur, id_client, first_name=None, last_name=None, email=None, phones=None):
    if phones != None:
        cur.execute("""
            UPDATE clients_phones
            SET phones = %s
            WHERE client_id = %s
            """, (phones, id_client))

    if email != None:
        cur.execute("""
            UPDATE clients
            SET email = %s
            WHERE id = %s
            """, (email, id_client))

        if last_name != None:
            cur.execute("""
                UPDATE clients
                SET last_name = %s
                WHERE id = %s
                """, (last_name, id_client))

        if first_name != None:
            cur.execute("""
                UPDATE clients
                SET first_name = %s
                WHERE id = %s
                """, (first_name, id_client))


def delete_phone(cur, phone=None, client_id=None):
    cur.execute("""
        DELETE FROM clients_phones WHERE id=%s or phones=%s;
        """, (client_id, phone))


def delete_client(cur, client_id):
    cur.execute("""
        DELETE FROM clients_phones WHERE id=%s;
        """, (client_id))
    delete_phone(cur, None, client_id)


def search_client(cur, **data):
    query = "SELECT first_name, last_name, email, cp.phones FROM clients c \
        JOIN clients_phones cp ON c.id  = cp.id_client \
        WHERE " + ' and '.join(f"{k} like '{v}'" for k, v in data.items())
    cur.execute(query)
    return cur.fetchall()


with psycopg2.connect(database="clients_db", user="postgres", password="1234") as conn:
    with conn.cursor() as cur:
        drop_table(cur, 'clients_phones', 'clients')
        create_db(cur)
        add_client(cur, 'Ivan', 'Ivanov', 'iban@ng.ru', '+79999999999')
        add_phone(cur, '1', '+78889999999')
        change_client(cur, 1)
        delete_phone(cur, '+78889999999')
        # find_client(cur, first_name='Ivan')
        client = search_client(cur, first_name='Ivan', phones='+79999999999')
        print(client)
        conn.commit()


conn.close()
