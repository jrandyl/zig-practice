const std = @import("std");
const print = std.debug.print;

const Count = struct {
    const Self = @This();
    val: i32,
    allocator: std.mem.Allocator,

    // init now returns a mutable pointer (*Self) and we change const to mutable
    fn init(num: i32, allocator: std.mem.Allocator) !*Self {
        const self = try allocator.create(Self);
        self.* = Self{
            .allocator = allocator,
            .val = num,
        };
        return self;
    }

    // deinit accepts a mutable pointer to Self, no changes needed
    fn deinit(self: *Self) void {
        self.allocator.destroy(self);
    }
};

pub fn sample() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){}; // Make gpa mutable
    const allocator = gpa.allocator(); // Remove const here to make allocator mutable

    var count = try Count.init(10, allocator); // Initialize count, and get a mutable pointer

    defer count.deinit(); // Defer deinit on the mutable pointer

    print("initial count value: {d}\n", .{count.val});

    // Using the mutable pointer count
    var newCount = count;
    newCount.val += 30;

    print("current count value: {d}\n", .{count.val});

    count.val += 30;
    print("final count value: {d}\n", .{count.val});
}
