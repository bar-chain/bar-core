Bar Core
==============

Getting Started
---------------

We recommend building on Ubuntu 16.04 LTS (64-bit) 

**Build Dependencies**:

    sudo apt-get update
    sudo apt-get install autoconf cmake make automake libtool git libboost-all-dev libssl-dev g++ libcurl4-openssl-dev

**Build Script:**

    git clone https://github.com/bar-chain/bar-core.git
    cd bar-core
    git checkout master # may substitute "master" with current release tag
    git submodule update --init --recursive
    cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo .
    make

**Upgrade Script** (prepend to the Build Script above if you built a prior release):

    git remote set-url origin https://github.com/bar-chain/bar-core.git
    git checkout master
    git remote set-head origin --auto
    git pull
    git submodule update --init --recursive # this command may fail
    git submodule sync --recursive
    git submodule update --init --recursive

**NOTE:** Bar Core requires a [Boost](http://www.boost.org/) version in the range [1.57 - 1.65.1]. Versions earlier than
1.57 or newer than 1.65.1 are NOT supported. If your system's Boost version is newer, then you will need to manually build
an older version of Boost and specify it to CMake using `DBOOST_ROOT`.

**NOTE:** Bar Core requires a 64-bit operating system to build, and will not build on a 32-bit OS.

**NOTE:** Bar Core now supports Ubuntu 18.04 LTS

**NOTE:** Bar Core now supports OpenSSL 1.1.0

**After Building**, the `witness_node` can be launched with:

    ./programs/witness_node/witness_node

The node will automatically create a data directory including a config file. It may take several hours to fully synchronize
the blockchain. After syncing, you can exit the node using Ctrl+C and setup the command-line wallet by editing
`witness_node_data_dir/config.ini` as follows:

    rpc-endpoint = 127.0.0.1:8090


After starting the witness node again, in a separate terminal you can run:

    ./programs/cli_wallet/cli_wallet

Set your inital password:

    >>> set_password <PASSWORD>
    >>> unlock <PASSWORD>

To import your initial balance:

    >>> import_balance <ACCOUNT NAME> [<WIF_KEY>] true



License
-------
Bar Core is under the MIT license. See [LICENSE](https://github.com/bar-chain/bar-core/blob/master/LICENSE.txt)
for more information.
