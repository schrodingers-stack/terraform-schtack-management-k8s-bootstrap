# Changelog

## [0.2.0](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/compare/v0.1.4...v0.2.0) (2024-11-29)


### ⚠ BREAKING CHANGES

* migrate to an app of apps pattern

### Features

* migrate to an app of apps pattern ([511492e](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/511492eb907f073b1270971235c2920315fa9fca))


### Miscellaneous Chores

* add/edit release-please-config.json ([4f488a3](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/4f488a3ab3995605cd09fa3daff091d2afeb559a))
* add/edit release-please-config.json ([692d2f1](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/692d2f14ab9bc90e31a501c0732fe13d7c5ff7a1))

## [0.1.4](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/compare/v0.1.3...v0.1.4) (2024-11-27)


### Miscellaneous Chores

* add empty outputs.tf files ([cd96b33](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/cd96b33dce61d7ec24c58daa79693c77efb627b7))


### Code Refactoring

* simplify code by removing submodules ([8bdb089](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/8bdb0894ea541c99b7245e03437769980c197b11))

## [0.1.3](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/compare/v0.1.2...v0.1.3) (2024-11-22)


### Features

* implement a variable to pass global values to all add-ons ([7ec05d8](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/7ec05d80de69e59529653835384ecb3d53f0fcf1))


### Documentation

* document values without documentation ([4d34031](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/4d34031b44552d60be1ceceb4db645efbcc956c5))


### Miscellaneous Chores

* merge pull request [#10](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/issues/10) from schrodingers-stack/feat/global-values ([5998f91](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/5998f91c4cf2ca1a5a3872887866bbd7357ccd55))
* remove TODOs that have moved to issues ([9ac3aad](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/9ac3aad9b28b348b3f93600278b06020c0fec086))

## [0.1.2](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/compare/v0.1.1...v0.1.2) (2024-11-21)


### Bug Fixes

* correct the templating when using extraValues key ([170a116](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/170a1168de78f466c660f122ca90e0e144f55da2))

## [0.1.1](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/compare/v0.1.0...v0.1.1) (2024-11-21)


### Bug Fixes

* add default namespace and remove whitespace ([cc2cc07](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/cc2cc07d246d80321e85bd8f179a6743f1861e06))
* add kube-system to the allow list by default ([11d2b08](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/11d2b086b441c4a741cb4331c884207b7e21f8cc))
* correct the attribute on the annotation range ([8e5b9da](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/8e5b9da8de0cfb5a6c8873e97bb8c8a83409ac34))
* fix template issue in the Application when using default namespace ([72731e3](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/72731e3804f2f2e3940e8c038b1bbd8768b53c5c))
* fix the creation of duplicate AppProjects ([9a62680](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/9a626801adc2384fe414da9ae0cd7cbedfc7f716))


### Documentation

* add documentation to explain the addOnList attribute ([be43e7c](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/be43e7cb5215b28e93f84ee0de68a43ecb0db702))


### Miscellaneous Chores

* add tag to update version on file ([9e5d97a](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/9e5d97ad414ee5b286981d8285cf38cb8f4e7768))
* add/edit release-please-config.json ([0abd947](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/0abd9477dd49d4ae32b60be43c01fdc235a701c8))
* add/edit release-please-config.json ([19123f6](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/19123f64632e7cc4e280c1fc2fe5eeaa315d30ff))
* add/edit release-please-config.json ([07a3d7b](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/07a3d7bc6d6c30d491c888ff93f7d42f0d5cd804))
* add/edit release-please-config.json ([987f262](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/987f262097b0e9e9d69d380887f5b08aa5c76d0c))

## 0.1.0 (2024-11-20)


### Features

* add _helpers.tpl and more customization to AppProject ([1017c2f](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/1017c2fbd39df25378184873ba99312605568bd2))
* add `helm_release` resource to deploy the bootstrap chart ([5776523](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/5776523b353b4362ef9fc32487bc21dea68cc7fa))
* **argo_cd_bootstrap:** add first version of the submodule ([649e257](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/649e257d8df45c25c3fd6b0a06750cb46b6378ad))
* **cluster_add_ons:** add first working prototype of the bootstrap Helm chart ([57c945a](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/57c945a76ce1bd6368019faacde86890b5eef3c5))


### Bug Fixes

* add a time_sleep resource to allow for a proper resource creation ([ba1f082](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/ba1f082fe9dc8f1b8045eb81221b56c5fe7bc91f))
* add default value when the variable is not set ([53e805c](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/53e805cfff7cdabe417e80e4e38850e40ef72860))


### Miscellaneous Chores

* add/edit .gitignore ([605b6dc](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/605b6dc305c7a740f88c8763eca1d38f8cf20eba))
* add/edit .gitignore ([c1f4682](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/c1f46820bb73f957fe9493faaae547e9b978dd56))
* add/edit CODEOWNERS ([9bc68d7](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/9bc68d7e7fd6436c72864586d47ce5015a84d0aa))
* add/edit CODEOWNERS ([488f8df](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/488f8dff7ac2d11bfd2013125437cba25ef056ef))
* add/edit CODEOWNERS ([77b6dec](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/77b6dec689109e4acf51198cc5d03064200bb96c))
* add/edit CODEOWNERS ([6d069cf](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/6d069cff5292c4ba187370bbaff37fdbb3a1f9e9))
* add/edit LICENSE.txt ([324c95a](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/324c95a9d9a2bee36221387de410bdf4ea3e7fc3))
* add/edit LICENSE.txt ([9ea2e28](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/9ea2e28f7083bd5ef7859c52905c228196869612))
* add/edit LICENSE.txt ([97c4f74](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/97c4f74d8ec828dc7f023cd621175677a191a9ac))
* add/edit release-please-config.json ([6270fe3](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/6270fe3acc9f9a8bd467edf90afd81bb713e02f2))
* add/edit release-please-config.json ([729a5bf](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/729a5bf9af86bae44b62ce641a269b35b839494e))
* add/edit release-please-manifest.json ([1c8522b](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/1c8522be25edd1005b5a24b01c772601b536d8ba))
* delete old CODEOWNERS file ([dc4578f](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/dc4578f8fd030763197e68f8cadf3d460498122f))


### Continuous Integration

* add/edit commits-checks.yaml ([a2a3a68](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/a2a3a68afbe030078f7b3b1747f8ca59f1925014))
* add/edit commits-checks.yaml ([d740ee4](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/d740ee43e18e6b9592398aa886124896b2744a33))
* add/edit pr-issues-project.yaml ([60719b0](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/60719b0dcf41e6c0d1327946808663eabcb09b41))
* add/edit pr-issues-project.yml ([e598c3e](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/e598c3e88f3ad92aac61be78e3b60be32bb573b4))
* add/edit release-please.yaml ([cc5e689](https://github.com/schrodingers-stack/terraform-schtack-management-k8s-bootstrap/commit/cc5e68928000bd2724267572be298a6203978285))
