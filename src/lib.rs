#[no_mangle]
pub extern "C" fn panic() {
    panic!("DLL panics!");
}
