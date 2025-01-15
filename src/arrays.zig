const std = @import("std");
const print = std.debug.print;

pub fn sample() !void {
    const explicit_arr: [10]u8 = [10]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    print("explicit array value: {any} and length is {d}\n", .{ explicit_arr, explicit_arr.len });

    const infferred_arr = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    print("infferred array value: {any} the length is {d}\n", .{ infferred_arr, infferred_arr.len });

    // repeat the arrays values by 2
    const repeat_existing_arr_values = explicit_arr ** 2;
    print("repeated array value is {any} the length is {d}\n", .{ repeat_existing_arr_values, repeat_existing_arr_values.len });

    // initialize an array using the value of 1 with a length of 5
    const initialize_arr_with_single_value = [_]u8{1} ** 5;
    print("the initialize array is: {any} with length of {d}\n", .{ initialize_arr_with_single_value, initialize_arr_with_single_value.len });

    const concat_arr = explicit_arr ++ infferred_arr;
    print("the concatenated array is: {any} with length of {d}\n", .{ concat_arr, concat_arr.len });

    const arr_1 = [_]i16{ 1, 2, 3, 4 };
    const arr_2 = [_]u8{ 1, 2, 3, 4, 5 };

    const concat_arr_with_different_types_of_integer = arr_1 ++ arr_2;
    print("the concatenated array of different type of integer is: {any} with length of {d}\n", .{ concat_arr_with_different_types_of_integer, concat_arr_with_different_types_of_integer.len });

    const arr: [2]u8 = .{ 1, 2 };
    print("the array is: {any}\n", .{arr});

    const word_arr: [9]u8 = .{ 71, 97, 114, 102, 105, 101, 108, 100, 0 };
    print("the word in word_arr is: {s} and the array value is {any}\n", .{ word_arr, word_arr });

    const big_arr: [10]u8 = .{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    print("the big array value is: {any}\n", .{big_arr});

    const slice_arr = big_arr[0..arr.len];
    print("the slice array value is: {any}\n", .{slice_arr});

    const first_name: []const u8 = "Jon";

    const last_name: []const u8 = " Calderon";

    var full_name: [300]u8 = undefined;

    for (first_name, 0..) |value, i| {
        full_name[i] = value;
    }

    for (last_name, 0..) |value, i| {
        full_name[first_name.len + i] = value;
    }

    print("my full name is: {s}\n", .{full_name[0 .. first_name.len + last_name.len]});

    const sentinel_arr: [10:0]u8 = .{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    print("this is a sentinel array value: {any} with a length:{d}\n", .{ sentinel_arr, sentinel_arr.len });
    print("and this {d} is the sentinel which is the value after using the array length to access the array or the arr[len]\n", .{sentinel_arr[sentinel_arr.len]});
}
