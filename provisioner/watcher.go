/*******************************************************************************
 * IBM Confidential
 * OCO Source Materials
 * IBM Cloud Container Service, 5737-D43
 * (C) Copyright IBM Corp. 2017, 2018 All Rights Reserved.
 * The source code for this program is not  published or otherwise divested of
 * its trade secrets, irrespective of what has been deposited with
 * the U.S. Copyright Office.
 ******************************************************************************/

package provisioner

import (
	"time"

	"go.uber.org/zap"
	v1 "k8s.io/api/core/v1"
	apiv1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/fields"
	"k8s.io/apimachinery/pkg/util/wait"
	"k8s.io/client-go/kubernetes"
	"k8s.io/client-go/tools/cache"
)

var lgr zap.Logger
var provisioner *IBMS3fsProvisioner

// WatchPersistentVolumes ...
func WatchPersistentVolumes(client kubernetes.Interface, s3fsProvisioner *IBMS3fsProvisioner, log zap.Logger) {
	lgr = log
	provisioner = s3fsProvisioner
	watchlist := cache.NewListWatchFromClient(client.Core().RESTClient(), "persistentvolumes", apiv1.NamespaceAll, fields.Everything())
	_, controller := cache.NewInformer(watchlist, &v1.PersistentVolume{}, time.Second*0,
		cache.ResourceEventHandlerFuncs{
			AddFunc:    ValidatePersistentVolume,
			DeleteFunc: nil,
			UpdateFunc: ValidatePersistentVolume,
		},
	)
	stopch := wait.NeverStop
	go controller.Run(stopch)
	lgr.Info("WatchPersistentVolume")
	<-stopch
}

func ValidatePersistentVolume(pvObj interface{}) {
	lgr.Info("Updating persistent volume firewall rules", zap.Reflect("persistentvolume", pvObj))
	creds, allowedNamespace, resConfApiKey, err = provisioner.getCredentials(pvc.SecretName, pvc.SecretNamespace)
	if err != nil {
		return nil, fmt.Errorf(pvcName+":"+clusterID+":cannot get credentials: %v", err)
	}
	pvAnnots = pvObj.ObjectMeta.Annotations
	pvName = pvObj.Name
	if pvAnnots.AllowedIPs != "" {
		if creds.AccessKey != "" && resConfApiKey == "" {
			return nil, fmt.Errorf(pvcName + ":" + clusterID + ":Firewall rules cannot be set without api key")
		} else if creds.APIKey != "" {
			resConfApiKey = creds.APIKey
		}
		err = UpdateFirewallRules(pvAnnots.AllowedIPs, resConfApiKey, pvAnnots.Bucket)
		if err != nil {
			return nil, fmt.Errorf(pvName+":"+"Setting firewall rules failed for bucket '%s': %v", pvAnnots.Bucket, err)
		}
	}
	lgr.Info("Updation of persistent volume firewall rules completed successfully", zap.Reflect("persistentvolume", pvObj))
}
