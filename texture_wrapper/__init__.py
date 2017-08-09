from pyramid.renderers import JSONP
from pyramid.config import Configurator


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = Configurator(settings=settings)
    config.add_renderer('jsonp', JSONP(param_name='callback', indent=4))

    config.include('pyramid_mako')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_static_view('files', 'files', cache_max_age=3600)
    config.add_route('home', '/')
    config.add_route('packages', '/packages')
    config.add_route('editor', '/editor')
    config.scan()
    return config.make_wsgi_app()
