З
фЖ
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
д
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5љК

conv2d_1_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ@@*$
shape:џџџџџџџџџ@@*
dtype0
v
conv2d_1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
`
conv2d_1/random_uniform/minConst*
valueB
 *OSО*
dtype0*
_output_shapes
: 
`
conv2d_1/random_uniform/maxConst*
valueB
 *OS>*
dtype0*
_output_shapes
: 
В
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
: *
seed2ьыї*
seedБџх)
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
T0*
_output_shapes
: 

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
: 

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
: 
З
conv2d_1/kernelVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 

conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernelconv2d_1/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0

#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: 
[
conv2d_1/ConstConst*
dtype0*
_output_shapes
: *
valueB *    
Ѕ
conv2d_1/biasVarHandleOp*
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
v
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/Const* 
_class
loc:@conv2d_1/bias*
dtype0

!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
{
#conv2d_1/convolution/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: 

conv2d_1/convolutionConv2Dconv2d_1_input#conv2d_1/convolution/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:џџџџџџџџџ>> 
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
: 
Ѓ
conv2d_1/BiasAddBiasAddconv2d_1/convolutionconv2d_1/BiasAdd/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ>> *
T0*
data_formatNHWC
e
activation_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ>> 
Т
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0
v
conv2d_2/random_uniform/shapeConst*%
valueB"              *
dtype0*
_output_shapes
:
`
conv2d_2/random_uniform/minConst*
valueB
 *ьбН*
dtype0*
_output_shapes
: 
`
conv2d_2/random_uniform/maxConst*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
В
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
dtype0*&
_output_shapes
:  *
seed2Љк*
seedБџх)*
T0
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
T0*
_output_shapes
: 

conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*&
_output_shapes
:  *
T0

conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*&
_output_shapes
:  *
T0
З
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
	container *
shape:  *
dtype0*
_output_shapes
: * 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 

conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernelconv2d_2/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0

#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:  
[
conv2d_2/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
Ѕ
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
v
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/Const*
dtype0* 
_class
loc:@conv2d_2/bias

!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
{
#conv2d_2/convolution/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:  

conv2d_2/convolutionConv2Dmax_pooling2d_1/MaxPool#conv2d_2/convolution/ReadVariableOp*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
: 
Ѓ
conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
e
activation_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
Т
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0
v
conv2d_3/random_uniform/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
`
conv2d_3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊН
`
conv2d_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊ=
В
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*
dtype0*&
_output_shapes
: @*
seed2вјЄ*
seedБџх)*
T0
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
T0*
_output_shapes
: 

conv2d_3/random_uniform/mulMul%conv2d_3/random_uniform/RandomUniformconv2d_3/random_uniform/sub*&
_output_shapes
: @*
T0

conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*
T0*&
_output_shapes
: @
З
conv2d_3/kernelVarHandleOp*
shape: @*
dtype0*
_output_shapes
: * 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
	container 
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 

conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernelconv2d_3/random_uniform*"
_class
loc:@conv2d_3/kernel*
dtype0

#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
: @
[
conv2d_3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv2d_3/biasVarHandleOp*
_output_shapes
: *
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
	container *
shape:@*
dtype0
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
v
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/Const* 
_class
loc:@conv2d_3/bias*
dtype0

!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@* 
_class
loc:@conv2d_3/bias*
dtype0
{
#conv2d_3/convolution/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
: @

conv2d_3/convolutionConv2Dmax_pooling2d_2/MaxPool#conv2d_3/convolution/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:@
Ѓ
conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_3/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@*
T0
e
activation_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
Т
max_pooling2d_3/MaxPoolMaxPoolactivation_3/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
f
flatten_1/ShapeShapemax_pooling2d_3/MaxPool*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
flatten_1/stack_5006/0Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
~
flatten_1/stack_5006Packflatten_1/stack_5006/0flatten_1/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1/ReshapeReshapemax_pooling2d_3/MaxPoolflatten_1/stack_5006*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
m
dense_1/random_uniform/shapeConst*
valueB" 	  @   *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *м-NН*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *м-N=*
dtype0
Ј
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
_output_shapes
:	@*
seed2э6*
seedБџх)*
T0*
dtype0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	@

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	@
­
dense_1/kernelVarHandleOp*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape:	@*
dtype0
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	@
Z
dense_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ђ
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
r
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/Const*
dtype0*
_class
loc:@dense_1/bias

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	@
Ђ
dense_1/MatMulMatMulflatten_1/Reshapedense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:@

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ@
\
activation_4/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ@
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
_output_shapes
: *
shape: *
dtype0

n
dropout_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_1/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
У
#dropout_1/cond/dropout/Shape/SwitchSwitchactivation_4/Reludropout_1/cond/pred_id*$
_class
loc:@activation_4/Relu*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*
T0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Р
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ@*
seed2иш*
seedБџх)
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Т
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ@
Д
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*'
_output_shapes
:џџџџџџџџџ@*
T0
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
_output_shapes
: *
T0
Љ
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:џџџџџџџџџ@

dropout_1/cond/dropout/mulMul%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/truediv*'
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*'
_output_shapes
:џџџџџџџџџ@*

DstT0*

SrcT0
*
Truncate( 

dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ@
З
dropout_1/cond/Switch_1Switchactivation_4/Reludropout_1/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*
T0*$
_class
loc:@activation_4/Relu

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
m
dense_2/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *В_О
_
dense_2/random_uniform/maxConst*
valueB
 *В_>*
dtype0*
_output_shapes
: 
Ј
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2дР*
seedБџх)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

:@
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

:@
Ќ
dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape
:@
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kerneldense_2/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
Ђ
dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
r
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/Const*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:*
_class
loc:@dense_2/bias
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:@
Ѕ
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
b
activation_5/SigmoidSigmoiddense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
: *
shape: 
O
AssignVariableOpAssignVariableOpconv2d_1/kernelPlaceholder*
dtype0
y
ReadVariableOpReadVariableOpconv2d_1/kernel^AssignVariableOp*
dtype0*&
_output_shapes
: 
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Q
AssignVariableOp_1AssignVariableOpconv2d_1/biasPlaceholder_1*
dtype0
o
ReadVariableOp_1ReadVariableOpconv2d_1/bias^AssignVariableOp_1*
dtype0*
_output_shapes
: 
n
Placeholder_2Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
S
AssignVariableOp_2AssignVariableOpconv2d_2/kernelPlaceholder_2*
dtype0
}
ReadVariableOp_2ReadVariableOpconv2d_2/kernel^AssignVariableOp_2*
dtype0*&
_output_shapes
:  
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
: *
shape: 
Q
AssignVariableOp_3AssignVariableOpconv2d_2/biasPlaceholder_3*
dtype0
o
ReadVariableOp_3ReadVariableOpconv2d_2/bias^AssignVariableOp_3*
_output_shapes
: *
dtype0
n
Placeholder_4Placeholder*
dtype0*&
_output_shapes
: @*
shape: @
S
AssignVariableOp_4AssignVariableOpconv2d_3/kernelPlaceholder_4*
dtype0
}
ReadVariableOp_4ReadVariableOpconv2d_3/kernel^AssignVariableOp_4*
dtype0*&
_output_shapes
: @
V
Placeholder_5Placeholder*
_output_shapes
:@*
shape:@*
dtype0
Q
AssignVariableOp_5AssignVariableOpconv2d_3/biasPlaceholder_5*
dtype0
o
ReadVariableOp_5ReadVariableOpconv2d_3/bias^AssignVariableOp_5*
dtype0*
_output_shapes
:@
`
Placeholder_6Placeholder*
dtype0*
_output_shapes
:	@*
shape:	@
R
AssignVariableOp_6AssignVariableOpdense_1/kernelPlaceholder_6*
dtype0
u
ReadVariableOp_6ReadVariableOpdense_1/kernel^AssignVariableOp_6*
dtype0*
_output_shapes
:	@
V
Placeholder_7Placeholder*
shape:@*
dtype0*
_output_shapes
:@
P
AssignVariableOp_7AssignVariableOpdense_1/biasPlaceholder_7*
dtype0
n
ReadVariableOp_7ReadVariableOpdense_1/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:@
^
Placeholder_8Placeholder*
dtype0*
_output_shapes

:@*
shape
:@
R
AssignVariableOp_8AssignVariableOpdense_2/kernelPlaceholder_8*
dtype0
t
ReadVariableOp_8ReadVariableOpdense_2/kernel^AssignVariableOp_8*
dtype0*
_output_shapes

:@
V
Placeholder_9Placeholder*
dtype0*
_output_shapes
:*
shape:
P
AssignVariableOp_9AssignVariableOpdense_2/biasPlaceholder_9*
dtype0
n
ReadVariableOp_9ReadVariableOpdense_2/bias^AssignVariableOp_9*
dtype0*
_output_shapes
:
O
VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
S
VarIsInitializedOp_6VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_7VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_8VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_9VarIsInitializedOpdense_2/bias*
_output_shapes
: 
ј
initNoOp^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign

conv2d_1_input_1Placeholder*
dtype0*/
_output_shapes
:џџџџџџџџџ@@*$
shape:џџџџџџџџџ@@
x
conv2d_1_1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
b
conv2d_1_1/random_uniform/minConst*
valueB
 *OSО*
dtype0*
_output_shapes
: 
b
conv2d_1_1/random_uniform/maxConst*
valueB
 *OS>*
dtype0*
_output_shapes
: 
Ж
'conv2d_1_1/random_uniform/RandomUniformRandomUniformconv2d_1_1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
: *
seed2хе*
seedБџх)

conv2d_1_1/random_uniform/subSubconv2d_1_1/random_uniform/maxconv2d_1_1/random_uniform/min*
_output_shapes
: *
T0

conv2d_1_1/random_uniform/mulMul'conv2d_1_1/random_uniform/RandomUniformconv2d_1_1/random_uniform/sub*
T0*&
_output_shapes
: 

conv2d_1_1/random_uniformAddconv2d_1_1/random_uniform/mulconv2d_1_1/random_uniform/min*
T0*&
_output_shapes
: 
Н
conv2d_1_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv2d_1_1/kernel*$
_class
loc:@conv2d_1_1/kernel*
	container *
shape: 
s
2conv2d_1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1_1/kernel*
_output_shapes
: 

conv2d_1_1/kernel/AssignAssignVariableOpconv2d_1_1/kernelconv2d_1_1/random_uniform*$
_class
loc:@conv2d_1_1/kernel*
dtype0
Ѕ
%conv2d_1_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1_1/kernel*$
_class
loc:@conv2d_1_1/kernel*
dtype0*&
_output_shapes
: 
]
conv2d_1_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
Ћ
conv2d_1_1/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1_1/bias*"
_class
loc:@conv2d_1_1/bias*
	container *
shape: 
o
0conv2d_1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1_1/bias*
_output_shapes
: 
~
conv2d_1_1/bias/AssignAssignVariableOpconv2d_1_1/biasconv2d_1_1/Const*"
_class
loc:@conv2d_1_1/bias*
dtype0

#conv2d_1_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1_1/bias*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1_1/bias

%conv2d_1_1/convolution/ReadVariableOpReadVariableOpconv2d_1_1/kernel*
dtype0*&
_output_shapes
: 

conv2d_1_1/convolutionConv2Dconv2d_1_input_1%conv2d_1_1/convolution/ReadVariableOp*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:џџџџџџџџџ>> *
	dilations
*
T0*
data_formatNHWC*
strides

m
!conv2d_1_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1_1/bias*
dtype0*
_output_shapes
: 
Љ
conv2d_1_1/BiasAddBiasAddconv2d_1_1/convolution!conv2d_1_1/BiasAdd/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ>> *
T0*
data_formatNHWC
i
activation_1_1/ReluReluconv2d_1_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ>> 
Ц
max_pooling2d_1_1/MaxPoolMaxPoolactivation_1_1/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0
x
conv2d_2_1/random_uniform/shapeConst*%
valueB"              *
dtype0*
_output_shapes
:
b
conv2d_2_1/random_uniform/minConst*
valueB
 *ьбН*
dtype0*
_output_shapes
: 
b
conv2d_2_1/random_uniform/maxConst*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
Ж
'conv2d_2_1/random_uniform/RandomUniformRandomUniformconv2d_2_1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:  *
seed2мы*
seedБџх)

conv2d_2_1/random_uniform/subSubconv2d_2_1/random_uniform/maxconv2d_2_1/random_uniform/min*
T0*
_output_shapes
: 

conv2d_2_1/random_uniform/mulMul'conv2d_2_1/random_uniform/RandomUniformconv2d_2_1/random_uniform/sub*&
_output_shapes
:  *
T0

conv2d_2_1/random_uniformAddconv2d_2_1/random_uniform/mulconv2d_2_1/random_uniform/min*
T0*&
_output_shapes
:  
Н
conv2d_2_1/kernelVarHandleOp*$
_class
loc:@conv2d_2_1/kernel*
	container *
shape:  *
dtype0*
_output_shapes
: *"
shared_nameconv2d_2_1/kernel
s
2conv2d_2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2_1/kernel*
_output_shapes
: 

conv2d_2_1/kernel/AssignAssignVariableOpconv2d_2_1/kernelconv2d_2_1/random_uniform*$
_class
loc:@conv2d_2_1/kernel*
dtype0
Ѕ
%conv2d_2_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_2_1/kernel*
dtype0*&
_output_shapes
:  *$
_class
loc:@conv2d_2_1/kernel
]
conv2d_2_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
Ћ
conv2d_2_1/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_2_1/bias*"
_class
loc:@conv2d_2_1/bias*
	container *
shape: 
o
0conv2d_2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2_1/bias*
_output_shapes
: 
~
conv2d_2_1/bias/AssignAssignVariableOpconv2d_2_1/biasconv2d_2_1/Const*"
_class
loc:@conv2d_2_1/bias*
dtype0

#conv2d_2_1/bias/Read/ReadVariableOpReadVariableOpconv2d_2_1/bias*"
_class
loc:@conv2d_2_1/bias*
dtype0*
_output_shapes
: 

%conv2d_2_1/convolution/ReadVariableOpReadVariableOpconv2d_2_1/kernel*
dtype0*&
_output_shapes
:  
Є
conv2d_2_1/convolutionConv2Dmax_pooling2d_1_1/MaxPool%conv2d_2_1/convolution/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations

m
!conv2d_2_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_2_1/bias*
dtype0*
_output_shapes
: 
Љ
conv2d_2_1/BiasAddBiasAddconv2d_2_1/convolution!conv2d_2_1/BiasAdd/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC
i
activation_2_1/ReluReluconv2d_2_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
Ц
max_pooling2d_2_1/MaxPoolMaxPoolactivation_2_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
x
conv2d_3_1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"          @   *
dtype0
b
conv2d_3_1/random_uniform/minConst*
valueB
 *ЋЊЊН*
dtype0*
_output_shapes
: 
b
conv2d_3_1/random_uniform/maxConst*
valueB
 *ЋЊЊ=*
dtype0*
_output_shapes
: 
Е
'conv2d_3_1/random_uniform/RandomUniformRandomUniformconv2d_3_1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
: @*
seed2Ащ*
seedБџх)

conv2d_3_1/random_uniform/subSubconv2d_3_1/random_uniform/maxconv2d_3_1/random_uniform/min*
_output_shapes
: *
T0

conv2d_3_1/random_uniform/mulMul'conv2d_3_1/random_uniform/RandomUniformconv2d_3_1/random_uniform/sub*&
_output_shapes
: @*
T0

conv2d_3_1/random_uniformAddconv2d_3_1/random_uniform/mulconv2d_3_1/random_uniform/min*
T0*&
_output_shapes
: @
Н
conv2d_3_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv2d_3_1/kernel*$
_class
loc:@conv2d_3_1/kernel*
	container *
shape: @
s
2conv2d_3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3_1/kernel*
_output_shapes
: 

conv2d_3_1/kernel/AssignAssignVariableOpconv2d_3_1/kernelconv2d_3_1/random_uniform*$
_class
loc:@conv2d_3_1/kernel*
dtype0
Ѕ
%conv2d_3_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_3_1/kernel*
dtype0*&
_output_shapes
: @*$
_class
loc:@conv2d_3_1/kernel
]
conv2d_3_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ћ
conv2d_3_1/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_3_1/bias*"
_class
loc:@conv2d_3_1/bias*
	container *
shape:@
o
0conv2d_3_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3_1/bias*
_output_shapes
: 
~
conv2d_3_1/bias/AssignAssignVariableOpconv2d_3_1/biasconv2d_3_1/Const*"
_class
loc:@conv2d_3_1/bias*
dtype0

#conv2d_3_1/bias/Read/ReadVariableOpReadVariableOpconv2d_3_1/bias*"
_class
loc:@conv2d_3_1/bias*
dtype0*
_output_shapes
:@

%conv2d_3_1/convolution/ReadVariableOpReadVariableOpconv2d_3_1/kernel*
dtype0*&
_output_shapes
: @
Є
conv2d_3_1/convolutionConv2Dmax_pooling2d_2_1/MaxPool%conv2d_3_1/convolution/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
m
!conv2d_3_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_3_1/bias*
dtype0*
_output_shapes
:@
Љ
conv2d_3_1/BiasAddBiasAddconv2d_3_1/convolution!conv2d_3_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
i
activation_3_1/ReluReluconv2d_3_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
Ц
max_pooling2d_3_1/MaxPoolMaxPoolactivation_3_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
j
flatten_1_1/ShapeShapemax_pooling2d_3_1/MaxPool*
_output_shapes
:*
T0*
out_type0
i
flatten_1_1/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
k
!flatten_1_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
k
!flatten_1_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
[
flatten_1_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:

flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
c
flatten_1_1/stack_9145/0Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

flatten_1_1/stack_9145Packflatten_1_1/stack_9145/0flatten_1_1/Prod*
_output_shapes
:*
T0*

axis *
N

flatten_1_1/ReshapeReshapemax_pooling2d_3_1/MaxPoolflatten_1_1/stack_9145*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*
Tshape0
o
dense_1_1/random_uniform/shapeConst*
valueB" 	  @   *
dtype0*
_output_shapes
:
a
dense_1_1/random_uniform/minConst*
valueB
 *м-NН*
dtype0*
_output_shapes
: 
a
dense_1_1/random_uniform/maxConst*
valueB
 *м-N=*
dtype0*
_output_shapes
: 
­
&dense_1_1/random_uniform/RandomUniformRandomUniformdense_1_1/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	@*
seed2ЩРТ*
seedБџх)

dense_1_1/random_uniform/subSubdense_1_1/random_uniform/maxdense_1_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1_1/random_uniform/mulMul&dense_1_1/random_uniform/RandomUniformdense_1_1/random_uniform/sub*
T0*
_output_shapes
:	@

dense_1_1/random_uniformAdddense_1_1/random_uniform/muldense_1_1/random_uniform/min*
_output_shapes
:	@*
T0
Г
dense_1_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namedense_1_1/kernel*#
_class
loc:@dense_1_1/kernel*
	container *
shape:	@
q
1dense_1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_1/kernel*
_output_shapes
: 

dense_1_1/kernel/AssignAssignVariableOpdense_1_1/kerneldense_1_1/random_uniform*#
_class
loc:@dense_1_1/kernel*
dtype0

$dense_1_1/kernel/Read/ReadVariableOpReadVariableOpdense_1_1/kernel*#
_class
loc:@dense_1_1/kernel*
dtype0*
_output_shapes
:	@
\
dense_1_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
dense_1_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1_1/bias*!
_class
loc:@dense_1_1/bias*
	container *
shape:@
m
/dense_1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_1/bias*
_output_shapes
: 
z
dense_1_1/bias/AssignAssignVariableOpdense_1_1/biasdense_1_1/Const*!
_class
loc:@dense_1_1/bias*
dtype0

"dense_1_1/bias/Read/ReadVariableOpReadVariableOpdense_1_1/bias*!
_class
loc:@dense_1_1/bias*
dtype0*
_output_shapes
:@
q
dense_1_1/MatMul/ReadVariableOpReadVariableOpdense_1_1/kernel*
_output_shapes
:	@*
dtype0
Ј
dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( 
k
 dense_1_1/BiasAdd/ReadVariableOpReadVariableOpdense_1_1/bias*
dtype0*
_output_shapes
:@

dense_1_1/BiasAddBiasAdddense_1_1/MatMul dense_1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ@*
T0
`
activation_4_1/ReluReludense_1_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ@*
T0
p
dropout_1_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
a
dropout_1_1/cond/switch_tIdentitydropout_1_1/cond/Switch:1*
T0
*
_output_shapes
: 
_
dropout_1_1/cond/switch_fIdentitydropout_1_1/cond/Switch*
T0
*
_output_shapes
: 
[
dropout_1_1/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
~
dropout_1_1/cond/dropout/rateConst^dropout_1_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 

dropout_1_1/cond/dropout/ShapeShape'dropout_1_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Ы
%dropout_1_1/cond/dropout/Shape/SwitchSwitchactivation_4_1/Reludropout_1_1/cond/pred_id*
T0*&
_class
loc:@activation_4_1/Relu*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@

+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ф
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ@*
seed2КЯ
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ш
+dropout_1_1/cond/dropout/random_uniform/mulMul5dropout_1_1/cond/dropout/random_uniform/RandomUniform+dropout_1_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ@
К
'dropout_1_1/cond/dropout/random_uniformAdd+dropout_1_1/cond/dropout/random_uniform/mul+dropout_1_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ@

dropout_1_1/cond/dropout/sub/xConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0

dropout_1_1/cond/dropout/subSubdropout_1_1/cond/dropout/sub/xdropout_1_1/cond/dropout/rate*
T0*
_output_shapes
: 

"dropout_1_1/cond/dropout/truediv/xConst^dropout_1_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

 dropout_1_1/cond/dropout/truedivRealDiv"dropout_1_1/cond/dropout/truediv/xdropout_1_1/cond/dropout/sub*
_output_shapes
: *
T0
Џ
%dropout_1_1/cond/dropout/GreaterEqualGreaterEqual'dropout_1_1/cond/dropout/random_uniformdropout_1_1/cond/dropout/rate*'
_output_shapes
:џџџџџџџџџ@*
T0
 
dropout_1_1/cond/dropout/mulMul'dropout_1_1/cond/dropout/Shape/Switch:1 dropout_1_1/cond/dropout/truediv*'
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/dropout/CastCast%dropout_1_1/cond/dropout/GreaterEqual*
Truncate( *'
_output_shapes
:џџџџџџџџџ@*

DstT0*

SrcT0


dropout_1_1/cond/dropout/mul_1Muldropout_1_1/cond/dropout/muldropout_1_1/cond/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ@
П
dropout_1_1/cond/Switch_1Switchactivation_4_1/Reludropout_1_1/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*
T0*&
_class
loc:@activation_4_1/Relu

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul_1*
N*)
_output_shapes
:џџџџџџџџџ@: *
T0
o
dense_2_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
a
dense_2_1/random_uniform/minConst*
valueB
 *В_О*
dtype0*
_output_shapes
: 
a
dense_2_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *В_>*
dtype0
Ћ
&dense_2_1/random_uniform/RandomUniformRandomUniformdense_2_1/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2Ш z*
seedБџх)

dense_2_1/random_uniform/subSubdense_2_1/random_uniform/maxdense_2_1/random_uniform/min*
T0*
_output_shapes
: 

dense_2_1/random_uniform/mulMul&dense_2_1/random_uniform/RandomUniformdense_2_1/random_uniform/sub*
T0*
_output_shapes

:@

dense_2_1/random_uniformAdddense_2_1/random_uniform/muldense_2_1/random_uniform/min*
T0*
_output_shapes

:@
В
dense_2_1/kernelVarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *!
shared_namedense_2_1/kernel*#
_class
loc:@dense_2_1/kernel*
	container 
q
1dense_2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2_1/kernel*
_output_shapes
: 

dense_2_1/kernel/AssignAssignVariableOpdense_2_1/kerneldense_2_1/random_uniform*#
_class
loc:@dense_2_1/kernel*
dtype0

$dense_2_1/kernel/Read/ReadVariableOpReadVariableOpdense_2_1/kernel*#
_class
loc:@dense_2_1/kernel*
dtype0*
_output_shapes

:@
\
dense_2_1/ConstConst*
dtype0*
_output_shapes
:*
valueB*    
Ј
dense_2_1/biasVarHandleOp*!
_class
loc:@dense_2_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namedense_2_1/bias
m
/dense_2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2_1/bias*
_output_shapes
: 
z
dense_2_1/bias/AssignAssignVariableOpdense_2_1/biasdense_2_1/Const*!
_class
loc:@dense_2_1/bias*
dtype0

"dense_2_1/bias/Read/ReadVariableOpReadVariableOpdense_2_1/bias*!
_class
loc:@dense_2_1/bias*
dtype0*
_output_shapes
:
p
dense_2_1/MatMul/ReadVariableOpReadVariableOpdense_2_1/kernel*
_output_shapes

:@*
dtype0
Ћ
dense_2_1/MatMulMatMuldropout_1_1/cond/Mergedense_2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( 
k
 dense_2_1/BiasAdd/ReadVariableOpReadVariableOpdense_2_1/bias*
dtype0*
_output_shapes
:

dense_2_1/BiasAddBiasAdddense_2_1/MatMul dense_2_1/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
f
activation_5_1/SigmoidSigmoiddense_2_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
o
Placeholder_10Placeholder*&
_output_shapes
: *
shape: *
dtype0
W
AssignVariableOp_10AssignVariableOpconv2d_1_1/kernelPlaceholder_10*
dtype0

ReadVariableOp_10ReadVariableOpconv2d_1_1/kernel^AssignVariableOp_10*
dtype0*&
_output_shapes
: 
W
Placeholder_11Placeholder*
dtype0*
_output_shapes
: *
shape: 
U
AssignVariableOp_11AssignVariableOpconv2d_1_1/biasPlaceholder_11*
dtype0
s
ReadVariableOp_11ReadVariableOpconv2d_1_1/bias^AssignVariableOp_11*
dtype0*
_output_shapes
: 
o
Placeholder_12Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
W
AssignVariableOp_12AssignVariableOpconv2d_2_1/kernelPlaceholder_12*
dtype0

ReadVariableOp_12ReadVariableOpconv2d_2_1/kernel^AssignVariableOp_12*
dtype0*&
_output_shapes
:  
W
Placeholder_13Placeholder*
dtype0*
_output_shapes
: *
shape: 
U
AssignVariableOp_13AssignVariableOpconv2d_2_1/biasPlaceholder_13*
dtype0
s
ReadVariableOp_13ReadVariableOpconv2d_2_1/bias^AssignVariableOp_13*
dtype0*
_output_shapes
: 
o
Placeholder_14Placeholder*
shape: @*
dtype0*&
_output_shapes
: @
W
AssignVariableOp_14AssignVariableOpconv2d_3_1/kernelPlaceholder_14*
dtype0

ReadVariableOp_14ReadVariableOpconv2d_3_1/kernel^AssignVariableOp_14*
dtype0*&
_output_shapes
: @
W
Placeholder_15Placeholder*
_output_shapes
:@*
shape:@*
dtype0
U
AssignVariableOp_15AssignVariableOpconv2d_3_1/biasPlaceholder_15*
dtype0
s
ReadVariableOp_15ReadVariableOpconv2d_3_1/bias^AssignVariableOp_15*
dtype0*
_output_shapes
:@
a
Placeholder_16Placeholder*
shape:	@*
dtype0*
_output_shapes
:	@
V
AssignVariableOp_16AssignVariableOpdense_1_1/kernelPlaceholder_16*
dtype0
y
ReadVariableOp_16ReadVariableOpdense_1_1/kernel^AssignVariableOp_16*
dtype0*
_output_shapes
:	@
W
Placeholder_17Placeholder*
dtype0*
_output_shapes
:@*
shape:@
T
AssignVariableOp_17AssignVariableOpdense_1_1/biasPlaceholder_17*
dtype0
r
ReadVariableOp_17ReadVariableOpdense_1_1/bias^AssignVariableOp_17*
dtype0*
_output_shapes
:@
_
Placeholder_18Placeholder*
dtype0*
_output_shapes

:@*
shape
:@
V
AssignVariableOp_18AssignVariableOpdense_2_1/kernelPlaceholder_18*
dtype0
x
ReadVariableOp_18ReadVariableOpdense_2_1/kernel^AssignVariableOp_18*
_output_shapes

:@*
dtype0
W
Placeholder_19Placeholder*
dtype0*
_output_shapes
:*
shape:
T
AssignVariableOp_19AssignVariableOpdense_2_1/biasPlaceholder_19*
dtype0
r
ReadVariableOp_19ReadVariableOpdense_2_1/bias^AssignVariableOp_19*
dtype0*
_output_shapes
:
U
VarIsInitializedOp_10VarIsInitializedOpdense_1_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_11VarIsInitializedOpdense_2_1/bias*
_output_shapes
: 
T
VarIsInitializedOp_12VarIsInitializedOpconv2d_1_1/bias*
_output_shapes
: 
T
VarIsInitializedOp_13VarIsInitializedOpconv2d_3_1/bias*
_output_shapes
: 
V
VarIsInitializedOp_14VarIsInitializedOpconv2d_1_1/kernel*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv2d_2_1/bias*
_output_shapes
: 
V
VarIsInitializedOp_16VarIsInitializedOpconv2d_3_1/kernel*
_output_shapes
: 
V
VarIsInitializedOp_17VarIsInitializedOpconv2d_2_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_18VarIsInitializedOpdense_1_1/bias*
_output_shapes
: 
U
VarIsInitializedOp_19VarIsInitializedOpdense_2_1/kernel*
_output_shapes
: 

init_1NoOp^conv2d_1_1/bias/Assign^conv2d_1_1/kernel/Assign^conv2d_2_1/bias/Assign^conv2d_2_1/kernel/Assign^conv2d_3_1/bias/Assign^conv2d_3_1/kernel/Assign^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_2_1/bias/Assign^dense_2_1/kernel/Assign
њ
init_2NoOp^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_1_1/bias/Assign^conv2d_1_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_2_1/bias/Assign^conv2d_2_1/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_3_1/bias/Assign^conv2d_3_1/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_2_1/bias/Assign^dense_2_1/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_21b7ce7e0f69499aa0ab2176131963c6/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ў
save/SaveV2/tensor_namesConst*с
valueзBдBconv2d_1/biasBconv2d_1/kernelBconv2d_1_1/biasBconv2d_1_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_2_1/biasBconv2d_2_1/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_3_1/biasBconv2d_3_1/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/kernelBdense_2_1/biasBdense_2_1/kernel*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
у
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp#conv2d_1_1/bias/Read/ReadVariableOp%conv2d_1_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp#conv2d_2_1/bias/Read/ReadVariableOp%conv2d_2_1/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp#conv2d_3_1/bias/Read/ReadVariableOp%conv2d_3_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp"dense_1_1/bias/Read/ReadVariableOp$dense_1_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp"dense_2_1/bias/Read/ReadVariableOp$dense_2_1/kernel/Read/ReadVariableOp*"
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
Б
save/RestoreV2/tensor_namesConst*с
valueзBдBconv2d_1/biasBconv2d_1/kernelBconv2d_1_1/biasBconv2d_1_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_2_1/biasBconv2d_2_1/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_3_1/biasBconv2d_3_1/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/kernelBdense_2_1/biasBdense_2_1/kernel*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
я
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
V
save/AssignVariableOpAssignVariableOpconv2d_1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
Z
save/AssignVariableOp_1AssignVariableOpconv2d_1/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
Z
save/AssignVariableOp_2AssignVariableOpconv2d_1_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
\
save/AssignVariableOp_3AssignVariableOpconv2d_1_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
X
save/AssignVariableOp_4AssignVariableOpconv2d_2/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
Z
save/AssignVariableOp_5AssignVariableOpconv2d_2/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Z
save/AssignVariableOp_6AssignVariableOpconv2d_2_1/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
\
save/AssignVariableOp_7AssignVariableOpconv2d_2_1/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
X
save/AssignVariableOp_8AssignVariableOpconv2d_3/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
[
save/AssignVariableOp_9AssignVariableOpconv2d_3/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
\
save/AssignVariableOp_10AssignVariableOpconv2d_3_1/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
^
save/AssignVariableOp_11AssignVariableOpconv2d_3_1/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Y
save/AssignVariableOp_12AssignVariableOpdense_1/biassave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
[
save/AssignVariableOp_13AssignVariableOpdense_1/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
[
save/AssignVariableOp_14AssignVariableOpdense_1_1/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
]
save/AssignVariableOp_15AssignVariableOpdense_1_1/kernelsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Y
save/AssignVariableOp_16AssignVariableOpdense_2/biassave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
[
save/AssignVariableOp_17AssignVariableOpdense_2/kernelsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
[
save/AssignVariableOp_18AssignVariableOpdense_2_1/biassave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
]
save/AssignVariableOp_19AssignVariableOpdense_2_1/kernelsave/Identity_20*
dtype0
Њ
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"
cond_context§њ

dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *Р
activation_4/Relu:0
dropout_1/cond/dropout/Cast:0
%dropout_1/cond/dropout/GreaterEqual:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/mul:0
dropout_1/cond/dropout/mul_1:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
"dropout_1/cond/dropout/truediv/x:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:0<
activation_4/Relu:0%dropout_1/cond/dropout/Shape/Switch:14
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
М
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ш
activation_4/Relu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:00
activation_4/Relu:0dropout_1/cond/Switch_1:0
Ъ
dropout_1_1/cond/cond_textdropout_1_1/cond/pred_id:0dropout_1_1/cond/switch_t:0 *№
activation_4_1/Relu:0
dropout_1_1/cond/dropout/Cast:0
'dropout_1_1/cond/dropout/GreaterEqual:0
'dropout_1_1/cond/dropout/Shape/Switch:1
 dropout_1_1/cond/dropout/Shape:0
dropout_1_1/cond/dropout/mul:0
 dropout_1_1/cond/dropout/mul_1:0
7dropout_1_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_1_1/cond/dropout/random_uniform/max:0
-dropout_1_1/cond/dropout/random_uniform/min:0
-dropout_1_1/cond/dropout/random_uniform/mul:0
-dropout_1_1/cond/dropout/random_uniform/sub:0
)dropout_1_1/cond/dropout/random_uniform:0
dropout_1_1/cond/dropout/rate:0
 dropout_1_1/cond/dropout/sub/x:0
dropout_1_1/cond/dropout/sub:0
$dropout_1_1/cond/dropout/truediv/x:0
"dropout_1_1/cond/dropout/truediv:0
dropout_1_1/cond/pred_id:0
dropout_1_1/cond/switch_t:0@
activation_4_1/Relu:0'dropout_1_1/cond/dropout/Shape/Switch:18
dropout_1_1/cond/pred_id:0dropout_1_1/cond/pred_id:0
д
dropout_1_1/cond/cond_text_1dropout_1_1/cond/pred_id:0dropout_1_1/cond/switch_f:0*њ
activation_4_1/Relu:0
dropout_1_1/cond/Switch_1:0
dropout_1_1/cond/Switch_1:1
dropout_1_1/cond/pred_id:0
dropout_1_1/cond/switch_f:04
activation_4_1/Relu:0dropout_1_1/cond/Switch_1:08
dropout_1_1/cond/pred_id:0dropout_1_1/cond/pred_id:0"Ї
	variables
q
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2conv2d_1/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2conv2d_1/Const:08
q
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2conv2d_2/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2conv2d_2/Const:08
q
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2conv2d_3/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2conv2d_3/Const:08
m
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2dense_1/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2dense_1/Const:08
m
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2dense_2/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2dense_2/Const:08
y
conv2d_1_1/kernel:0conv2d_1_1/kernel/Assign'conv2d_1_1/kernel/Read/ReadVariableOp:0(2conv2d_1_1/random_uniform:08
j
conv2d_1_1/bias:0conv2d_1_1/bias/Assign%conv2d_1_1/bias/Read/ReadVariableOp:0(2conv2d_1_1/Const:08
y
conv2d_2_1/kernel:0conv2d_2_1/kernel/Assign'conv2d_2_1/kernel/Read/ReadVariableOp:0(2conv2d_2_1/random_uniform:08
j
conv2d_2_1/bias:0conv2d_2_1/bias/Assign%conv2d_2_1/bias/Read/ReadVariableOp:0(2conv2d_2_1/Const:08
y
conv2d_3_1/kernel:0conv2d_3_1/kernel/Assign'conv2d_3_1/kernel/Read/ReadVariableOp:0(2conv2d_3_1/random_uniform:08
j
conv2d_3_1/bias:0conv2d_3_1/bias/Assign%conv2d_3_1/bias/Read/ReadVariableOp:0(2conv2d_3_1/Const:08
u
dense_1_1/kernel:0dense_1_1/kernel/Assign&dense_1_1/kernel/Read/ReadVariableOp:0(2dense_1_1/random_uniform:08
f
dense_1_1/bias:0dense_1_1/bias/Assign$dense_1_1/bias/Read/ReadVariableOp:0(2dense_1_1/Const:08
u
dense_2_1/kernel:0dense_2_1/kernel/Assign&dense_2_1/kernel/Read/ReadVariableOp:0(2dense_2_1/random_uniform:08
f
dense_2_1/bias:0dense_2_1/bias/Assign$dense_2_1/bias/Read/ReadVariableOp:0(2dense_2_1/Const:08"Б
trainable_variables
q
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2conv2d_1/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2conv2d_1/Const:08
q
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2conv2d_2/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2conv2d_2/Const:08
q
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2conv2d_3/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2conv2d_3/Const:08
m
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2dense_1/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2dense_1/Const:08
m
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2dense_2/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2dense_2/Const:08
y
conv2d_1_1/kernel:0conv2d_1_1/kernel/Assign'conv2d_1_1/kernel/Read/ReadVariableOp:0(2conv2d_1_1/random_uniform:08
j
conv2d_1_1/bias:0conv2d_1_1/bias/Assign%conv2d_1_1/bias/Read/ReadVariableOp:0(2conv2d_1_1/Const:08
y
conv2d_2_1/kernel:0conv2d_2_1/kernel/Assign'conv2d_2_1/kernel/Read/ReadVariableOp:0(2conv2d_2_1/random_uniform:08
j
conv2d_2_1/bias:0conv2d_2_1/bias/Assign%conv2d_2_1/bias/Read/ReadVariableOp:0(2conv2d_2_1/Const:08
y
conv2d_3_1/kernel:0conv2d_3_1/kernel/Assign'conv2d_3_1/kernel/Read/ReadVariableOp:0(2conv2d_3_1/random_uniform:08
j
conv2d_3_1/bias:0conv2d_3_1/bias/Assign%conv2d_3_1/bias/Read/ReadVariableOp:0(2conv2d_3_1/Const:08
u
dense_1_1/kernel:0dense_1_1/kernel/Assign&dense_1_1/kernel/Read/ReadVariableOp:0(2dense_1_1/random_uniform:08
f
dense_1_1/bias:0dense_1_1/bias/Assign$dense_1_1/bias/Read/ReadVariableOp:0(2dense_1_1/Const:08
u
dense_2_1/kernel:0dense_2_1/kernel/Assign&dense_2_1/kernel/Read/ReadVariableOp:0(2dense_2_1/random_uniform:08
f
dense_2_1/bias:0dense_2_1/bias/Assign$dense_2_1/bias/Read/ReadVariableOp:0(2dense_2_1/Const:08*Ѓ
serving_default
8
image/
conv2d_1_input:0џџџџџџџџџ@@7
scores-
activation_5/Sigmoid:0џџџџџџџџџtensorflow/serving/predict