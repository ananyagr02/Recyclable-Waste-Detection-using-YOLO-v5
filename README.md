# ♻️ InBin — Recyclable Waste Detection System

---

## 🔍 Overview

**InBin** is a smart waste detection system that uses deep learning to classify and identify recyclable waste across **9 categories**. Built with **YOLOv5**, it enables high-speed, accurate detection and is optimized for real-world deployment through a **Flask API** and **Docker** container.

---
## Demo-video https://drive.google.com/file/d/1xOVeZ3dTKO0wg4G4oDw-h__hwUBH0PZO/view?usp=sharing
## 🚀 Features

- 🧠 YOLOv5-based detection for real-time object classification.
- 📂 Trained on a rich, diverse dataset with 9 recyclable waste classes including
    - Battery
    - Cloth
    - Metal
    - E-Waste
    - Lightbulb
    - Paper
    - Plastic
    - Glass
    - Organic
- 📊 Model evaluation using **Precision**, **Recall**, and **F1 Score**.
- 🔍 Continuous model refinement with visual insights via **TensorBoard** and **Seaborn**.
- 🌐 Lightweight **Flask API** for easy deployment and integration.
- 📦 Fully containerized with **Docker** for cross-platform use.

---

## 📈 Model Metrics

- **Overall Precision**: 0.813
- **Recall**: 0.767  
- **F1 Score**: 0.790
- **Accuracy**: 0.790
- Trained using **YOLOv5s** variant over 50 epochs  
- Tracked with **TensorBoard**

---


## ⚙️ Tech Stack

| Tool/Library      | Purpose                                 |
|-------------------|------------------------------------------|
| **YOLOv5**         | Object detection framework               |
| **Python**         | Core programming                        |
| **PyTorch**        | Deep learning engine                     |
| **NumPy**          | Matrix and array operations              |
| **TensorBoard**    | Training monitoring                      |
| **Seaborn**        | Data visualization                       |
| **Flask**          | Backend REST API                         |
| **Docker**         | Deployment and portability               |


---
## 📦 Dataset Links: 
  - 📁 [Dataset Folder](https://drive.google.com/drive/u/2/folders/1ysx3bHxQFpELPFGDEGJUnYwqdgQO5_5K)  
  - 📦 [Dataset ZIP File](https://drive.google.com/file/d/1cYCv07SNT-LkI839StJcXDhFQuqGVOJP/view?usp=sharing)
- **Name**: FINAL_WASTE  
- **Size**: 8,000+ manually labeled images  
- **Categories**:
  1. Battery  
  2. Clothes  
  3. Metal  
  4. E-Waste  
  5. Lightbulb  
  6. Paper  
  7. Plastic  
  8. Glass  
  9. Organic  

- **Structure**:
  ```
  FINAL_WASTE/
  ├── Train/
  │   ├── images/
  │   └── labels/
  ├── Valid/
  │   ├── images/
  │   └── labels/
  └── data.yaml
  ```

- **Purpose**:  
  This dataset is curated for high-performance waste detection, featuring diverse environmental conditions and precise annotations, making it ideal for research and industrial use in waste management.

---




## 🌐 API Usage

**POST** `/predict`  
Send an image (base64 or form-data) for classification.

**Request:**
```json
{
  "image": "base64_encoded_image"
}
```

**Response:**
```json
{
  "predictions": [
    {
      "label": "Plastic",
      "confidence": 0.92,
      "bbox": [x, y, width, height]
    },
    ...
  ]
}
```

---

## 🚢 Running the Project

### 🧪 Run Locally

```bash
git clone https://github.com/yourusername/inbin-w.git
cd inbin-w
pip install -r requirements.txt
python app.py
```

---

## 🌱 Real-World Applications

- **Smart Bins** for public waste segregation  
- **Industrial Recycling Plants** for automated sorting  
- **Robotic Arms** in waste management facilities  
- **Municipal Monitoring** systems  
- **Sustainable Urban Infrastructure**

---

## 🌍 Why It Matters

> InBin W aims to revolutionize waste segregation by automating the detection and classification of recyclables, reducing contamination, cutting costs, and promoting sustainable waste disposal.

---
