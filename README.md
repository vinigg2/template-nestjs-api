# Boilerplate Nestjs

This project is developed following the principles of SOLID, Clean Code, and DDD (Domain-Driven Design). It leverages key tools and technologies, including Docker and Docker Compose with integration to MySQL. Additionally, it makes use of LocalStack to simulate AWS services locally, with integration of the S3 service for file storage.

## Prerequisites

Make sure you have the following tools installed:

- Docker
- Docker Compose
- Yarn

## How to Use

1. Clone this repository to your local machine:

    ```
    git clone git@github.com:vinigg2/template-nestjs-api.git
    ```

2. Navigate to the project directory:

    ```
    cd template-nestjs-api
    ```

3. Copy .env.example to .env:

    ```
    cp .env.example .env
    ```

4. Install the project dependencies with Yarn:

    ```
    yarn install
    ```

5. Run the following command to start the Docker environment:

    ```
    docker-compose up -d
    ```

6. Access the project in the browser using the following URL:

    ```
    http://localhost:4000
    ```

## Contributing

Feel free to contribute to this project. Just follow the contribution guidelines and submit a pull request.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
