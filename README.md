# docker-rancher-compose
Generic docker image for rancher-compose


There are two ways to start the rancher-compose container:

1. pasting the docker-compose.yml file content in a new stack creation window in Rancher GUI
2. creating a new service in Rancher with image brutus333/rancher-compose and the following labels

'''
   io.rancher.container.create_agent=true

   io.rancher.container.agent.role=environment 
'''
