# Inventory System — Java Swing + Spring Boot

This package includes:
- `backend/` — Spring Boot REST API (Maven)
- `desktop-client/` — Java Swing desktop client (source)
- `web-frontend/` — Simple static web UI (single HTML file)
- `sql/schema.sql` — SQL schema and sample data

## Quick start

### Backend (locally)
1. Configure `backend/src/main/resources/application.properties` with your MySQL credentials.
2. From `backend/`: `mvn spring-boot:run`
3. API available at `http://localhost:8080/api/products`

### Desktop client
- Edit base URL in `desktop-client/src/com/inventory/client/ProductClientApp.java` (default `http://localhost:8080`).
- Compile and run the client with your preferred Java IDE or `javac`/`java`. The client uses Jackson; add `jackson-databind` to classpath.

### Web frontend
- Edit `web-frontend/index.html` → set backend URL in the input field (default `http://localhost:8080`).
- Deploy `web-frontend/` as static files (Netlify Drop, GitHub Pages, or Replit static hosting).

## Deploying for free (no local installs)
- **Backend**: Upload `backend/` to Replit via *Import from ZIP*. In Replit, run `mvn -DskipTests package` and then `java -jar target/inventory-backend-1.0.0.jar`. Use a hosted MySQL (Aiven or similar) and configure `application.properties`.
- **Web frontend**: Use Netlify Drop (drag `web-frontend/` folder) or Replit static project, or upload to GitHub Pages.

## Notes
- The Swing client is a desktop application and cannot run in the browser.
- For production use add validation, exception handling, DTO mapping, and authentication.
