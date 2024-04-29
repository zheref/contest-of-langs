/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 */

namespace ContestOfSharp.Challenges;

public abstract class Challenge5
{
    private static readonly double Tolerance = 0.001;
    
    interface IPolygon
    {
        double GetArea();
        bool IsEquilateral { get; }
    }

    public record struct Triangle : IPolygon
    {
        private readonly double _firstAngle;
        
        public required double Base { get; set; }

        public required double Height { get; set; }

        public Triangle(double firstAngle = 60.0)
        {
            this._firstAngle = firstAngle;
        }

        public Triangle()
        {
            this._firstAngle = 60.0;
        }
        
        public double GetArea()
        {
            return (Base * Height) / 2;
        }

        public bool IsEquilateral => Math.Abs(_firstAngle - 60.0) < Tolerance;
        public bool IsRectangular => Math.Abs(_firstAngle - 90.0) < Tolerance;
        public bool IsIsosceles => Math.Abs(_firstAngle - 60.0) < Tolerance;
    }

    public struct Rectangle : IPolygon
    {
        private double Length { get; set; }
        private double Width { get; set; }

        public Rectangle(double length, double width)
        {
            Length = length;
            Width = width;
        }

        public Rectangle(double length)
        {
            Length = length;
            Width = length;
        }

        public double GetArea()
        {
            return Length * Width;
        }
        
        public bool IsEquilateral => Math.Abs(Length - Width) < Tolerance;
        public bool IsSquare => IsEquilateral;
    }
}