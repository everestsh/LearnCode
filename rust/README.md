# RUST

##### --- 1 install

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
*   update

```
rustup update
```
*   test
```
source ~/.cargo/env 
cargo --version
```

* project

```
cargo new hello-rust

cd hello-rust
cargo run
cargo build

```

* the first rush

```
touch main.rs

edit main.rs
---
fn main() {
    println!("Hello, world!");
}
---
$ rustc main.rs
$ ./main
Hello, world!
```