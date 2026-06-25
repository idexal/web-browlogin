# browlogin.idexal.com — static site served by nginx. Coolify auto-detects this Dockerfile.
FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=4s --start-period=5s --retries=3   CMD wget -qO- http://localhost/ >/dev/null 2>&1 || exit 1
