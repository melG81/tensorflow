module {
func.func @main(%arg0: tensor<2x2xf32>) -> tensor<2xf32> {
  %cst = "tfl.pseudo_const"() <{value = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
  %0 = "tfl.mean"(%arg0, %cst) <{keep_dims = false}> : (tensor<2x2xf32>, tensor<1xi32>) -> tensor<2xf32>
  return %0 : tensor<2xf32>
}
}