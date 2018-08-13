# Bellboy

**Tool to log time on Freckle**

## Installation

### From Binary
- Download the executable file 

### From the repository
- Clone the repository
- Run `mix escript.build`

## How to use

In order to use Bellboy, you need to know two things: the subdomain of your company and an access token from Freckle. To get this access token, follow these steps

- Login to Freckle
- On the left sidebar, click on Connected Apps
- Select the "Freckle API" tab
- Click the "Settings…" beside "Personal Access Token"
- Follow the prompts to generate Personal Access Token

With these information, edit the content of `config.sample` and store it in `~/.bellboy`

Start with `./bellboy -h`
