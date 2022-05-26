#!/usr/bin/env bash

function _InstallSlack {
        url='https://slack.com/ssb/download-osx-universal'
        curl -L "$url" -o /tmp/slack.dmg
        hdiutil attach /tmp/slack.dmg -mountpoint /Volumes/Slack
        cp -rf /Volumes/Slack/*.app /Applications/
        hdiutil detach /Volumes/Slack && rm -f /tmp/slack.dmg
}

_InstallSlack
