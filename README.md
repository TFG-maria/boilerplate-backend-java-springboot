# Boilerplate Spring Boot - Clean Architecture

Este es un proyecto **boilerplate** basado en **Clean Architecture** utilizando **Spring Boot**, **JPA/Hibernate** con **PostgreSQL** y documentación automática de API con **OpenAPI (springdoc-openapi)**. Su objetivo es servir como punto de partida limpio y desacoplado para nuevos desarrollos backend.

## Estructura del Proyecto

La estructura sigue los principios de Clean Architecture, separando claramente las responsabilidades en capas. El ejemplo implementa una única entidad de dominio: `Post`.

```
src
├── main
│   ├── java
│   │   └── com
│   │       └── example
│   │           └── boilerplate
│   │               ├── application      # Casos de uso (servicios de aplicación)
│   │               ├── domain           # Lógica de negocio (entidades, repositorios)
│   │               └── infrastructure   # Implementación de detalles (controladores, repositorios JPA)
│   └── resources
│       └── application.properties       # Configuración de la aplicación
└── test
    └── java
        └── com
            └── example
                └── boilerplate
                    # Pruebas unitarias y de integración
```

## Descripción de las Capas

- **domain/**: Contiene la entidad principal (`Post`) y la interfaz del repositorio.
- **application/**: Casos de uso y lógica de aplicación (servicios).
- **infrastructure/**: Implementación de controladores REST y repositorios JPA.
- **resources/**: Configuración de la aplicación, incluyendo la conexión a PostgreSQL.

## Requisitos Previos

- **Java 21** o superior
- **Maven**
- **PostgreSQL** (en ejecución y accesible)

## Instalación y Ejecución

1. **Clona el repositorio**:

   ```bash
   git clone https://github.com/tuusuario/boilerplate-backend-java-springboot.git
   cd boilerplate-backend-java-springboot
   ```

2. **Configura la base de datos** en `src/main/resources/application.properties`:

   ```
   spring.datasource.url=jdbc:postgresql://localhost:5432/tu_basededatos
   spring.datasource.username=tu_usuario
   spring.datasource.password=tu_password
   spring.jpa.hibernate.ddl-auto=update
   ```

3. **Construye el proyecto**:

   ```bash
   mvn clean install
   ```

4. **Ejecuta la aplicación**:

   ```bash
   mvn spring-boot:run
   ```

5. **Accede a la documentación OpenAPI** en [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)

## Buenas Prácticas

- Mantén la lógica de negocio en la capa de dominio.
- Usa servicios de aplicación para orquestar casos de uso.
- Implementa repositorios como interfaces en dominio y sus detalles en infraestructura.
- Documenta tu API usando OpenAPI.
- Escribe pruebas unitarias y de integración.
- Configura correctamente la conexión a PostgreSQL en `application.properties`.

---

Este boilerplate está listo para extenderse con nuevas entidades, casos de uso y controladores siguiendo Clean Architecture.