FROM opensuse/leap
RUN zypper in -y trivy
RUN trivy image --download-db-only
