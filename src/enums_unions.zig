const std = @import("std");
const print = std.debug.print;

// auto assign integers starting from 0, uses the smallest unsigned integer type.
const Color = enum {
    red,
    blue,
    green,

    fn isRed(self: Color) bool {
        return self == .red;
    }
};

const Number = union {
    int: u8,
    float: f64,
};

const Token = union(enum) {
    keyword_if,
    keyword_switch,
    digit: usize,

    fn is(self: Token, tag: std.meta.Tag(Token)) bool {
        return self == tag;
    }
};

pub fn sample() !void {
    var fav_color: Color = .red;
    print("favorite color is {s}, is it red? {}\n", .{ @tagName(fav_color), fav_color.isRed() });
    print("the current favorite color's int value is: {}\n", .{@intFromEnum(fav_color)});

    fav_color = .blue;
    print("favorite color is {s}, is it red? {}\n", .{ @tagName(fav_color), fav_color.isRed() });
    print("the current favorite color's int value is: {}\n", .{@intFromEnum(fav_color)});

    fav_color = @enumFromInt(2);
    print("favorite color is {s}, is it red? {}\n", .{ @tagName(fav_color), fav_color.isRed() });
    print("the current favorite color's int value is: {}\n", .{@intFromEnum(fav_color)});

    switch (fav_color) {
        .red => |v| print("The current color is {s}\n", .{@tagName(v)}),
        .blue => |v| print("The current color is {s}\n", .{@tagName(v)}),
        .green => |v| print("The current color is {s}\n", .{@tagName(v)}),
    }

    var fav_num: Number = .{ .int = 13 };
    print("favorite number is {d}\n", .{fav_num.int});

    fav_num = .{ .float = 3.1415 };
    print("favorite number is {d:.4}\n", .{fav_num.float});

    var token: Token = .keyword_if;
    print("is it if? {}\n", .{token.is(.keyword_if)});

    switch (token) {
        .keyword_if => print("it's if\n", .{}),
        .keyword_switch => print("it's switch\n", .{}),
        .digit => |v| print("it's a digit with value: {d}\n", .{v}),
    }

    token = .{ .digit = 12 };

    switch (token) {
        .keyword_if => print("it's if\n", .{}),
        .keyword_switch => print("it's switch\n", .{}),
        .digit => |v| print("it's a digit with value: {d}\n", .{v}),
    }

    print("the digit uint is {d}\n", .{@intFromEnum(token)});

    if (token == .digit and token.digit == 12) print("it's a {s} and it's value is {d}\n", .{ @tagName(token), token.digit });
}
