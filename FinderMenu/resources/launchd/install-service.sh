#!/bin/bash

######################################################
# Created by Samiyuru Senarathne on 1/22/20.
# Copyright Samiyuru Senarathne 2020
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY
# OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
# LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
# OR OTHER LIABILITY, WHETHER IN AN ACTION OF
# CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
# OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# Install launchd given by the paramter.
# Param is the plist id.
# The plist should be already copied to
#       ~/Library/LaunchAgents
######################################################

id="$1"
plist="$id.plist"
cd ~/Library/LaunchAgents
launchctl unload "$plist"
launchctl load "$plist"
launchctl list | grep "$id"
