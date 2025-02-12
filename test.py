import torch
import torchvision.transforms
from PIL import Image
from model import *

# 定义训练的设备
device = torch.device("cuda")



image_path = "pytorch_data/test_plane.png"

image = Image.open(image_path)
print(image)
image = image.convert('RGB')



transform = torchvision.transforms.Compose(
    [torchvision.transforms.Resize((32,32)),
     torchvision.transforms.ToTensor()]
)

image = transform(image)
print(image.shape)

model = torch.load("tudui_29.pth")
print(model)

image= torch.reshape(image, (1,3,32,32))
image = image.to(device)
model.eval()
with torch.no_grad():
    output = model(image)
print(output)

print(output.argmax(1))