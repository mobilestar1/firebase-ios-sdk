#!/bin/bash
xcov --workspace Example/Firebase.xcworkspace --scheme AllUnitTests_iOS --output_directory Metrics --json_report
pushd Metrics
swift build
.build/debug/Metrics -c report.json -p 1000
popd
