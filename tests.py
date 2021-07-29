#!/usr/bin/env python3
from grip import main
import sys, os
PORT = str(sys.argv[1])
main(argv=['-b', PORT])
