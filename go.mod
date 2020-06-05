module github.com/IBM/ibmcloud-object-storage-plugin

go 1.13

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/IBM/go-sdk-core/v3 v3.3.1
	github.com/IBM/ibm-cos-sdk-go v1.3.2
	github.com/IBM/ibm-cos-sdk-go-config v1.0.0
	github.com/asaskevich/govalidator v0.0.0-20200428143746-21a406dcc535 // indirect
	github.com/evanphx/json-patch v4.5.0+incompatible // indirect
	github.com/go-openapi/errors v0.19.4 // indirect
	github.com/go-openapi/strfmt v0.19.5 // indirect
	github.com/gogo/protobuf v1.3.1 // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/google/btree v1.0.0 // indirect
	github.com/google/go-cmp v0.4.1 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/googleapis/gnostic v0.4.2 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/hashicorp/golang-lru v0.5.4 // indirect
	github.com/imdario/mergo v0.3.9 // indirect
	github.com/jessevdk/go-flags v1.4.0
	github.com/kr/text v0.2.0 // indirect
	github.com/kubernetes-sigs/sig-storage-lib-external-provisioner v4.1.0+incompatible
	github.com/miekg/dns v1.1.29 // indirect
	github.com/mitchellh/mapstructure v1.3.1 // indirect
	github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e // indirect
	github.com/onsi/ginkgo v1.12.3 // indirect
	github.com/pborman/uuid v1.2.0 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/prometheus/client_golang v1.6.0 // indirect
	github.com/prometheus/common v0.10.0 // indirect
	github.com/satori/go.uuid v1.2.0
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stretchr/testify v1.6.0
	github.com/tidwall/pretty v1.0.1 // indirect
	go.mongodb.org/mongo-driver v1.3.4 // indirect
	go.uber.org/zap v1.15.0
	golang.org/x/crypto v0.0.0-20200604202706-70a84ac30bf9 // indirect
	golang.org/x/lint v0.0.0-20200302205851-738671d3881b // indirect
	golang.org/x/mod v0.3.0 // indirect
	golang.org/x/net v0.0.0-20200602114024-627f9648deb9 // indirect
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d // indirect
	golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a // indirect
	golang.org/x/sys v0.0.0-20200602225109-6fdc65e7d980 // indirect
	golang.org/x/time v0.0.0-20200416051211-89c76fbcd5d1 // indirect
	golang.org/x/tools v0.0.0-20200604183345-4d5ea46c79fe // indirect
	google.golang.org/appengine v1.6.6 // indirect
	google.golang.org/protobuf v1.24.0 // indirect
	gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0
	gopkg.in/yaml.v3 v3.0.0-20200603094226-e3079894b1e8 // indirect
	honnef.co/go/tools v0.0.1-2020.1.4 // indirect
	k8s.io/api v0.18.3
	k8s.io/apimachinery v0.18.3
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/klog v1.0.0 // indirect
	k8s.io/kube-openapi v0.0.0-20200427153329-656914f816f9 // indirect
	sigs.k8s.io/yaml v1.2.0 // indirect
)

replace (
	github.com/coreos/go-systemd => github.com/coreos/go-systemd v0.0.0-20181031085051-9002847aa142
	github.com/godbus/dbus => github.com/godbus/dbus v0.0.0-20181214014626-e25f905dbfbc
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.4.0
	github.com/kubernetes-sigs/sig-storage-lib-external-provisioner => github.com/kubernetes-sigs/sig-storage-lib-external-provisioner v2.2.0+incompatible
	k8s.io/api => k8s.io/api v0.0.0-20190222213804-5cb15d344471
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190221213512-86fb29eff628
	k8s.io/client-go => k8s.io/client-go v0.0.0-20190228174230-b40b2a5939e4
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20200410145947-61e04a5be9a6
)
