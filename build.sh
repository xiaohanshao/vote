cargo build --target wasm32-unknown-unknown --release

cd ./target

cp ./wasm32-unknown-unknown/release/*.wasm ./

wasm-strip ./*.wasm

wasm-opt -Oz ./*.wasm -o example.wasm

cd ../