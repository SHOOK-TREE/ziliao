# 资料压缩包

原始文件 `3.zip` 大小约 8.04 GiB。由于 GitHub 和 Git LFS 的单文件大小限制，文件被拆分为以下分卷并通过 Git LFS 保存：

- `3.zip.part001`
- `3.zip.part002`
- `3.zip.part003`
- `3.zip.part004`
- `3.zip.part005`

下载全部分卷后，在 Windows PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\reassemble.ps1
```

脚本会按顺序合并分卷，在当前目录生成 `3.zip`。请确保当前磁盘至少有 9 GB 可用空间。
