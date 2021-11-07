FROM k3d-hub.defn.ooo:5000/letfn/whoabot:app

COPY --chown=app:app requirements.txt /app/requirements.txt
RUN ./run python -m pip install --no-cache-dir --upgrade -r requirements.txt

COPY --chown=app:app app /app/app

ENTRYPOINT [ "./run" ]

CMD [ "hypercorn", "--reload", "--worker-class", "trio", "--bind", "0.0.0.0:8000", "app.main:app"  ]
