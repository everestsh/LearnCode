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
cargo run  //构建项目
cargo build//一步构建并运行项目
cargo check//在不生成二进制文件的情况下构建项目来检查错误。
cargo build --release //发布（release）构建

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
* Cargo 构建系统和包管理器
