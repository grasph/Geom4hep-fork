module Geom4hep

export Point3, Point2, Vector3, Vector2, nonzero
export AbstractShape, AbstractMaterial
export Shape, NoShape, Box, Trd, TBox, TTrd, Tube, Wedge, isInside, isOutside, Cone, Polycone, getNz, getNSections, getSectionIndex
export CutTube, Plane, Trap, BooleanUnion, BooleanIntersection, BooleanSubtraction
export getindex, capacity, surface, extent, normal, distanceToOut,  distanceToIn, inside, safetyToOut, safetyToIn
export Material, Isotope, Element
export Transformation3D, RotMatrix3, RotXYZ, one, isone, transform, hasrotation, hastranslation, inv, lmul!
export PlacedVolume, Volume, Assembly, placeDaughter!, draw, draw!, drawDistanceToIn, drawDistanceToOut, getWorld, children
export AABB, area, volume, BVHParam, buildBVH, BVH, pvolindices, pushPvolIndices!
export AbstractNavigator, TrivialNavigator, BVHNavigator, NavigatorState, computeStep!, locateGlobalPoint!, reset!, isInVolume, currentVolume, getClosestDaughter, containedDaughters
export kTolerance
export processGDML
export Triangle, Intersection, intersect, distanceToPlane
export Tesselation, coordinates, faces, normals, mesh

using StaticArrays, GeometryBasics, LinearAlgebra, Rotations, AbstractTrees
include("BasicTypes.jl")
include("Transformation3D.jl")
include("TriangleIntersect.jl")
include("Trd.jl")
include("Box.jl")
include("Wedge.jl")
include("Tube.jl")
include("Cone.jl")
include("Polycone.jl")
include("CutTube.jl")
include("Trap.jl")
include("NoShape.jl")
include("BaseShapes.jl")
include("Boolean.jl")
include("Shape.jl")
include("Materials.jl")
include("Volume.jl")
include("BVH.jl")
include("Navigators.jl")
include("Drawing.jl")
include("GDML.jl")
include("Benchmark.jl")
#include("CuGeom.jl")  # PackageCompiler fails?

end # module
