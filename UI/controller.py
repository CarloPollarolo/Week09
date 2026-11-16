from model.model import Model

class Controller:
    def __init__(self, view, model: Model):
        self._view = view
        self._model = model

    def handle_statistiche(self, e):
        pass

    def handle_programma(self, e):
        pass
