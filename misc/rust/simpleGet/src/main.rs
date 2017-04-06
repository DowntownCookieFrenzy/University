struct Get{
	url: std::Str,
	err: i32,
}

fn main() {
    println!("Hello, world!");
	let get = Get{url:"www.google.com", err: 5};
}
