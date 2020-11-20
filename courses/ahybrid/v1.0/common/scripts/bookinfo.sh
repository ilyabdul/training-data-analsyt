kubectl -n istio-system get pods -l app=istiod --show-labels

kubectl label namespace default istio-injection=enabled --overwrite

# Deploy BookInfo application
kubectl apply -f https://raw.githubusercontent.com/istio/istio/master/samples/bookinfo/platform/kube/bookinfo.yaml

# Sleep while Bookinfo pods initialize
sleep 30s

# Expose Bookinfo external gateway/IP
kubectl apply -f https://raw.githubusercontent.com/istio/istio/master/samples/bookinfo/networking/bookinfo-gateway.yaml