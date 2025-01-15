const std = @import("std");
const arrays = @import("arrays.zig");
const names_and_numbers = @import("names_numbers.zig");
const num_ops = @import("num_ops.zig");
const bool_ops = @import("bool_ops.zig");
const tempp = @import("temp.zig");

// const Cat: type = struct {
//     name: []const u8,
//     age: u16,
// };

// const Color = enum {
//     red,
//     blue,
//     yellow,
// };
pub fn main() !void {
    // try names_and_numbers.sample();
    // try num_ops.sample();
    // try arrays.sample();
    try bool_ops.sample();
    // const result = squareRoot(25);
    // std.debug.print("the result is: {d}\n", .{result});

    // const garfield: Cat = .{ .name = "Garfield", .age = 16 };
    // std.debug.print("the cat info is: {{ name: {s}, age: {d} }}\n", .{ garfield.name, garfield.age });

    // const answer = sampleSwitch(1);

    // std.debug.print("the answer is: {}\n", .{answer});

    // const fav_color: Color = .red;
    // std.debug.print("my favorite color is: {s} and color number is: {d}\n", .{ @tagName(fav_color), @intFromEnum(fav_color) });
}

// pub fn squareRoot(radicand: usize) usize {
//     var result: usize = 0;
//     const n: f64 = @floatFromInt(radicand);
//     var guess: f64 = n / 2.0;
//     var prev_guess: f64 = 0;
//     const tolerance: f64 = 0.000001;

//     while (std.math.approxEqAbs(f64, guess, prev_guess, tolerance) == false) {
//         prev_guess = guess;
//         guess = (guess + n / guess) / 2.0;
//     }
//     result = @intFromFloat(guess);

//     return result;
// }

// fn sampleSwitch(x: usize) bool {
//     const result: bool = switch (x) {
//         1 => true,
//         else => false,
//     };

//     return result;
// }
