```
cd OriginalPackage
mkdir build
cd build
cmake ..
sudo make install
```

```
cd DependentPackage
mkdir build
cd build
cmake ..
```

Running cmake .. in the dependent package will call the original executable with the given input parameters.