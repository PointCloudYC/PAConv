# download the dataset
# cd yr system dataset folder
# check how to downolaod a google drive's big file using wget(https://medium.com/@acpanjan/download-google-drive-files-using-wget-3c2c025a8b99)
# wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1KUxWagmEWnvMhEb4FRwq2Mj0aa3U3xUf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1KUxWagmEWnvMhEb4FRwq2Mj0aa3U3xUf" -O 's3dis.tar.gz' && rm -rf /tmp/cookies.txt
# tar xvf s3dis.tar.gz


# prepare the datasets
# cd to yr root/scene_seg folder
#  mkdir -p dataset
#  ln -s /media/jcheng/yinchao/datasets/S3DIS-PAConv/s3dis dataset/s3dis


# compile ops, check https://github.com/hszhao/PointWeb
# cd lib/pointops && python setup.py install && cd ../../
# installation details w. success:
# Installed /home/user/miniconda3/envs/closerlook/lib/python3.6/site-packages/pointops-0.
# 0.0-py3.6-linux-x86_64.egg
# Processing dependencies for pointops==0.0.0
# Finished processing dependencies for pointops==0.0.0


# train
sh tool/train.sh s3dis pointnet2_paconv_cuda