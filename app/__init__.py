from flask import Flask
from app.index import index_blueprint
from app.favicon import favicon_blueprint



def create_app() -> Flask:
    app = Flask("SnailPass-Landing")

    app.debug = False

    app.register_blueprint(favicon_blueprint)
    app.register_blueprint(index_blueprint)
    return app
