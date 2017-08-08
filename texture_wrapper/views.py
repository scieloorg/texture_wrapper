import os

from pyramid.view import view_config

APP_PATH = os.path.dirname(os.path.realpath(__file__))

@view_config(route_name='home', renderer='templates/home.mako')
def home(request):
    return {'project': 'texture_wrapper'}


@view_config(route_name='packages', renderer='templates/packages.mako')
def packages(request):

    data = {'project': 'texture_wrapper'}

    xml_files = []
    for root, subdirs, files in os.walk('%s/files' % APP_PATH):
        for file in files:
            if file[-3:] != 'xml':
                continue
            xml_files.append('/'.join(['/files%s' % root.split('files')[1], file]))

    data['xmlfiles'] = xml_files

    return data


@view_config(route_name='editor', renderer='templates/editor.mako')
def editor(request):
    return {'project': 'texture_wrapper'}


@view_config(route_name='editor_raw', renderer='templates/editor_raw.mako')
def editor_raw(request):
    return {'project': 'texture_wrapper'}
