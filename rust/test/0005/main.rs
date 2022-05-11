
fn main(){
    // let x = 2.0; // f64
    // let y: f32 = 3.0; // f32
    // println!("x =  {}, y =  {}", x, y)

    // add 
    let sum = 5 + 10;
    println!("add result : sum = {}", sum);

    // sub
    let difference = 95.5 - 4.3;
    println!("sub result : difference = {}", difference);

    //  multi
    let product = 4 * 30;
    println!("multi result : product = {}", product);

    // division
    let quotient = 56.7 /32.2;
    let floored = 2/3; // 0
    println!("division result : quotient = {} , floored = {}", quotient, floored);

    // surplus
    let remainder = 43 % 5;
    println!("surplus result : remainder = {}", remainder);

    let t= true ;
    println!("t {}", t);

    let f: bool = false;
    println!("f: bool = {}", f);

    let c = 'z';
    let z = 'ℤ';
    let heart_eyed_cat = '😻';
    println!("c = {}, z = {}, heart_eyed_cat = {}", c, z, heart_eyed_cat);

    // 元组是一个将多个其他类型的值组合进一个复合类型的主要方式。元组长度固定：一旦声明，其长度不会增大或缩小。
    let tup = (500, 6.4, 1);
    let (x, y, z) = tup;
    println!("The value of y is: x = {}, y = {}, z = {}", x, y, z)


}