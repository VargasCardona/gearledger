
# 🎸 GearLedger

![Repo Size](https://img.shields.io/github/repo-size/VargasCardona/gearledger)
![License](https://img.shields.io/github/license/VargasCardona/gearledger)
![Last Commit](https://img.shields.io/github/last-commit/VargasCardona/gearledger)

> **GearLedger** is a modern, minimalist REST API built with Spring Boot that empowers guitarists to manage their gear collection with ease. Whether you're a tone-chasing pedalhead or a proud collector of vintage guitars, GearLedger keeps your rig organized.

---

## ✨ Features

- 🔁 Full **CRUD** operations for your gear (Guitars, Pedals, Amps, etc.)
- 🧠 Clean and **layered architecture**: Controller → Service → Repository
- 🔍 **Filter gear by type** to quickly find what you're looking for
- 🌐 Follows RESTful API **best practices**
- 💾 Includes **H2** in-memory database for instant testing (switchable to MySQL/PostgreSQL)
- 🧪 Ready for **unit testing and code coverage** with JUnit, Mockito & JaCoCo
- 🛠️ Easily extendable for authentication, user management, and tagging

---

## ⚙️ Tech Stack

| Technology     | Purpose                        |
|----------------|--------------------------------|
| ☕ Java 17      | Modern Java language features  |
| 🚀 Spring Boot 3.x | Robust backend framework     |
| 🌍 Spring Web   | RESTful API development        |
| 🗃️ Spring Data JPA | Simplified DB interaction     |
| 🧪 JUnit & Mockito | Testing and mocking          |
| 📊 JaCoCo       | Test coverage reporting        |
| 🛢️ H2 Database  | Lightweight in-memory DB       |
| 🧱 Maven         | Dependency and build management |
| ✂️ Lombok (optional) | Less boilerplate, cleaner code |

---

## 🚀 Getting Started

### ✅ Prerequisites

- Java 17+ installed
- Maven 3.8+ installed

### ▶️ Clone and Run

```bash
git clone https://github.com/VargasCardona/gearledger.git
cd gearledger
./mvnw spring-boot:run
```

The app will be available at: `http://localhost:8080/api/gear`

### 🧪 Run Tests

```bash
./mvnw test
```

To generate coverage reports (if configured):

```bash
./mvnw jacoco:report
```

Coverage will be available in `target/site/jacoco/index.html`.

---

## 📁 Example Gear Entry

```json
{
  "name": "Boss DS-1",
  "type": "Pedal",
  "brand": "Boss",
  "description": "Classic distortion pedal for aggressive tone."
}
```

---

## 🔄 Future Improvements

- ✅ User authentication & authorization (e.g. Spring Security)
- 🏷️ Tagging gear (e.g. “Live”, “Studio”, “Wishlist”)
- 🖼️ Image uploads and media management
- 📦 Docker support for easy deployment
- ☁️ Cloud integration (AWS S3, RDS)

---

## 👨‍💻 Author

**Nicolás Vargas Cardona**  
📎 [GitHub Profile](https://github.com/VargasCardona)

---

## 📄 License

Licensed under the [GNU General Public License](https://www.gnu.org/licenses/).  
See the [LICENSE](./LICENSE) file for details.

---

> Made with 🎵 and ☕ for fellow musicians.
