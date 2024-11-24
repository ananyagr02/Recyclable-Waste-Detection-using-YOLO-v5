import torch
import pathlib
temp = pathlib.PosixPath
pathlib.PosixPath = pathlib.WindowsPath

# Path to your current best.pt file
input_model_path = r'C:\Users\hp\End-to-End-Waste-Detection-using-YOLO-v5\yolov5\best.pt'

# Path where you want to save the new model
output_model_path = r'C:\Users\hp\End-to-End-Waste-Detection-using-YOLO-v5\yolov5\best.pt'

# Load the model and re-save it
try:
    model = torch.load(input_model_path, map_location='cpu')  # Load on CPU
    torch.save(model, output_model_path)  # Save in Windows-compatible format
    print(f"Model re-saved as: {output_model_path}")
except Exception as e:
    print(f"Error: {e}")


#pathlib.PosixPath = temp