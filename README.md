# 403 Tools Collection

A collection of tools and payload lists for **bypassing 403 Forbidden restrictions** during security testing.


---

## 📂 Repository Structure

- `4-ZERO-3`
- `Forbidden-Buster`
- `byp4xx`
- `bypass-403`
- `noremore403payloads`

---

## 🎯 Purpose

These tools and payloads help with:

- 403 bypass techniques
- Header manipulation attacks
- Path traversal bypass
- HTTP method tampering
- URL encoding tricks
- Case sensitivity bypass
- Reverse proxy misconfiguration discovery

---

## 🛠 Common 403 Bypass Techniques

- Adding headers:
  - `X-Forwarded-For: 127.0.0.1`
  - `X-Original-URL`
  - `X-Rewrite-URL`
- Using alternative HTTP methods (`POST`, `PUT`, `OPTIONS`)
- Appending `/.` or `%2e`
- Double URL encoding
- Case variation (`/Admin` → `/aDmIn`)
- Adding trailing slashes or dots
- Using IP instead of domain
- Path normalization bypass

---

