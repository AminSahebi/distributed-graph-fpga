"""
   Copyright (c) 2020-2021 Amin Sahebi, 
   University of Siena, University of Florence.

   This code generates the Different Graph based on options and plot the
   degree distribution and save the output file using SNAP Stanford
   resources. http://snap.stanford.edu/

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
"""

import numpy as np
import snap
import sys
import matplotlib.pyplot as plt
from matplotlib import ticker

#UGraph2 = snap.GenRndPowerLaw (1000000, 2)
#x=[]
#y=[]
#for NI in UGraph2.Nodes():
#    print("node: %d, out-degree %d, in-degree %d" % (NI.GetId(), NI.GetOutDeg(), NI.GetInDeg()))
#    x.append(NI.GetOutDeg())
#    y.append(NI.GetId())
#UGraph2.PlotInDegDistr("RndPowerLawGraph", "PowerLaw graph - in-degree Distribution")
#UGraph2.PlotOutDegDistr("RndPowerLawGraph", "PowerLaw graph - out-degree Distribution")
############### directed random graph ########################
#G2 = snap.GenRndGnm(snap.TNGraph, 100000, 100000)
#CntV = G2.GetOutDegCnt()
######################### Directed Network ###################
Network = snap.GenRndGnm(snap.TNEANet, 990000000, 800000000)
CntV = Network.GetInDegCnt()
# Make Plot
# to see the power law (out-degree distribution) of the given network
# uncomment this block.
x = []
y = []
for p in CntV:
    #print("degree %d: count %d" % (p.GetVal1(), p.GetVal2()))
    x.append(p.GetVal1())
    y.append(p.GetVal2())
Network.PlotInDegDistr("RndPowerLawGraph", "PowerLaw graph - in-degree Distribution")
Network.PlotOutDegDistr("RndPowerLawGraph", "PowerLaw graph - out-degree Distribution")
########################### R-MAT ############################
#Rnd = snap.TRnd()
#Graph = snap.GenRMat(2000000, 4000000, .25, .45, .2, Rnd)
#Graph.PlotInDegDistr("R-MAT", "PowerLaw graph - in-degree Distribution")
"""
x = []
y = []
for EI in Graph.Edges():
#    print("edge: (%d, %d)" % (EI.GetSrcNId(), EI.GetDstNId()))
    x.append(EI.GetSrcNId())
    y.append(EI.GetDstNId())
#############################################################
"""
#TODO 
#handle user options

# if scatter dots are preferable use next line
# Make the plot

fig = plt.figure()
ax = fig.add_subplot()
# Add xticks on the middle of the group bars
# plt.xlabel('group', fontweight='bold')
# ax.set_yscale('log')
ax.set_axisbelow(True)
# ax.yaxis.grid(which="minor", color='lightgray', linestyle='dashed')
# plt.ticklabel_format(axis='y', style='sci', scilimits=(4,4))
formatter = ticker.ScalarFormatter(useMathText=True)
formatter.set_scientific(True) 
formatter.set_powerlimits((-1,1)) 
ax.yaxis.set_major_formatter(formatter)
plt.xlabel("degree")
plt.ylabel("Network Power Law distribution") #or out-degree distribution
# Create legend & Show graphic
# plt.legend(['A simple line'])
plt.plot(x,y)
#plt.scatter(x,y, s=12, color='k', label='degree')
#plt.legend()
#plt.show()
plt.savefig("plot.pdf", dpi=1000, format='pdf')
#
snap.SaveEdgeList(Network, "Network.txt", "Save as tab-separated list of edges")


def print_help():
    print ('please insert correct inputs as follows:')
    print ('\n-n \t\t<num of nodes> (default is 1000)')
    print ('-e \t\t<number of edges> (default is 20000)')
    print ('-d \t\t(DirectedRndGraph, Network, PowerLawGraph by default)')
    print ('-MaxInDeg \t<max in degree of nodes> (only used with directed flag, default is 10)')
    print ('-MaxOutDeg \t<max out degree of nodes> (only used with directed flag, default is 10)')
    print ('-MinInDeg \t<min in degree of nodes> (only used with directed flag, default is 1)')
    print ('-MinInDeg \t<min out degree of nodes> (only used with directed flag, default is 1)')
    print ('-o \t\t<path to output file> (default is "graph.txt")')
    print ('-h \t\thelp')
    print ('-P \t\tproduce plot print outouts')
    sys.exit(0)

def check_DirectedRndGraph(directed, arg, args, i, flag):
    if directed == flag:
        try:
            arg = int(args[i+1])
            if arg < 0:
                print_help()
        except:
            print_help()
    else:
        print_help()

    return arg
def check_attrs(arg, args, i, flag):
    try:
        arg = int(args[i+1])
        if arg < flag:
            print_help()
    except:
        print_help()

    return arg

def process_args(args):
    # default initialization
    num_nodes = 1000
    directed = 1
    MaxInDeg = 1
    MaxOutDeg = 1
    MinInDeg = 1
    MinInDeg = 1
    edges = 20000
    type = "Network"
    output = "graph"

    # process rest of the args
    i = 0
    while i < len(args): 
        if args[i] == "-n":
            try:
                num_nodes = int(args[i+1])
                if num_nodes < 1:
                    print_help()
            except:
                print_help()
        elif args[i] == "-e":
            try:
                type = args[i+1]
            except:
                print_help()
        elif args[i] == "-o":
            try:
                output = args[i+1]
                f = open(output, 'w')
                f.close()
            except:
                print_help()
        else:
            print_help()
        i += 2
    if type != "DirectedRndGraph" and type != "Network" and type != "PowerLawGraph":
        print_help()

    return type, output, num_nodes

def get_args():
    args = []
    for arg in sys.argv:
        args.append(arg)
        if len(sys.argv)==1:
            print_help()
    return args[1:]


if __name__ == "__main__":
    args = get_args()
    type, output, num_nodes, directed = process_args(args)
