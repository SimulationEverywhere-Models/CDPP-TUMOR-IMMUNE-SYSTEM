 #include (TIS.inc)

[top]
components : TIS

[TIS]
type : cell
dim : (21,21)
delay : transport
defaultDelayTime : #Macro(d)
border : wrapped
initialvalue : -1
localtransition : tau

neighbors : TIS(-2,-2) TIS(-2,-1) TIS(-2,0) TIS(-2,1) TIS(-2,2)
neighbors : TIS(-1,-2) TIS(-1,-1) TIS(-1,0) TIS(-1,1) TIS(-1,2)
neighbors : TIS(0,-2)  TIS(0,-1)  TIS(0,0)  TIS(0,1)  TIS(0,2)
neighbors : TIS(1,-2)  TIS(1,-1)  TIS(1,0)  TIS(1,1)  TIS(1,2)
neighbors : TIS(2,-2)  TIS(2,-1)  TIS(2,0)  TIS(2,1)  TIS(2,2)

[tau]
rule : 2 #Macro(d) { ((0,0) = 0) and (cellpos(0) = 10) and (cellpos(1) = 10) }

rule : { if(uniform(0, 1) < #Macro(p_initial), 1, 0) } #Macro(d) { (0,0) = -1 }

rule : { if(trunc((0,0)) = 0, if(((if((-1,0) = 1.0625, 1, 0) + if((-1,-1) = 1.125, 1, 0) + if((0,-1) = 1.1875, 1, 0) + if((1,-1) = 1.25, 1, 0) + if((1,0) = 1.3125, 1, 0) + if((1,1) = 1.375, 1, 0) + if((0,1) = 1.4375, 1, 0) + if((-1,1) = 1.5, 1, 0))=1), if(((if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0) + if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)) > 0), 1 + if((uniform(0, 1)) < if(trunc((1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0)), 0), 0.5, if((uniform(0, 1)) < if(trunc((0,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0)), 0), 0.4375, if((uniform(0, 1)) < if(trunc((-1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0)), 0), 0.375, if((uniform(0, 1)) < if(trunc((-1,0)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0)), 0), 0.3125, if((uniform(0, 1)) < if(trunc((-1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)), 0), 0.25, if((uniform(0, 1)) < if(trunc((0,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0)), 0), 0.1875, if((uniform(0, 1)) < if(trunc((1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0)), 0), 0.125, 0.0625))))))), if(((uniform(0, 1)) < #Macro(p_moving)), 1 + ((trunc(uniform(0, 8)) + 1)*0.0625), 1)), if(((if((-1,0) = 2.0625, 1, 0) + if((-1,-1) = 2.125, 1, 0) + if((0,-1) = 2.1875, 1, 0) + if((1,-1) = 2.25, 1, 0) + if((1,0) = 2.3125, 1, 0) + if((1,1) = 2.375, 1, 0) + if((0,1) = 2.4375, 1, 0) + if((-1,1) = 2.5, 1, 0)) > 0), if(((uniform(0, 1)) < #Macro(p_dividing)), if(((if(trunc((-1,0)) = 0, 1, 0) + if(trunc((-1,-1)) = 0, 1, 0) + if(trunc((0,-1)) = 0, 1, 0) + if(trunc((1,-1)) = 0, 1, 0) + if(trunc((1,0)) = 0, 1, 0) + if(trunc((1,1)) = 0, 1, 0) + if(trunc((0,1)) = 0, 1, 0) + if(trunc((-1,1)) = 0, 1, 0)) = 0), 3, 2 + ((trunc(uniform(0, 8)) + 1)*0.0625)), 2), if((((if(trunc((-1,0)) = 0, 1, 0) + if(trunc((-1,-1)) = 0, 1, 0) + if(trunc((0,-1)) = 0, 1, 0) + if(trunc((1,-1)) = 0, 1, 0) + if(trunc((1,0)) = 0, 1, 0) + if(trunc((1,1)) = 0, 1, 0) + if(trunc((0,1)) = 0, 1, 0) + if(trunc((-1,1)) = 0, 1, 0)) = 8) and ((uniform(0, 1)) < #Macro(p_resisting))), if(((if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0) + if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)) > 0), 1 + if((uniform(0, 1)) < if(trunc((1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0)), 0), 0.5, if((uniform(0, 1)) < if(trunc((0,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0)), 0), 0.4375, if((uniform(0, 1)) < if(trunc((-1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0)), 0), 0.375, if((uniform(0, 1)) < if(trunc((-1,0)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0)), 0), 0.3125, if((uniform(0, 1)) < if(trunc((-1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)), 0), 0.25, if((uniform(0, 1)) < if(trunc((0,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0)), 0), 0.1875, if((uniform(0, 1)) < if(trunc((1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0)), 0), 0.125, 0.0625))))))), if(((uniform(0, 1)) < #Macro(p_moving)), 1 + ((trunc(uniform(0, 8)) + 1)*0.0625), 1)), 0))), if(trunc((0,0)) = 1, if((((remainder((0,0), 1)*16) != 0) and ((trunc(if((0,0) = 1.0625, (1,0), if((0,0) = 1.125, (1,1), if((0,0) = 1.1875, (0,1), if((0,0) = 1.25, (-1,1), if((0,0) = 1.3125, (-1,0), if((0,0) = 1.375, (-1,-1), if((0,0) = 1.4375, (0,-1), (1,-1))))))))) = 0) or (trunc(if((0,0) = 1.0625, (1,0), if((0,0) = 1.125, (1,1), if((0,0) = 1.1875, (0,1), if((0,0) = 1.25, (-1,1), if((0,0) = 1.3125, (-1,0), if((0,0) = 1.375, (-1,-1), if((0,0) = 1.4375, (0,-1), (1,-1))))))))) = 2)) and (if((0,0) = 1.0625, (if((0,0) = 1.0625, 1, 0) + if((0,-1) = 1.125, 1, 0) + if((1,-1) = 1.1875, 1, 0) + if((2,-1) = 1.25, 1, 0) + if((2,0) = 1.3125, 1, 0) + if((2,1) = 1.375, 1, 0) + if((1,1) = 1.4375, 1, 0) + if((0,1) = 1.5, 1, 0)), if((0,0) = 1.125, (if((0,1) = 1.0625, 1, 0) + if((0,0) = 1.125, 1, 0) + if((1,0) = 1.1875, 1, 0) + if((2,0) = 1.25, 1, 0) + if((2,1) = 1.3125, 1, 0) + if((2,2) = 1.375, 1, 0) + if((1,2) = 1.4375, 1, 0) + if((0,2) = 1.5, 1, 0)), if((0,0) = 1.1875, (if((-1,1) = 1.0625, 1, 0) + if((-1,0) = 1.125, 1, 0) + if((0,0) = 1.1875, 1, 0) + if((1,0) = 1.25, 1, 0) + if((1,1) = 1.3125, 1, 0) + if((1,2) = 1.375, 1, 0) + if((0,2) = 1.4375, 1, 0) + if((-1,2) = 1.5, 1, 0)), if((0,0) = 1.25, (if((-2,1) = 1.0625, 1, 0) + if((-2,0) = 1.125, 1, 0) + if((-1,0) = 1.1875, 1, 0) + if((0,0) = 1.25, 1, 0) + if((0,1) = 1.3125, 1, 0) + if((0,2) = 1.375, 1, 0) + if((-1,2) = 1.4375, 1, 0) + if((-2,2) = 1.5, 1, 0)), if((0,0) = 1.3125, (if((-2,0) = 1.0625, 1, 0) + if((-2,-1) = 1.125, 1, 0) + if((-1,-1) = 1.1875, 1, 0) + if((0,-1) = 1.25, 1, 0) + if((0,0) = 1.3125, 1, 0) + if((0,1) = 1.375, 1, 0) + if((-1,1) = 1.4375, 1, 0) + if((-2,1) = 1.5, 1, 0)), if((0,0) = 1.375, (if((-2,-1) = 1.0625, 1, 0) + if((-2,-2) = 1.125, 1, 0) + if((-1,-2) = 1.1875, 1, 0) + if((0,-2) = 1.25, 1, 0) + if((0,-1) = 1.3125, 1, 0) + if((0,0) = 1.375, 1, 0) + if((-1,0) = 1.4375, 1, 0) + if((-2,0) = 1.5, 1, 0)), if((0,0) = 1.4375, (if((-1,-1) = 1.0625, 1, 0) + if((-1,-2) = 1.125, 1, 0) + if((0,-2) = 1.1875, 1, 0) + if((1,-2) = 1.25, 1, 0) + if((1,-1) = 1.3125, 1, 0) + if((1,0) = 1.375, 1, 0) + if((0,0) = 1.4375, 1, 0) + if((-1,0) = 1.5, 1, 0)), (if((0,-1) = 1.0625, 1, 0) + if((0,-2) = 1.125, 1, 0) + if((1,-2) = 1.1875, 1, 0) + if((2,-2) = 1.25, 1, 0) + if((2,-1) = 1.3125, 1, 0) + if((2,0) = 1.375, 1, 0) + if((1,0) = 1.4375, 1, 0) + if((0,0) = 1.5, 1, 0))))))))) = 1)), 0, if(((if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0) + if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)) > 0), 1 + if((uniform(0, 1)) < if(trunc((1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0)), 0), 0.5, if((uniform(0, 1)) < if(trunc((0,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0)), 0), 0.4375, if((uniform(0, 1)) < if(trunc((-1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0)), 0), 0.375, if((uniform(0, 1)) < if(trunc((-1,0)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0)), 0), 0.3125, if((uniform(0, 1)) < if(trunc((-1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)), 0), 0.25, if((uniform(0, 1)) < if(trunc((0,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0)), 0), 0.1875, if((uniform(0, 1)) < if(trunc((1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0)), 0), 0.125, 0.0625))))))), if(((uniform(0, 1)) < #Macro(p_moving)), 1 + ((trunc(uniform(0, 8)) + 1)*0.0625), 1))), if(trunc((0,0)) = 2, if((((if((-1,0) = 1.0625, 1, 0) + if((-1,-1) = 1.125, 1, 0) + if((0,-1) = 1.1875, 1, 0) + if((1,-1) = 1.25, 1, 0) + if((1,0) = 1.3125, 1, 0) + if((1,1) = 1.375, 1, 0) + if((0,1) = 1.4375, 1, 0) + if((-1,1) = 1.5, 1, 0)) >= 1) and ((uniform(0, 1)) < #Macro(p_curing))), if(((if((-1,0) = 1.0625, 1, 0) + if((-1,-1) = 1.125, 1, 0) + if((0,-1) = 1.1875, 1, 0) + if((1,-1) = 1.25, 1, 0) + if((1,0) = 1.3125, 1, 0) + if((1,1) = 1.375, 1, 0) + if((0,1) = 1.4375, 1, 0) + if((-1,1) = 1.5, 1, 0)) > 1), 0, if(((if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0) + if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)) > 0), 1 + if((uniform(0, 1)) < if(trunc((1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0)), 0), 0.5, if((uniform(0, 1)) < if(trunc((0,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0)), 0), 0.4375, if((uniform(0, 1)) < if(trunc((-1,-1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0)), 0), 0.375, if((uniform(0, 1)) < if(trunc((-1,0)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0) + if(trunc((-1,0)) = 2, 1, 0)), 0), 0.3125, if((uniform(0, 1)) < if(trunc((-1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)), 0), 0.25, if((uniform(0, 1)) < if(trunc((0,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0)), 0), 0.1875, if((uniform(0, 1)) < if(trunc((1,1)) = 2, 1.0/(if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0)), 0), 0.125, 0.0625))))))), if(((uniform(0, 1)) < #Macro(p_moving)), 1 + ((trunc(uniform(0, 8)) + 1)*0.0625), 1))), if(((uniform(0, 1)) < #Macro(p_dividing)), if(((if(trunc((-1,0)) = 0, 1, 0) + if(trunc((-1,-1)) = 0, 1, 0) + if(trunc((0,-1)) = 0, 1, 0) + if(trunc((1,-1)) = 0, 1, 0) + if(trunc((1,0)) = 0, 1, 0) + if(trunc((1,1)) = 0, 1, 0) + if(trunc((0,1)) = 0, 1, 0) + if(trunc((-1,1)) = 0, 1, 0)) = 0), 3, 2 + ((trunc(uniform(0, 8)) + 1)*0.0625)), 2)), if(trunc((0,0)) = 3, if((((if(trunc((-1,0)) = 2, 1, 0) + if(trunc((-1,-1)) = 2, 1, 0) + if(trunc((0,-1)) = 2, 1, 0) + if(trunc((1,-1)) = 2, 1, 0) + if(trunc((1,0)) = 2, 1, 0) + if(trunc((1,1)) = 2, 1, 0) + if(trunc((0,1)) = 2, 1, 0) + if(trunc((-1,1)) = 2, 1, 0)) = 0) and ((uniform(0, 1)) < #Macro(p_dying))), 4, 3), if(trunc((0,0)) = 4, 4, (0,0)))))) } #Macro(d) { t }

