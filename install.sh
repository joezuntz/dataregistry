#!/usr/bin/env bash
conda create -c conda-forge -y  -p ./env python=3.12 sqlalchemy psycopg2 pyyaml pandas gitpython jupyter
