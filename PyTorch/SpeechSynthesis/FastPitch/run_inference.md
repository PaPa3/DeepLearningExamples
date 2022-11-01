# Based on README Quick Start Guide steps 1, 2, 3, 6
# for more info look into the README

# build and run docker, make sure docker is installed
```bash
bash scripts/docker/build.sh
bash scripts/docker/interactive_cpu.sh
```

# download moedels
```bash
bash scripts/download_models.sh
```

# run prediction
```bash
mkdir output
python inference.py \
       --fastpitch pretrained_models/fastpitch/nvidia_fastpitch_210824.pt \
       --energy-conditioning \
       --waveglow pretrained_models/waveglow/nvidia_waveglow256pyt_fp16.pt \
       --wn-channels 256 \
       -i phrases/devset10.tsv \
       -o output/wavs_devset10
```