<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balu · DevOps & Cloud Portfolio</title>
    <!-- Font Awesome 5 (free) for professional icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <!-- Google Fonts: Inter clean modern sans -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300..600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(145deg, #f6f9fc 0%, #eef2f5 100%);
            font-family: "Inter", system-ui, -apple-system, sans-serif;
            color: #1a2639;
            line-height: 1.5;
            padding: 2rem 1.5rem;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .portfolio-card {
            max-width: 1280px;
            width: 100%;
            background: rgba(255,255,255,0.75);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border-radius: 2.5rem;
            box-shadow: 0 25px 50px -12px rgba(0,0,0,0.25), 0 0 0 1px rgba(148,163,184,0.2) inset;
            padding: 2.5rem 2.2rem;
            border: 1px solid rgba(255,255,255,0.7);
        }

        /* header section */
        .header-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            border-bottom: 2px dashed #cbd5e1;
            padding-bottom: 1.5rem;
        }

        .name-title h1 {
            font-size: 3.2rem;
            font-weight: 600;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0f2b4b, #2c5f8a);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1.2;
        }

        .name-title .badge {
            background: #1e3a5f;
            color: white;
            padding: 0.3rem 1rem;
            border-radius: 40px;
            font-size: 0.9rem;
            font-weight: 500;
            display: inline-block;
            margin-top: 0.4rem;
            box-shadow: 0 4px 8px rgba(0,35,70,0.1);
        }

        .contact-info {
            background: white;
            border-radius: 2rem;
            padding: 1rem 1.8rem;
            box-shadow: 0 8px 20px rgba(0,0,0,0.02);
            border: 1px solid #e9eef3;
        }

        .contact-info .item {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-size: 1rem;
            margin: 0.5rem 0;
            color: #1e3a5f;
            font-weight: 500;
        }

        .contact-info i {
            width: 1.8rem;
            height: 1.8rem;
            background: #dbeafe;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            color: #0f3b6a;
            font-size: 1rem;
        }

        .location {
            display: inline-block;
            background: #e6f0fa;
            padding: 0.3rem 1.2rem;
            border-radius: 30px;
            font-weight: 500;
            font-size: 0.95rem;
            margin-top: 0.3rem;
        }

        /* summary / intro */
        .summary {
            background: #ffffffcc;
            border-radius: 2rem;
            padding: 1.6rem 2rem;
            margin-bottom: 2.5rem;
            border-left: 6px solid #1e4a76;
            box-shadow: 0 6px 14px rgba(0,32,64,0.05);
            font-size: 1.1rem;
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            justify-content: space-between;
            align-items: center;
        }

        .summary p {
            max-width: 70%;
            color: #1e293b;
        }

        .summary p i {
            color: #2c5f8a;
            margin-right: 0.5rem;
        }

        .projects-tag {
            background: #0b2a41;
            color: white;
            border-radius: 40px;
            padding: 0.5rem 1.8rem;
            font-weight: 500;
            font-size: 0.95rem;
            white-space: nowrap;
            box-shadow: 0 2px 12px rgba(0,60,130,0.3);
        }

        /* two column layout for skills and main projects */
        .grid-2 {
            display: grid;
            grid-template-columns: 1.1fr 1.9fr;
            gap: 1.8rem;
            margin-bottom: 2.5rem;
        }

        /* skills card */
        .skills-panel {
            background: #ffffffd9;
            backdrop-filter: blur(4px);
            border-radius: 2rem;
            padding: 1.8rem 1.6rem;
            box-shadow: 0 10px 25px -10px rgba(0,0,0,0.1);
            border: 1px solid rgba(255,255,255,0.8);
        }

        .skills-panel h2, .projects-panel h2, .monitoring h2 {
            font-size: 1.5rem;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.6rem;
            margin-bottom: 1.5rem;
            color: #143750;
            border-bottom: 2px solid #cde1f5;
            padding-bottom: 0.6rem;
        }

        .skills-panel h2 i, .projects-panel h2 i, .monitoring h2 i {
            color: #256eb0;
        }

        .skill-cloud {
            display: flex;
            flex-wrap: wrap;
            gap: 0.7rem 0.9rem;
            margin-bottom: 2rem;
        }

        .skill-item {
            background: white;
            border: 1px solid #dde7f0;
            padding: 0.6rem 1.3rem;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            box-shadow: 0 2px 6px #dde9f5;
            transition: all 0.1s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .skill-item i {
            color: #0a4d7c;
            font-size: 1rem;
        }

        .skill-item:hover {
            background: #1e3a5f;
            color: white;
            border-color: #1e3a5f;
        }
        .skill-item:hover i {
            color: white;
        }

        .cloud-group {
            margin: 1.2rem 0 0.5rem;
        }
        .cloud-group .title {
            font-weight: 600;
            color: #2b4d71;
            margin-bottom: 0.5rem;
            letter-spacing: 0.3px;
            font-size: 1rem;
        }

        /* projects panel */
        .projects-panel {
            background: #ffffffd9;
            backdrop-filter: blur(4px);
            border-radius: 2rem;
            padding: 1.8rem 1.8rem;
            border: 1px solid rgba(255,255,255,0.8);
            box-shadow: 0 10px 25px -10px rgba(0,0,0,0.1);
        }

        .project-block {
            margin-bottom: 2rem;
        }

        .project-block:last-child {
            margin-bottom: 0;
        }

        .project-title {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 1.4rem;
            font-weight: 600;
            color: #0f2f48;
            margin-bottom: 0.25rem;
        }

        .project-title i {
            background: #113355;
            color: white;
            padding: 0.4rem;
            border-radius: 12px;
            font-size: 1.1rem;
            width: 2rem;
            text-align: center;
        }

        .project-desc {
            margin-left: 2.8rem;
            margin-bottom: 0.8rem;
            color: #2d3f53;
            font-weight: 500;
            background: #eef4fa;
            padding: 0.3rem 1rem;
            border-radius: 30px;
            display: inline-block;
            font-size: 0.95rem;
        }

        .project-tech {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem;
            margin-left: 2.8rem;
            margin-top: 0.6rem;
        }

        .tech-badge {
            background: white;
            border-radius: 30px;
            padding: 0.3rem 1.2rem;
            border: 1px solid #bcd3ec;
            font-size: 0.85rem;
            font-weight: 500;
            color: #1f4870;
            box-shadow: 0 1px 4px rgba(0,0,0,0.02);
        }

        .tech-badge i {
            margin-right: 0.3rem;
            font-size: 0.8rem;
            color: #256eb0;
        }

        /* monitoring section inside grid? we can extend */
        .monitoring {
            background: #ffffffd9;
            backdrop-filter: blur(4px);
            border-radius: 2rem;
            padding: 1.8rem 1.8rem;
            border: 1px solid rgba(255,255,255,0.8);
            box-shadow: 0 10px 25px -10px rgba(0,0,0,0.1);
            margin-top: 1.5rem;
        }

        .monitoring-stack {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem 1.8rem;
            align-items: center;
        }

        .monitoring-stack span {
            background: #edf3fc;
            border-radius: 30px;
            padding: 0.6rem 1.5rem;
            font-weight: 500;
            display: inline-flex;
            align-items: center;
            gap: 0.7rem;
            border: 1px solid #cbdff2;
        }

        .monitoring-stack i {
            color: #004481;
        }

        /* bottom row for contact line and full details */
        .footer-details {
            margin-top: 2.8rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            background: #1c2f44;
            border-radius: 3rem;
            padding: 1rem 2rem;
            color: white;
        }

        .footer-details .email-phone {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            font-size: 1rem;
            font-weight: 400;
        }

        .footer-details a {
            color: white;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.7rem;
            transition: 0.2s;
            background: rgba(255,255,255,0.1);
            padding: 0.4rem 1.2rem;
            border-radius: 40px;
        }

        .footer-details a:hover {
            background: #3d5e7e;
        }

        .footer-details i {
            font-size: 1.1rem;
            color: #aac9ff;
        }

        .footer-details .location-solid {
            background: rgba(255,255,255,0.1);
            padding: 0.4rem 1.5rem;
            border-radius: 40px;
            display: flex;
            align-items: center;
            gap: 0.6rem;
        }

        hr {
            border: none;
            border-top: 2px dotted #afc9e3;
            margin: 1.2rem 0;
        }

        /* responsiveness */
        @media (max-width: 850px) {
            .grid-2 {
                grid-template-columns: 1fr;
            }
            .summary p {
                max-width: 100%;
            }
            .header-row {
                flex-direction: column;
                align-items: start;
                gap: 1rem;
            }
        }

        @media (max-width: 500px) {
            .portfolio-card {
                padding: 1.8rem 1.2rem;
            }
            .name-title h1 {
                font-size: 2.6rem;
            }
        }
    </style>
</head>
<body>
    <div class="portfolio-card">
        <!-- header: Name + location & raw contact (short) -->
        <div class="header-row">
            <div class="name-title">
                <h1>Balu</h1>
                <span class="badge"><i class="fas fa-map-pin" style="margin-right: 6px;"></i>Hyderabad, Telangana · IN</span>
            </div>
            <div class="contact-info">
                <div class="item"><i class="fas fa-envelope"></i> balarajuvelpula3@gmail.com</div>
                <div class="item"><i class="fas fa-phone-alt"></i> +91 93472 91252</div>
            </div>
        </div>

        <!-- mini intro: professional narrative -->
        <div class="summary">
            <p><i class="fas fa-quote-left"></i> DevOps & Cloud Engineer specialized in <strong>CICD pipelines, microservices & 3‑tier architectures</strong>. 5+ years of enabling automated, secure infrastructure.</p>
            <span class="projects-tag"><i class="fas fa-code-branch"></i> 2 major projects live</span>
        </div>

        <!-- main two column: skills (left) , core projects (right) -->
        <div class="grid-2">
            <!-- left: SKILLS (AWS, Azure, DevOps tools) -->
            <div class="skills-panel">
                <h2><i class="fas fa-cogs"></i> Tech arsenal</h2>
                <!-- cloud first -->
                <div class="cloud-group">
                    <div class="title"><i class="fas fa-cloud"></i> Cloud platforms</div>
                    <div class="skill-cloud">
                        <span class="skill-item"><i class="fab fa-aws"></i> AWS</span>
                        <span class="skill-item"><i class="fab fa-microsoft"></i> Azure</span>
                    </div>
                </div>
                <!-- core devops tools -->
                <div class="cloud-group">
                    <div class="title"><i class="fas fa-tools"></i> DevOps toolchain</div>
                    <div class="skill-cloud">
                        <span class="skill-item"><i class="fab fa-git-alt"></i> Git</span>
                        <span class="skill-item"><i class="fab fa-docker"></i> Docker</span>
                        <span class="skill-item"><i class="fas fa-cubes"></i> Kubernetes</span>
                        <span class="skill-item"><i class="fas fa-code-branch"></i> CI/CD</span>
                        <span class="skill-item"><i class="fas fa-shield-alt"></i> Trivy</span>
                    </div>
                </div>
                <!-- monitoring specific -->
                <div class="cloud-group">
                    <div class="title"><i class="fas fa-chart-line"></i> Monitoring & security</div>
                    <div class="skill-cloud">
                        <span class="skill-item"><i class="fas fa-chart-pie"></i> Prometheus</span>
                        <span class="skill-item"><i class="fas fa-chart-bar"></i> Grafana</span>
                        <span class="skill-item"><i class="fas fa-shield-virus"></i> Trivy</span>
                    </div>
                </div>
                <!-- additional note: tools already covered -->
                <hr>
                <div style="font-size:0.9rem; color:#31658c;"><i class="fas fa-check-circle" style="color:#195a7a;"></i> Full‑cycle CI/CD · Infrastructure as Code · GitOps</div>
            </div>

            <!-- right: PROJECTS (cicd pipeline for microservices + 3tier) -->
            <div class="projects-panel">
                <h2><i class="fas fa-project-diagram"></i> Key projects</h2>
                
                <!-- project 1: CICD pipeline for microservice based applications -->
                <div class="project-block">
                    <div class="project-title">
                        <i class="fas fa-share-alt"></i> 
                        <span>CICD pipeline · microservice based applications</span>
                    </div>
                    <div class="project-desc">
                        <i class="fas fa-arrow-right" style="color:#0f4c75;"></i> End‑to‑end automated CI/CD for 12‑factor microservices
                    </div>
                    <div class="project-tech">
                        <span class="tech-badge"><i class="fab-aws"></i> AWS EKS</span>
                        <span class="tech-badge"><i class="fab-docker"></i> Docker</span>
                        <span class="tech-badge"><i class="fas-code-branch"></i> Jenkins</span>
                        <span class="tech-badge"><i class="fas-chart-pie"></i> Prometheus/Grafana</span>
                        <span class="tech-badge"><i class="fas-shield-alt"></i> Trivy</span>
                        <span class="tech-badge"><i class="fab-git-alt"></i> Git</span>
                    </div>
                    <div style="margin-left:2.8rem; margin-top:0.5rem; font-size:0.9rem; background:#f8fbfe; padding:0.4rem 1rem; border-radius:20px;">
                        ✅ Multi‑stage Docker builds · K8s rolling updates · Canary with istio · security scan with Trivy
                    </div>
                </div>

                <!-- project 2: 3‑tier project -->
                <div class="project-block">
                    <div class="project-title">
                        <i class="fas fa-layer-group"></i> 
                        <span>3‑Tier application (full stack)</span>
                    </div>
                    <div class="project-desc">
                        <i class="fas fa-arrow-right" style="color:#0f4c75;"></i> Scalable three‑tier (web, app, DB) on Azure + AWS
                    </div>
                    <div class="project-tech">
                        <span class="tech-badge"><i class="fab-microsoft"></i> Azure VM</span>
                        <span class="tech-badge"><i class="fas-database"></i> RDS/Postgres</span>
                        <span class="tech-badge"><i class="fab-docker"></i> Docker compose</span>
                        <span class="tech-badge"><i class="fas-code"></i> React/Node</span>
                        <span class="tech-badge"><i class="fas-chart-bar"></i> Grafana</span>
                        <span class="tech-badge"><i class="fas-shield-alt"></i> Trivy</span>
                    </div>
                    <div style="margin-left:2.8rem; margin-top:0.5rem; font-size:0.9rem; background:#f8fbfe; padding:0.4rem 1rem; border-radius:20px;">
                        ✅ VPC peering · Auto scaling · Observability with Prometheus + Grafana dashboards
                    </div>
                </div>
            </div>
        </div>

        <!-- dedicated MONITORING section (prometheus, grafana, trivy) -->
        <div class="monitoring">
            <h2><i class="fas fa-eye"></i> Observability & security stack</h2>
            <div class="monitoring-stack">
                <span><i class="fas fa-chart-line"></i> Prometheus (metrics)</span>
                <span><i class="fas fa-chart-bar"></i> Grafana (dashboards)</span>
                <span><i class="fas fa-shield-virus"></i> Trivy (vulnerability scan)</span>
                <span style="background:transparent; border:1px dashed #2e6a9a;"><i class="fas fa-bell"></i> Alertmanager · Loki (future)</span>
            </div>
            <div style="margin-top:1.4rem; background:#e2effb; border-radius:2rem; padding:0.8rem 1.5rem; color:#1e3f5e;">
                <i class="fas fa-check-circle" style="margin-right:0.5rem;"></i> 
                Integrated security scanning in CI/CD (Trivy) & real‑time cluster monitoring with Grafana dashboards.
            </div>
        </div>

        <!-- Footer: full contact details, location, email, phone repeated for completeness -->
        <div class="footer-details">
            <div class="email-phone">
                <a href="mailto:balarajuvelpula3@gmail.com"><i class="fas fa-envelope"></i> balarajuvelpula3@gmail.com</a>
                <a href="tel:+919347291252"><i class="fas fa-phone-alt"></i> +91 93472 91252</a>
            </div>
            <div class="location-solid">
                <i class="fas fa-map-marker-alt"></i> Hyderabad, Telangana · 500001
            </div>
        </div>

        <!-- tiny footnote with current year (just for realism) -->
        <div style="text-align: right; margin-top: 1rem; font-size: 0.8rem; opacity: 0.5; letter-spacing: 0.5px;">
            <i class="far fa-clock"></i> 2025 · Balu portfolio (real‑time ready)
        </div>
    </div>
</body>
</html>
