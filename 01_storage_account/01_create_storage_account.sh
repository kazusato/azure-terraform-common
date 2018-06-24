#!/usr/bin/env bash

rgname=tf_state_rg
rand_str=$(openssl rand -hex 8)
account_name=tfstate${rand_str}

az group create -n ${rgname} -l japaneast
az storage account create -n ${account_name} -g ${rgname} --sku Standard_LRS -l japaneast --kind StorageV2 --encryption-services blob
