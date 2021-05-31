<h1 align="center">
 Simple base45 encoder/decoder
</h1>

<p align="center">
    <a href="#about">About</a>
    <a href="#licensing">Licensing</a>
</p>

## About

Qr and Aztec code have a specific, highly efficient, method for storing alphanumeric characters (MODE 2/0010). In particular compared to UTF-8 (where the first 32 characters are essentially unused; and successive non-latin characters loose an additional 128 values as the topbit needs to be set).

Details of this 11 bits per two characters can be found at

* https://www.thonky.com/qr-code-tutorial/alphanumeric-mode-encoding
* https://raw.githubusercontent.com/yansikeim/QR-Code/master/ISO%20IEC%2018004%202015%20Standard.pdf - section 7.44 on page 26

For this reason - the industry generally encodes these in base45. A document for this defacto standard is in flight:

    https://datatracker.ietf.org/doc/draft-faltstrom-base45/    

## Licensing

Copyright (C) 2021 the eHealth implementors group and all other contributors

Licensed under the **Apache License, Version 2.0** (the "License"); you may not use this file except in compliance with the License.

You may obtain a copy of the License at https://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS"
BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the [LICENSE](./LICENSE) for the specific
language governing permissions and limitations under the License.
