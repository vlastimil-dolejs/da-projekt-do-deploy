from aiohttp import web


async def handle(request):
    return web.Response(text="Hi, I'm Python service")

app = web.Application()
app.add_routes([web.get('/', handle)])

if __name__ == '__main__':
    web.run_app(app, port=8082, access_log=None)
