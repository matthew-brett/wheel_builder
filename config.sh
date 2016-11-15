# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "Pre build installs"
    CDN_URL=https://3f23b170c54c2533c070-1c8a9b3114517dc5fe17b7c3f8c63a43.ssl.cf2.rackcdn.com
    pip install -f $CDN_URL netCDF4
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    make test
}

