
[1mFrom:[0m /home/brittlegit/code/triangle-classification-v-000/lib/triangle.rb @ line 28 Triangle#kind:

    [1;34m13[0m: [32mdef[0m [1;34mkind[0m
    [1;34m14[0m:   [32mif[0m @side_1 == @side_2 && @side_1 == @side_3
    [1;34m15[0m:     [33m:equilateral[0m
    [1;34m16[0m: 
    [1;34m17[0m:   [32melsif[0m @side_1 != @side_2 && @side_1 != @side_3 && @side_2 == @side_3
    [1;34m18[0m:     [33m:isosceles[0m
    [1;34m19[0m: 
    [1;34m20[0m:   [32melsif[0m @side_1 != @side_2 && @side_2 != @side_3 && @side_1 == @side_3
    [1;34m21[0m:     [33m:isosceles[0m
    [1;34m22[0m: 
    [1;34m23[0m:   [32melsif[0m @side_1 == @side_2 && @side_2 != @side_3 && @side_1 != @side_3
    [1;34m24[0m:     [33m:isosceles[0m
    [1;34m25[0m: 
    [1;34m26[0m:   [32melsif[0m @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
    [1;34m27[0m:     [33m:scalene[0m
 => [1;34m28[0m:     binding.pry
    [1;34m29[0m: 
    [1;34m30[0m:   [32melsif[0m @side_1 <= [1;34m0[0m || @side_2 <= [1;34m0[0m || @side_3 <= [1;34m0[0m
    [1;34m31[0m:     raise [1;34;4mTriangleError[0m
    [1;34m32[0m: 
    [1;34m33[0m:   [32mend[0m
    [1;34m34[0m: [32mend[0m

