from pyramid.view import view_config
import json


@view_config(route_name='ajx_readxml', request_method='GET', renderer='jsonp')
def read_xml(request):

    filename = request.GET.get('file_id', None)

    return {'project': 'texture_wrapper'}
