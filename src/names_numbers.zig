const std = @import("std");
const print = std.debug.print;

pub fn sample() !void {
    const name = "Randyl";
    print("Hi my name is {s} - this is a string or a slice of constant u8, type:{} and length is {d}\n", .{ name, @TypeOf(name), name.len });

    const const_num: u8 = 1;
    print("{d} is a constant number and cannot be changed\n", .{const_num});

    var var_num: u8 = 0;
    print("{d} is a variable number and can be changed\n", .{var_num});

    var_num = 1;
    print("{d} is the new value of the variable number\n", .{var_num});

    var undefined_num: u8 = undefined;
    print("{d} is an undefined number with trash value as placeholder\n", .{undefined_num});

    undefined_num = 10;
    print("{d} is the value added to the undefined number, only used the undefined variable if you added a value to it.\n", .{undefined_num});

    const float_num: f64 = 3.1415;
    print("{d} is a floating number. \n", .{float_num});
    print("{d:.3} is a floating number formatted to get only 3 decimals. \n", .{float_num});
    print("{d:.2} is a floating number formatted to get only 2 decimals. \n", .{float_num});

    const comp_float = 20.141;
    print("{d} is a compile time floating number literals. \n", .{comp_float});

    const comp_int = 100;
    print("{d} is a compile time integer number literals. \n", .{comp_int});
}
