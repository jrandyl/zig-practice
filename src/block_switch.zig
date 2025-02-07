const std = @import("std");
const print = std.debug.print;

pub fn sample() !void {
    {
        const x: usize = 42;
        print("x: {d}\n", .{x});
    }

    const a: usize = bl: {
        var b: u8 = 10;
        const c = 20;
        b += c;
        break :bl b;
    };

    print("a: {d}\n", .{a});

    switch (a) {
        0...9 => print("It's between 0 and 9\n", .{}),
        10...19 => print("It's between 10 and 19\n", .{}),
        30...100 => |v| blk: {
            const w: usize = 100;
            break :blk print("It's {d}\n", .{v + w});
        },
        else => print("None of the Above.\n", .{}),
    }

    const final = switch (a) {
        0...9 => |v| v + 10,
        10...19 => |v| v + 20,
        else => |v| v + 1000,
    };

    print("the final answer is {d}\n", .{final});
}
