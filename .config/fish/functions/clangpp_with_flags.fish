function clangpp_with_flags -d "Wrap clang++ to include CXX and LD flags"
    command /opt/clang+llvm/clang+llvm-17.0.6/bin/clang++ $argv -isysroot $(xcrun -show-sdk-path) -L$(xcrun -show-sdk-path)/usr/lib
end
