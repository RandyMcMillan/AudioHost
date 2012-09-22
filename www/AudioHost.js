/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

(function() {
 
 var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
 
 function AudioHost(){}
 
 
 
 AudioHost.prototype.init = function(success, fail, resultType) {
 
 cordovaRef.exec(success, fail, "AudioHost", "init", [resultType]);
 
 }
 
 
 
 
 AudioHost.prototype.callNativeFunction = function(success, fail, resultType) {
 
 cordovaRef.exec(success, fail, "AudioHost", "nativeFunction", [resultType]);
 
 }
 
 AudioHost.prototype.callLoadHostView = function(success, fail, view) {
 
 cordovaRef.exec(success, fail, "AudioHost", "loadHostView", [view]);
 
 }
 
 
 AudioHost.prototype.nativePluginResultHandler = function( result ) { console.log(success); }
 
 
 AudioHost.prototype.nativePluginErrorHandler = function( error ) { console.log(error); }
 
 
 
 AudioHost.install = function()
 {
 if ( !window.plugins ) {
 window.plugins = {};
 }
 if ( !window.plugins.AudioHost ) {
 window.plugins.AudioHost = new AudioHost();
 }
 }
 
 if (cordovaRef && cordovaRef.addConstructor) {
 cordovaRef.addConstructor(AudioHost.install);
 } else {
 console.log("AudioHost Cordova Plugin could not be installed.");
 return null;
 }
 
 
 })();


/*
 var AudioHost = {
 
 callNativeFunction: function (success, fail, resultType) {
 return cordova.exec(success, fail, "AudioHost", "nativeFunction", [resultType]);
 }
 }
 */





