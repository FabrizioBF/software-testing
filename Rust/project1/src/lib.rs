#[cfg(test)]
mod tests {
    #[test]
    fn first() {
        assert_eq!(1024 + 1024, 2048);
    }
    #[test]
    fn second() {
	assert_eq!(1024 * 1024, 1048576);
    }
    #[test]
    fn third() {
	let base: i32 = 2;
	assert_eq!(base.pow(10), 1024);
    }
    #[test]
    fn fourth() {
	assert_eq!(5 - 1, 2);
    }
}

