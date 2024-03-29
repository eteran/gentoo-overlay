# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

inherit npm

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://github.com/pritunl/pritunl-client-electron/archive/${PV}.tar.gz -> pritunl-client-electron-${PV}.tar.gz
	https://registry.npmjs.org/abbrev/-/abbrev-1.1.1.tgz
	https://registry.npmjs.org/ajv/-/ajv-6.12.6.tgz
	https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz
	https://registry.npmjs.org/ansi-styles/-/ansi-styles-3.2.1.tgz
	https://registry.npmjs.org/aproba/-/aproba-1.2.0.tgz
	https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz
	https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz
	https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz
	https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz
	https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.5.tgz
	https://registry.npmjs.org/array-find-index/-/array-find-index-1.0.2.tgz
	https://registry.npmjs.org/asar/-/asar-2.1.0.tgz
	https://registry.npmjs.org/asn1/-/asn1-0.2.4.tgz
	https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz
	https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz
	https://registry.npmjs.org/async-limiter/-/async-limiter-1.0.1.tgz
	https://registry.npmjs.org/author-regex/-/author-regex-1.0.0.tgz
	https://registry.npmjs.org/aws4/-/aws4-1.10.1.tgz
	https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.7.0.tgz
	https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz
	https://registry.npmjs.org/base64-js/-/base64-js-1.3.1.tgz
	https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.2.tgz
	https://registry.npmjs.org/bluebird/-/bluebird-3.7.2.tgz
	https://registry.npmjs.org/boolean/-/boolean-3.0.1.tgz
	https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz
	https://registry.npmjs.org/buffer-alloc/-/buffer-alloc-1.2.0.tgz
	https://registry.npmjs.org/buffer-alloc-unsafe/-/buffer-alloc-unsafe-1.1.0.tgz
	https://registry.npmjs.org/buffer-crc32/-/buffer-crc32-0.2.13.tgz
	https://registry.npmjs.org/buffer-fill/-/buffer-fill-1.0.0.tgz
	https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.1.tgz
	https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-2.0.0.tgz
	https://registry.npmjs.org/get-stream/-/get-stream-5.2.0.tgz
	https://registry.npmjs.org/cacheable-request/-/cacheable-request-6.1.0.tgz
	https://registry.npmjs.org/camelcase/-/camelcase-2.1.1.tgz
	https://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz
	https://registry.npmjs.org/caseless/-/caseless-0.12.0.tgz
	https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz
	https://registry.npmjs.org/chalk/-/chalk-2.4.2.tgz
	https://registry.npmjs.org/chownr/-/chownr-1.1.4.tgz
	https://registry.npmjs.org/chromium-pickle-js/-/chromium-pickle-js-0.2.0.tgz
	https://registry.npmjs.org/cli-cursor/-/cli-cursor-2.1.0.tgz
	https://registry.npmjs.org/cli-spinners/-/cli-spinners-2.5.0.tgz
	https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz
	https://registry.npmjs.org/ansi-regex/-/ansi-regex-4.1.0.tgz
	https://registry.npmjs.org/string-width/-/string-width-3.1.0.tgz
	https://registry.npmjs.org/strip-ansi/-/strip-ansi-5.2.0.tgz
	https://registry.npmjs.org/cliui/-/cliui-5.0.0.tgz
	https://registry.npmjs.org/clone/-/clone-1.0.4.tgz
	https://registry.npmjs.org/clone-response/-/clone-response-1.0.2.tgz
	https://registry.npmjs.org/code-point-at/-/code-point-at-1.1.0.tgz
	https://registry.npmjs.org/color-convert/-/color-convert-1.9.3.tgz
	https://registry.npmjs.org/color-name/-/color-name-1.1.3.tgz
	https://registry.npmjs.org/colors/-/colors-1.4.0.tgz
	https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.8.tgz
	https://registry.npmjs.org/commander/-/commander-2.20.3.tgz
	https://registry.npmjs.org/compare-version/-/compare-version-0.1.2.tgz
	https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz
	https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz
	https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz
	https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz
	https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz
	https://registry.npmjs.org/concat-stream/-/concat-stream-1.6.2.tgz
	https://registry.npmjs.org/config-chain/-/config-chain-1.1.12.tgz
	https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz
	https://registry.npmjs.org/core-js/-/core-js-3.6.5.tgz
	https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz
	https://registry.npmjs.org/cross-zip/-/cross-zip-2.1.6.tgz
	https://registry.npmjs.org/cuint/-/cuint-0.2.2.tgz
	https://registry.npmjs.org/currently-unhandled/-/currently-unhandled-0.4.1.tgz
	https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz
	https://registry.npmjs.org/debug/-/debug-3.2.6.tgz
	https://registry.npmjs.org/decamelize/-/decamelize-1.2.0.tgz
	https://registry.npmjs.org/decompress-response/-/decompress-response-3.3.0.tgz
	https://registry.npmjs.org/deep-extend/-/deep-extend-0.6.0.tgz
	https://registry.npmjs.org/defaults/-/defaults-1.0.3.tgz
	https://registry.npmjs.org/defer-to-connect/-/defer-to-connect-1.1.3.tgz
	https://registry.npmjs.org/object-keys/-/object-keys-1.1.1.tgz
	https://registry.npmjs.org/define-properties/-/define-properties-1.1.3.tgz
	https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz
	https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz
	https://registry.npmjs.org/detect-libc/-/detect-libc-1.0.3.tgz
	https://registry.npmjs.org/detect-node/-/detect-node-2.0.4.tgz
	https://registry.npmjs.org/duplexer3/-/duplexer3-0.1.4.tgz
	https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.2.tgz
	https://registry.npmjs.org/fs-extra/-/fs-extra-8.1.0.tgz
	https://registry.npmjs.org/debug/-/debug-4.2.0.tgz
	https://registry.npmjs.org/env-paths/-/env-paths-2.2.0.tgz
	https://registry.npmjs.org/sumchecker/-/sumchecker-3.0.1.tgz
	https://registry.npmjs.org/@electron/get/-/get-1.12.2.tgz
	https://registry.npmjs.org/electron/-/electron-6.0.10.tgz
	https://registry.npmjs.org/electron-download/-/electron-download-4.1.1.tgz
	https://registry.npmjs.org/fs-extra/-/fs-extra-8.1.0.tgz
	https://registry.npmjs.org/debug/-/debug-4.2.0.tgz
	https://registry.npmjs.org/electron-notarize/-/electron-notarize-0.1.1.tgz
	https://registry.npmjs.org/ms/-/ms-2.0.0.tgz
	https://registry.npmjs.org/debug/-/debug-2.6.9.tgz
	https://registry.npmjs.org/electron-osx-sign/-/electron-osx-sign-0.4.17.tgz
	https://registry.npmjs.org/fs-extra/-/fs-extra-8.1.0.tgz
	https://registry.npmjs.org/debug/-/debug-4.2.0.tgz
	https://registry.npmjs.org/semver/-/semver-6.3.0.tgz
	https://registry.npmjs.org/electron-packager/-/electron-packager-14.0.6.tgz
	https://registry.npmjs.org/fs-extra/-/fs-extra-7.0.1.tgz
	https://registry.npmjs.org/debug/-/debug-4.2.0.tgz
	https://registry.npmjs.org/electron-rebuild/-/electron-rebuild-1.8.6.tgz
	https://registry.npmjs.org/emoji-regex/-/emoji-regex-7.0.3.tgz
	https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz
	https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.4.tgz
	https://registry.npmjs.org/env-paths/-/env-paths-1.0.0.tgz
	https://registry.npmjs.org/error-ex/-/error-ex-1.3.2.tgz
	https://registry.npmjs.org/es6-error/-/es6-error-4.1.1.tgz
	https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-4.0.0.tgz
	https://registry.npmjs.org/extend/-/extend-3.0.2.tgz
	https://registry.npmjs.org/ms/-/ms-2.0.0.tgz
	https://registry.npmjs.org/debug/-/debug-2.6.9.tgz
	https://registry.npmjs.org/extract-zip/-/extract-zip-1.7.0.tgz
	https://registry.npmjs.org/extsprintf/-/extsprintf-1.3.0.tgz
	https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz
	https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz
	https://registry.npmjs.org/fd-slicer/-/fd-slicer-1.1.0.tgz
	https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz
	https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz
	https://registry.npmjs.org/fs-extra/-/fs-extra-7.0.1.tgz
	https://registry.npmjs.org/debug/-/debug-4.2.0.tgz
	https://registry.npmjs.org/flora-colossus/-/flora-colossus-1.0.1.tgz
	https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz
	https://registry.npmjs.org/form-data/-/form-data-2.3.3.tgz
	https://registry.npmjs.org/fs-extra/-/fs-extra-4.0.3.tgz
	https://registry.npmjs.org/fs-minipass/-/fs-minipass-1.2.7.tgz
	https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz
	https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz
	https://registry.npmjs.org/galactus/-/galactus-0.2.1.tgz
	https://registry.npmjs.org/gauge/-/gauge-2.7.4.tgz
	https://registry.npmjs.org/get-caller-file/-/get-caller-file-2.0.5.tgz
	https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-2.0.0.tgz
	https://registry.npmjs.org/ms/-/ms-2.0.0.tgz
	https://registry.npmjs.org/debug/-/debug-2.6.9.tgz
	https://registry.npmjs.org/load-json-file/-/load-json-file-2.0.0.tgz
	https://registry.npmjs.org/find-up/-/find-up-2.1.0.tgz
	https://registry.npmjs.org/strip-bom/-/strip-bom-3.0.0.tgz
	https://registry.npmjs.org/read-pkg/-/read-pkg-2.0.0.tgz
	https://registry.npmjs.org/path-type/-/path-type-2.0.0.tgz
	https://registry.npmjs.org/get-package-info/-/get-package-info-1.0.0.tgz
	https://registry.npmjs.org/getpass/-/getpass-0.1.7.tgz
	https://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz
	https://registry.npmjs.org/get-stream/-/get-stream-4.1.0.tgz
	https://registry.npmjs.org/glob/-/glob-7.1.6.tgz
	https://registry.npmjs.org/semver/-/semver-7.3.2.tgz
	https://registry.npmjs.org/global-agent/-/global-agent-2.1.12.tgz
	https://registry.npmjs.org/globalthis/-/globalthis-1.0.1.tgz
	https://registry.npmjs.org/global-tunnel-ng/-/global-tunnel-ng-2.7.1.tgz
	https://registry.npmjs.org/got/-/got-9.6.0.tgz
	https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.4.tgz
	https://registry.npmjs.org/har-schema/-/har-schema-2.0.0.tgz
	https://registry.npmjs.org/har-validator/-/har-validator-5.1.5.tgz
	https://registry.npmjs.org/has/-/has-1.0.3.tgz
	https://registry.npmjs.org/has-flag/-/has-flag-3.0.0.tgz
	https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz
	https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.8.8.tgz
	https://registry.npmjs.org/http-cache-semantics/-/http-cache-semantics-4.1.0.tgz
	https://registry.npmjs.org/http-signature/-/http-signature-1.2.0.tgz
	https://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz
	https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz
	https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz
	https://registry.npmjs.org/ini/-/ini-1.3.5.tgz
	https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz
	https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz
	https://registry.npmjs.org/isbinaryfile/-/isbinaryfile-3.0.3.tgz
	https://registry.npmjs.org/is-core-module/-/is-core-module-2.0.0.tgz
	https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz
	https://registry.npmjs.org/is-finite/-/is-finite-1.1.0.tgz
	https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz
	https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz
	https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz
	https://registry.npmjs.org/is-utf8/-/is-utf8-0.2.1.tgz
	https://registry.npmjs.org/jquery/-/jquery-3.4.1.tgz
	https://registry.npmjs.org/jsbn/-/jsbn-0.1.1.tgz
	https://registry.npmjs.org/json-buffer/-/json-buffer-3.0.0.tgz
	https://registry.npmjs.org/jsonfile/-/jsonfile-4.0.0.tgz
	https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz
	https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz
	https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz
	https://registry.npmjs.org/jsprim/-/jsprim-1.4.1.tgz
	https://registry.npmjs.org/junk/-/junk-3.1.0.tgz
	https://registry.npmjs.org/keyv/-/keyv-3.1.0.tgz
	https://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz
	https://registry.npmjs.org/locate-path/-/locate-path-2.0.0.tgz
	https://registry.npmjs.org/lodash/-/lodash-4.17.20.tgz
	https://registry.npmjs.org/lodash.assign/-/lodash.assign-4.2.0.tgz
	https://registry.npmjs.org/lodash.get/-/lodash.get-4.4.2.tgz
	https://registry.npmjs.org/log-symbols/-/log-symbols-2.2.0.tgz
	https://registry.npmjs.org/loud-rejection/-/loud-rejection-1.6.0.tgz
	https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-1.0.1.tgz
	https://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz
	https://registry.npmjs.org/matcher/-/matcher-3.0.0.tgz
	https://registry.npmjs.org/meow/-/meow-3.7.0.tgz
	https://registry.npmjs.org/mime-db/-/mime-db-1.44.0.tgz
	https://registry.npmjs.org/mime-types/-/mime-types-2.1.27.tgz
	https://registry.npmjs.org/mimic-fn/-/mimic-fn-1.2.0.tgz
	https://registry.npmjs.org/mimic-response/-/mimic-response-1.0.1.tgz
	https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz
	https://registry.npmjs.org/minimist/-/minimist-1.2.5.tgz
	https://registry.npmjs.org/minipass/-/minipass-2.9.0.tgz
	https://registry.npmjs.org/minizlib/-/minizlib-1.3.3.tgz
	https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.5.tgz
	https://registry.npmjs.org/ms/-/ms-2.1.2.tgz
	https://registry.npmjs.org/mustache/-/mustache-3.1.0.tgz
	https://registry.npmjs.org/node-abi/-/node-abi-2.19.1.tgz
	https://registry.npmjs.org/rimraf/-/rimraf-2.7.1.tgz
	https://registry.npmjs.org/env-paths/-/env-paths-2.2.0.tgz
	https://registry.npmjs.org/node-gyp/-/node-gyp-5.1.1.tgz
	https://registry.npmjs.org/nopt/-/nopt-4.0.3.tgz
	https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.5.0.tgz
	https://registry.npmjs.org/normalize-url/-/normalize-url-4.5.0.tgz
	https://registry.npmjs.org/pify/-/pify-3.0.0.tgz
	https://registry.npmjs.org/npm-conf/-/npm-conf-1.1.3.tgz
	https://registry.npmjs.org/npmlog/-/npmlog-4.1.2.tgz
	https://registry.npmjs.org/ms/-/ms-2.0.0.tgz
	https://registry.npmjs.org/debug/-/debug-2.6.9.tgz
	https://registry.npmjs.org/nugget/-/nugget-2.0.1.tgz
	https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.1.tgz
	https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.9.0.tgz
	https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz
	https://registry.npmjs.org/object-keys/-/object-keys-0.4.0.tgz
	https://registry.npmjs.org/once/-/once-1.4.0.tgz
	https://registry.npmjs.org/onetime/-/onetime-2.0.1.tgz
	https://registry.npmjs.org/ansi-regex/-/ansi-regex-4.1.0.tgz
	https://registry.npmjs.org/strip-ansi/-/strip-ansi-5.2.0.tgz
	https://registry.npmjs.org/ora/-/ora-3.4.0.tgz
	https://registry.npmjs.org/osenv/-/osenv-0.1.5.tgz
	https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.2.tgz
	https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz
	https://registry.npmjs.org/parse-author/-/parse-author-2.0.0.tgz
	https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz
	https://registry.npmjs.org/path-exists/-/path-exists-3.0.0.tgz
	https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz
	https://registry.npmjs.org/path-parse/-/path-parse-1.0.6.tgz
	https://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz
	https://registry.npmjs.org/p-cancelable/-/p-cancelable-1.1.0.tgz
	https://registry.npmjs.org/pend/-/pend-1.2.0.tgz
	https://registry.npmjs.org/performance-now/-/performance-now-2.1.0.tgz
	https://registry.npmjs.org/pify/-/pify-2.3.0.tgz
	https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz
	https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz
	https://registry.npmjs.org/p-limit/-/p-limit-1.3.0.tgz
	https://registry.npmjs.org/plist/-/plist-3.0.1.tgz
	https://registry.npmjs.org/p-locate/-/p-locate-2.0.0.tgz
	https://registry.npmjs.org/prepend-http/-/prepend-http-2.0.0.tgz
	https://registry.npmjs.org/pretty-bytes/-/pretty-bytes-1.0.4.tgz
	https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz
	https://registry.npmjs.org/progress/-/progress-2.0.3.tgz
	https://registry.npmjs.org/progress-stream/-/progress-stream-1.2.0.tgz
	https://registry.npmjs.org/proto-list/-/proto-list-1.2.4.tgz
	https://registry.npmjs.org/psl/-/psl-1.8.0.tgz
	https://registry.npmjs.org/p-try/-/p-try-1.0.0.tgz
	https://registry.npmjs.org/pump/-/pump-3.0.0.tgz
	https://registry.npmjs.org/punycode/-/punycode-2.1.1.tgz
	https://registry.npmjs.org/qs/-/qs-6.5.2.tgz
	https://registry.npmjs.org/rc/-/rc-1.2.8.tgz
	https://registry.npmjs.org/rcedit/-/rcedit-2.0.0.tgz
	https://registry.npmjs.org/readable-stream/-/readable-stream-1.1.14.tgz
	https://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz
	https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz
	https://registry.npmjs.org/redent/-/redent-1.0.0.tgz
	https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz
	https://registry.npmjs.org/request/-/request-2.88.0.tgz
	https://registry.npmjs.org/require-directory/-/require-directory-2.1.1.tgz
	https://registry.npmjs.org/require-main-filename/-/require-main-filename-2.0.0.tgz
	https://registry.npmjs.org/resolve/-/resolve-1.18.1.tgz
	https://registry.npmjs.org/responselike/-/responselike-1.0.2.tgz
	https://registry.npmjs.org/restore-cursor/-/restore-cursor-2.0.0.tgz
	https://registry.npmjs.org/rimraf/-/rimraf-3.0.0.tgz
	https://registry.npmjs.org/roarr/-/roarr-2.15.4.tgz
	https://registry.npmjs.org/rxjs/-/rxjs-6.6.3.tgz
	https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz
	https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz
	https://registry.npmjs.org/sanitize-filename/-/sanitize-filename-1.6.3.tgz
	https://registry.npmjs.org/semver/-/semver-5.7.1.tgz
	https://registry.npmjs.org/semver-compare/-/semver-compare-1.0.0.tgz
	https://registry.npmjs.org/serialize-error/-/serialize-error-7.0.1.tgz
	https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz
	https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.3.tgz
	https://registry.npmjs.org/@sindresorhus/is/-/is-0.14.0.tgz
	https://registry.npmjs.org/single-line-log/-/single-line-log-1.1.2.tgz
	https://registry.npmjs.org/ms/-/ms-2.0.0.tgz
	https://registry.npmjs.org/debug/-/debug-2.6.9.tgz
	https://registry.npmjs.org/spawn-rx/-/spawn-rx-3.0.0.tgz
	https://registry.npmjs.org/spdx-correct/-/spdx-correct-3.1.1.tgz
	https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-2.3.0.tgz
	https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-3.0.1.tgz
	https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-3.0.6.tgz
	https://registry.npmjs.org/speedometer/-/speedometer-0.1.4.tgz
	https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.1.2.tgz
	https://registry.npmjs.org/sshpk/-/sshpk-1.16.1.tgz
	https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz
	https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz
	https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz
	https://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz
	https://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz
	https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-2.0.1.tgz
	https://registry.npmjs.org/ms/-/ms-2.0.0.tgz
	https://registry.npmjs.org/debug/-/debug-2.6.9.tgz
	https://registry.npmjs.org/sumchecker/-/sumchecker-2.0.2.tgz
	https://registry.npmjs.org/supports-color/-/supports-color-5.5.0.tgz
	https://registry.npmjs.org/@szmarczak/http-timer/-/http-timer-1.1.2.tgz
	https://registry.npmjs.org/tar/-/tar-4.4.13.tgz
	https://registry.npmjs.org/throttleit/-/throttleit-0.0.2.tgz
	https://registry.npmjs.org/through2/-/through2-0.2.3.tgz
	https://registry.npmjs.org/rimraf/-/rimraf-2.7.1.tgz
	https://registry.npmjs.org/tmp/-/tmp-0.1.0.tgz
	https://registry.npmjs.org/tmp-promise/-/tmp-promise-1.1.0.tgz
	https://registry.npmjs.org/to-readable-stream/-/to-readable-stream-1.0.0.tgz
	https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz
	https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.4.3.tgz
	https://registry.npmjs.org/trim-newlines/-/trim-newlines-1.0.0.tgz
	https://registry.npmjs.org/truncate-utf8-bytes/-/truncate-utf8-bytes-1.0.2.tgz
	https://registry.npmjs.org/tslib/-/tslib-1.14.1.tgz
	https://registry.npmjs.org/tunnel/-/tunnel-0.0.6.tgz
	https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz
	https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.5.tgz
	https://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz
	https://registry.npmjs.org/type-fest/-/type-fest-0.13.1.tgz
	https://registry.npmjs.org/@types/minimatch/-/minimatch-3.0.3.tgz
	https://registry.npmjs.org/@types/glob/-/glob-7.1.3.tgz
	https://registry.npmjs.org/@types/node/-/node-10.17.42.tgz
	https://registry.npmjs.org/universalify/-/universalify-0.1.2.tgz
	https://registry.npmjs.org/uri-js/-/uri-js-4.4.0.tgz
	https://registry.npmjs.org/url-parse-lax/-/url-parse-lax-3.0.0.tgz
	https://registry.npmjs.org/utf8-byte-length/-/utf8-byte-length-1.0.4.tgz
	https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz
	https://registry.npmjs.org/uuid/-/uuid-3.4.0.tgz
	https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz
	https://registry.npmjs.org/verror/-/verror-1.10.0.tgz
	https://registry.npmjs.org/wcwidth/-/wcwidth-1.0.1.tgz
	https://registry.npmjs.org/which/-/which-1.3.1.tgz
	https://registry.npmjs.org/which-module/-/which-module-2.0.0.tgz
	https://registry.npmjs.org/wide-align/-/wide-align-1.1.3.tgz
	https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz
	https://registry.npmjs.org/ansi-regex/-/ansi-regex-4.1.0.tgz
	https://registry.npmjs.org/string-width/-/string-width-3.1.0.tgz
	https://registry.npmjs.org/strip-ansi/-/strip-ansi-5.2.0.tgz
	https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-5.1.0.tgz
	https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz
	https://registry.npmjs.org/ws/-/ws-7.1.2.tgz
	https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-9.0.7.tgz
	https://registry.npmjs.org/xmldom/-/xmldom-0.1.31.tgz
	https://registry.npmjs.org/xtend/-/xtend-2.1.2.tgz
	https://registry.npmjs.org/y18n/-/y18n-4.0.0.tgz
	https://registry.npmjs.org/yallist/-/yallist-3.1.1.tgz
	https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz
	https://registry.npmjs.org/p-locate/-/p-locate-3.0.0.tgz
	https://registry.npmjs.org/locate-path/-/locate-path-3.0.0.tgz
	https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz
	https://registry.npmjs.org/ansi-regex/-/ansi-regex-4.1.0.tgz
	https://registry.npmjs.org/string-width/-/string-width-3.1.0.tgz
	https://registry.npmjs.org/strip-ansi/-/strip-ansi-5.2.0.tgz
	https://registry.npmjs.org/find-up/-/find-up-3.0.0.tgz
	https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz
	https://registry.npmjs.org/yargs/-/yargs-13.3.2.tgz
	https://registry.npmjs.org/camelcase/-/camelcase-5.3.1.tgz
	https://registry.npmjs.org/yargs-parser/-/yargs-parser-13.1.2.tgz
	https://registry.npmjs.org/yauzl/-/yauzl-2.10.0.tgz"


KEYWORDS="~amd64 ~x86"

LICENSE="BSD"
SLOT="0"
IUSE=""
DEPEND="=net-vpn/pritunl-client-service-${PV}
	>=net-libs/nodejs-0.8.10"

RDEPEND=""

src_unpack() {

	local a

	for a in ${A}; do
		unpack ${a}
	done

	unpack pritunl-client-electron-${PV}.tar.gz
	mv ${WORKDIR}/pritunl-client-electron-${PV} ${S}

	pushd ${S}/client
	#npm install || die
}



#src_install() {
#	insinto /opt
#	doins -r "${S}/build/linux/Pritunl-linux-x64"
#	fperms 0775 \
#		/opt/Pritunl-linux-x64/Pritunl \
#		/opt/Pritunl-linux-x64/libEGL.so \
#		/opt/Pritunl-linux-x64/libffmpeg.so \
#		/opt/Pritunl-linux-x64/libGLESv2.so \
#		/opt/Pritunl-linux-x64/chrome-sandbox \
#		/opt/Pritunl-linux-x64/swiftshader/libGLESv2.so \
#		/opt/Pritunl-linux-x64/swiftshader/libEGL.so
#
#	dosym "/opt/Pritunl-linux-x64/Pritunl" /opt/bin/Pritunl
#}
