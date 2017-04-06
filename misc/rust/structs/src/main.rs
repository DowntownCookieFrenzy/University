struct Point{
	x: i32,
	y: i32,
}

impl Point{
	fn new(x: i32, y: i32) -> Point{
		Point{x:x, y:y}
	}
}

fn main() {
    println!("Hello, world!");
	let p = Point::new(10,3);
	println!("Point x:{} y:{}", p.x, p.y);
}
