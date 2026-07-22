export DATAREG_CONFIG=$PWD/config_reg_access
export DATAREG_BACKEND=sqlite
conda activate ./env
pip install .
rm -rf ./temp_data
mkdir temp_data
rm registry.db
echo  "create table jz_x(jz_a int);" | sqlite3 registry.db
python scripts/create_registry_schema.py  --config ${DATAREG_CONFIG}
