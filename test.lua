require("code")
describe("circle code", function()
  it("should show two circles intersect", function()
    _G.sqrt = math.sqrt
    local a = CollisionCircle:new(0,0,5)
    local b = CollisionCircle:new(0,0,1)
    assert.truthy(a:intersects(b))

    local c = CollisionCircle:new(0,0,1)
    local d = CollisionCircle:new(2.1,0,1)
    assert.is_not_true(c:intersects(d))
  end)
end)
