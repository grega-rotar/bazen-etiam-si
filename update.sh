git pull origin main                                                                                                                                                        sudo docker build . -t registry.etiam.si/public/bazen-lights                                                                                                                sudo docker push registry.etiam.si/public/bazen-lights                                                                                                                      kubectl rollout restart deployment bazen-lights -n pirnice-hq                                                                                                                                                                                git pull origin main
sudo docker build . -t registry.etiam.si/public/bazen-lights
sudo docker push registry.etiam.si/public/bazen-lights
kubectl rollout restart deployment bazen-lights -n pirnice-hq

kubectl get all -n pirnice-hq