const std = @import("std");
const arrays = @import("arrays.zig");
const names_and_numbers = @import("names_numbers.zig");
const num_ops = @import("num_ops.zig");
const bool_ops = @import("bool_ops.zig");
const block_switch = @import("block_switch.zig");
const enum_union = @import("enums_unions.zig");
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
    try arrays.sample();
    // try bool_ops.sample();
    // try block_switch.sample();
    // try enum_union.sample();
    // const result = squareRoot(25);
    // std.debug.print("the result is: {d}\n", .{result});

    // const garfield: Cat = .{ .name = "Garfield", .age = 16 };
    // std.debug.print("the cat info is: {{ name: {s}, age: {d} }}\n", .{ garfield.name, garfield.age });

    // const answer = sampleSwitch(1);

    // std.debug.print("the answer is: {}\n", .{answer});

    // const fav_color: Color = .red;
    // std.debug.print("my favorite color is: {s} and color number is: {d}\n", .{ @tagName(fav_color), @intFromEnum(fav_color) });
}
