analytics_settings(False)

k8s_yaml(kustomize('k'))

docker_build('excalibrator', 'web',
  live_update=[
    sync('web', '/app'),
  ]
)

docker_build('excalibrator-web', 'web/dist',
  live_update=[
    sync('web/dist', '/usr/share/nginx/html'),
  ]
)

docker_build('excalibrator-api', 'api',
  live_update=[
    sync('api', '/app'),
  ]
)

load('ext://uibutton', 'cmd_button', 'location')

cmd_button(name='build for web',
          icon_name='build',
          resource='excalibrator',
          argv=['bin/chdir-exec', 'web', 'vite', 'build'])
