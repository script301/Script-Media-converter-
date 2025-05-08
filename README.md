# Conversor de Vídeos com FFmpeg (Batch Script)

![ChatGPT Image 8 de mai  de 2025, 05_45_17](https://github.com/user-attachments/assets/84410ead-2390-41e9-a1ab-4aa0c4730e6b)

---

## 🎥 Recursos

- Interface amigável no console.
- Conversão em lote de todos os vídeos na pasta `input`.
- Suporte a múltiplos formatos: `mp4`, `mkv`, `avi`, `mov`, `webm`.
- Verificação e criação automática da pasta `input`.
- Criação automática da pasta `output`.

---

## 🔧 Requisitos

- **Windows 7+**
- **FFmpeg** instalado no sistema (e acessível pelo terminal)

---

## 🧪 Instalação do FFmpeg

1. Acesse: https://ffmpeg.org/download.html
2. Clique em "Windows builds".
3. Baixe a versão estática mais recente.
4. Extraia o conteúdo em uma pasta (ex: `C:\ffmpeg`).
5. Adicione o caminho `C:\ffmpeg\bin` à variável de ambiente `PATH`:
   - Iniciar > Pesquise por "variáveis de ambiente"
   - Edite a variável `Path`
   - Clique em "Novo" e adicione: `C:\ffmpeg\bin`

---

## ▶️ Como Usar

1. Coloque seus vídeos na pasta `input` (ela será criada automaticamente se não existir).
2. Execute o script `start.bat` com **duplo clique**.
3. Escolha o formato desejado.
4. Aguarde a conversão.
5. Os vídeos convertidos estarão na pasta `output`.

---

## 📁 Estrutura de Pastas

├── start.bat
├── input
│ └── seus arquivos de vídeo aqui
├── output
└── arquivos convertidos aqui
