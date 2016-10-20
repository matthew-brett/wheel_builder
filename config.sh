# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "Running pre-build installs"
    if [ -z "$IS_OSX" ]; then
        echo "Installing HDF5 libs"
        apt install libhdf5-serial-dev libnetcdf-dev
    fi
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    make test
}

