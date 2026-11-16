import copy

class QuadratoMagico:
    def __init__(self):
        self._num_soluzioni = 0
        self._soluzioni = []

    def _genera_rimanenti(self, n):
        rimanenti = []
        for i in range (1, n*n+1): # Se n = 3, 3*3+1, quindi da 1 a 9
            rimanenti.append(i)
        return rimanenti

    def _stampa_soluzione(self, soluzione, n):
        print("-------")
        for r in range(0, n):
            for c in range(0, n):
                print(soluzione[r*n+c], end = " ")
            print("")
        print("-------")

    def risolvi(self, n):
        # Visto che per risolvere il problema chiamo questo metodo, dovrei re-inizializzare anche qui
        self._num_soluzioni = 0
        self._soluzioni = []

        # Faccio partire la ricorsione con soluzione parziale [], lista di cifre rimanenti iniziale (tutte) e dim. del quadrato
        self._ricorsione([  ], self._genera_rimanenti(n), n)
        return self._soluzioni

    # Funzione che verifica se la soluzioni (completa o totale, in base a quando la
    # si chiama), sia valida, ovvero soddisfi i vincoli su righe, colonne e diagonali
    def _soluzione_valida(self, sol_parziale, n):

        M = (n*(n*n+1))/2 # Numero magico

        # Queste due istruzioni servono nel caso la funzione venga richiamata
        # su una soluzione non ancora completa, in cui mancano delle righe/delle colonne
        num_righe_complete = len(sol_parziale)//n # div. intera
        num_colonne_complete = max(len(sol_parziale) - (n - 1) * n, 0)

        # Se non è vero che tutti gli elementi delle righe (complete) sommano a M return False
        for r in range(num_righe_complete):
            somma = 0
            for c in range(n):
                somma += sol_parziale[r * n + c]
            if somma != M:
                return False

        # Colonne
        for c in range(num_colonne_complete):
            somma = 0
            for r in range(n):
                somma += sol_parziale[r * n + c]
            if somma != M:
                return False

        # Diagonale principale
        if num_righe_complete == n:
            somma = 0
            for r in range(n):
                somma += sol_parziale[r * n + r]
            if somma != M:
                return False

        # Diagonale secondaria
        if num_colonne_complete >= 1:
            somma = 0
            for r in range(n):
                c = n - 1 - r
                somma += sol_parziale[r * n + c]
            if somma != M:
                return False

        # Se sono arrivato qui sta venendo bene
        return True


    def _ricorsione(self, sol_parziale, rimanenti, n):

        if len(sol_parziale) == n*n:
            self._soluzioni.append(copy.deepcopy(sol_parziale)) # Qui sempre deepcopy è ok
            self._num_soluzioni += 1

            # Prima di aggiungere la soluzione, potrei verificare se valida se non lo facessi già in itinere
            """
            if(self._soluzione_valida(sol_parziale, n))
                self._soluzioni.append(copy.deepcopy(sol_parziale))  # Qui sempre deepcopy è ok
                self._num_soluzioni += 1
            """

        else:

            # Funzione ricorsiva chiamata in maniera non ottimizzata
            # (se uso questa devo ricordarmi alla fine di verificare, sulla soluzione
            # completa, se questa sia valida oppure no)

            """
            for i in rimanenti:
                sol_parziale.append(i)
                nuovi_rimanenti = copy.deepcopy(rimanenti) #ATTENZIONE, deepcopy
                nuovi_rimanenti.remove(i)
                self._ricorsione(sol_parziale, nuovi_rimanenti, n)
                sol_parziale.pop()
            """

            # Per ottimizzare, posso chiedermi se la soluzione che sto andando
            # a generare possa alla fine essere valida, oppure possa già abortire;
            # se anziché chiamarla qui la chiamo solo nell'if dopo aver generato
            # soluzioni complete non è una ottimizzazione, semplicemente
            # scarto le soluzioni non valide dopo averle comunque calcolate

            for i in rimanenti:
                sol_parziale.append(i) # Sulla sol. parziale non utilizzare deepcopy nella ricorsione
                if self._soluzione_valida(sol_parziale, n): #_soluzione_sta_venendo_bene()
                    nuovi_rimanenti = copy.deepcopy(rimanenti)  # Qui deepcopy, informazione nuova per il liv. successivo
                    nuovi_rimanenti.remove(i)
                    self._ricorsione(sol_parziale, nuovi_rimanenti, n)
                sol_parziale.pop()


if __name__ == "__main__":
    qm = QuadratoMagico()
    n = 3
    soluzioni = qm.risolvi(n)
    print(qm._num_soluzioni)
    for s in soluzioni:
        qm._stampa_soluzione(s, n)


