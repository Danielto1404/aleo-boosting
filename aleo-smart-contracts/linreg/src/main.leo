// The 'linreg' program.
program linreg.aleo {
    transition main(public a: u32, b: u32) -> u32 {
        let c: u32 = a + b;
        let d: u32 = c + a;
        return d;
    }
}
