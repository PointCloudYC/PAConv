# Explore and exploit the repo

## run the code (Oct. 5, 2021)

- use my `closerlook3d` env of my miniconda as the developed env; Note: closerlook3d is set up based on the closerlook3d repository.
- install the tensorboardx by `conda install -c conda-forge tensorboardx`
- compile the custom op following the repo's base repo (PointWeb), similar to RandLA-Net's customize op. details, see run-s3dis.sh
- download a customized s3dis dataset, unzip and then symlink to a desired folder. For more details, check run-s3dis.sh

```
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1KUxWagmEWnvMhEb4FRwq2Mj0aa3U3xUf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1KUxWagmEWnvMhEb4FRwq2Mj0aa3U3xUf" -O 's3dis.tar.gz' && rm -rf /tmp/cookies.txt

# tar xvf s3dis.tar.gz

# cd to yr root/scene_seg folder
#  mkdir -p dataset
#  ln -s /media/jcheng/yinchao/datasets/S3DIS-PAConv/s3dis dataset/s3dis
```

- CUDA OOM issue; I specify the GPU 1 to use by `CUDA_VISIBLE_DEVICES=1 python train_xx.py` as GPU 0 is used by another task.
