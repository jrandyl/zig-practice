const std = @import("std");
const print = std.debug.print;

pub fn sample() !void {
    const num_ten: u8 = 10;
    const num_twenty: u8 = 20;
    const num_one_hundred: u8 = 100;

    const sum = num_ten + num_twenty + num_one_hundred;
    print("the sum is: {d}\n", .{sum});

    const division = num_one_hundred / num_ten;
    print("the division value is: {d}\n", .{division});

    const sub = num_one_hundred - num_ten;
    print("the difference value is: {d}\n", .{sub});

    const mul = num_ten * num_twenty;
    print("the multiplication value is: {d}\n", .{mul});

    const overflow_sum = num_ten + num_twenty + num_one_hundred +% 150;
    print("the oveflow sum is: {d}\n", .{overflow_sum});

    const saturating_mul = num_ten *| num_one_hundred;
    print("the saturating multiplication value is: {d}\n", .{saturating_mul});

    const num_u8: u8 = 200;
    const num_u16: u16 = 900;
    const coerced_num: u32 = num_u8 + num_u16;
    print("the coerced number value is: {d}, it is safe if its a higher integer is coercing\n", .{coerced_num});

    const low_int: u16 = coerced_num;
    print("the lower integer number value is: {d}, it is safe to assign if it does not exceed the limit of the integer\n", .{low_int});

    const num_int: i32 = 3000;
    const casted_num: u16 = @intCast(num_int);

    print("the casted integer number value is: {d}, it is safe to cast an integer type if it does not exceed the limit of the integer\n", .{casted_num});

    var a_float: f64 = 3.141516;
    const int_from_float: i32 = @intFromFloat(a_float);
    print("the converted integer from float number value is: {d}\n", .{int_from_float});

    a_float = @floatFromInt(int_from_float);
    print("the converted float from integer number value is: {d:.4}\n", .{a_float});
}
