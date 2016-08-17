extern crate libc;

extern {
    fn double_input(input: libc::c_int) -> libc::c_int;
}

struct UN_256bitValue {
    x: [u64; 4]
}

struct UN_512bitValue{
  x: [u64; 8]

}

fn fe25519_cpy(d: &mut [u64; 4],  s: &[u64; 4]){
    for x in 0..4 {
        d[x]=s[x];
    }

}

fn fe25519_print(d: & [u64; 4]){
//this should complain #ice
d[0]=33;
    println!("We have {} {} {} {}", d[0], d[1], d[2],d[3]);


}

fn square(x: int) -> int {
	x*x
}


fn main() {

//    let input = 4;
//    let mut output:i32 = 4;
//    let mut arr: [u64;4]=[0;4];
//    let mut un_array =UN_256bitValue{x:arr};
    
    
    output = unsafe { double_input(input) };
    println!("{} * 2 = {}", input, output);

  let mut test_255:[u64; 4]=[1,2,3,4];
  fe25519_print(&test_255);
}








