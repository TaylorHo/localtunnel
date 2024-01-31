# localtunnel Always Up with Docker


This Docker configuration allows you to expose a specific port of your localhost to the internet using [LocalTunnel](https://localtunnel.github.io/www/). It ensures that the connection is always accessible on a specific subdomain with a TLD (top-level domain) of your choice.

## Prerequisites

- [Docker](https://www.docker.com/) installed on your machine.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/TaylorHo/localtunnel.git
    ```

2. Navigate to the project directory:

    ```bash
    cd localtunnel
    ```

3. Configure the environment variables to set your preferred values for `PORT` and `SUBDOMAIN` on the **docker-compose.yml**.

4. Build and run the Docker container:

    ```bash
    docker-compose up -d
    ```

   This will start the LocalTunnel service, making your specified port accessible on the internet.

5. To stop the service:

    ```bash
    docker-compose down
    ```

## Configuration

You can customize the following environment variables in the **docker-compose.yml** file:

- `PORT`: The local port you want to expose. Default is set to 80.
- `SUBDOMAIN`: The subdomain you want for your LocalTunnel URL. Default is set to "example".

## Notes

- The Docker container is configured to restart automatically in case the connection is closed or dropped.

- Ensure that the specified subdomain is unique, as it needs to be globally unique within the LocalTunnel service.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.