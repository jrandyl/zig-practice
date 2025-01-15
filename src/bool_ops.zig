const std = @import("std");
const print = std.debug.print;

pub fn sample() !void {
    const t = true;
    const f = false;
    print("t: {} and f: {}\n", .{ t, f });
    print("true is equal to an int: {}\n", .{@intFromBool(t)});
    print("false is equal to an int: {}\n", .{@intFromBool(f)});

    var maybe_data: ?u8 = null;
    print("the maybe data is currently: {?}\n", .{maybe_data});

    maybe_data = 12;
    print("the updated maybe data is: {?}\n", .{maybe_data});

    // the .? will return an error if the data is null, without it, it will display as null.
    var data = maybe_data.?;

    data = maybe_data orelse 10;

    print("the data is: {?}\n", .{data});

    if (maybe_data) |v| {
        print("the v is: {}\n", .{v});
    } else {
        print("the v is null\n", .{});
    }

    // You need |_| to ignore the value of an optional null variable. Without it you will get an error.
    if (maybe_data) |_| {
        print("the maybe data is not null.\n", .{});
    }

    if (maybe_data == null) {
        print("the maybe data is null.\n", .{});
    } else {
        print("the maybe data is not null.\n", .{});
    }

    if (t) print("It's {}\n", .{t});

    data = if (maybe_data) |v| v else 0;
    print("the final data is: {?}\n", .{data});

    data = if (maybe_data != null and maybe_data == 12)
        12 * 2
    else
        0;

    print("the new final data is: {?}\n", .{data});
}
