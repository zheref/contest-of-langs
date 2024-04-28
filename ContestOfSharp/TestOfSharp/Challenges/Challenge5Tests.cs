using ContestOfSharp.Challenges;

namespace TestOfSharp.Challenges;

[TestClass]
public class Challenge5Tests
{
    [TestMethod]
    public void TestTriangles()
    {
        var triangle1 = new Challenge5.Triangle() { Base = 20, Height = 20 };
        Assert.AreEqual(200, triangle1.GetArea());
        Assert.IsTrue(triangle1.IsEquilateral);
        Assert.IsFalse(triangle1.IsRectangular);
        Assert.IsTrue(triangle1.IsIsosceles);

        var triangle2 = new Challenge5.Triangle(firstAngle: 90.0) { Base = 30, Height = 30 };
        Assert.AreEqual(450, triangle2.GetArea());
        Assert.IsFalse(triangle2.IsEquilateral);
        Assert.IsTrue(triangle2.IsRectangular);
        Assert.IsFalse(triangle2.IsIsosceles);

        var triangle3 = new Challenge5.Triangle(firstAngle: 30) { Base = 30, Height = 20 };
        Assert.AreEqual(300, triangle3.GetArea());
        Assert.IsFalse(triangle3.IsEquilateral);
        Assert.IsFalse(triangle3.IsRectangular);
        Assert.IsFalse(triangle3.IsIsosceles);
    }

    [TestMethod]
    public void TestRectangles()
    {
        var rectangle1 = new Challenge5.Rectangle(length: 30, width: 20);
        Assert.AreEqual(600, rectangle1.GetArea());
        Assert.IsFalse(rectangle1.IsEquilateral);
        Assert.IsFalse(rectangle1.IsSquare);

        var rectangle2 = new Challenge5.Rectangle(length: 30, width: 30);
        Assert.AreEqual(900, rectangle2.GetArea());
        Assert.IsTrue(rectangle2.IsEquilateral);
        Assert.IsTrue(rectangle2.IsSquare);
    }
}