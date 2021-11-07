analytics_settings(False)

k8s_yaml(kustomize('k'))

docker_build('hanbaiki', 'front',
  live_update=[
    sync('front', '/app'),
  ]
)

docker_build('hanbaiki-web', 'front/dist',
  live_update=[
    sync('front/dist', '/usr/share/nginx/html'),
  ]
)

docker_build('hanbaiki-api', 'api',
  live_update=[
    sync('api', '/app'),
  ]
)

load('ext://uibutton', 'cmd_button', 'location')

cmd_button(name='build for web',
          icon_name='build',
          resource='hanbaiki',
          argv=['bin/chdir-exec', 'front', 'vite', 'build'])
