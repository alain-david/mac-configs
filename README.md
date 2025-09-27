# MacOS Configs

Estas son las configuraciones que yo uso en mi instalacion de MacOS para tener el sistema lo más parécido a como lo uso rápido.

## System Preferences

- Login Apple ID

### Networks

- Activar Firewall

### General

- Actualizar el sistema

### Appearance

- Theme Dark
- Show scroll bars: When scrolling.

### Menu Bar

- Show Icons When Active

### Desktop & Dock

- Ajustar Dock
- Minimize windows into application icon: false
- Automatically hide and show the dock: true
- Show indicators for open apps: true
- Show suggested apps: false
- Hot Corners: empty

### Display

- Night Shift: 7pm to 7 am.

### Spotlight

- Spotlight (Quitar fonts, images, files etc).
- IPhone Apps: false

### Internet Accounts

- Add Google accounts.

### Keyboard

- U.S. International - PC

### Mouse

- Natural scrolling: false

### Trackpad

- Enable tap to click with one finger.
- Scroll & Zoom: Uncheck all apart from Zoom in and out.

### Finder Settings

- General: Show items(false); New Finder windows(alain).
- SideBar: Perzonalizar.
- Advanced: Show Filename(true);

## Instalar Xcode command line tools:

```bash
xcode-select --install
```

## Instalar Homebrew

Desde la web:

- [HomeBrew WebSite](https://brew.sh)

o usando:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Agregar Homebrew al path.

```bash
echo >> /Users/alain/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/alain/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Comprobar que todo este bien:

```bash
brew doctor
```

## Instalar Tools:

```bash
brew install git \
    ranger \
    neovim
```

## Instalar Apps:

```bash
brew install --cask font-jetbrains-mono-nerd-font \
    alacritty \
    google-chrome \
    insomnia \
    visual-studio-code
```

### Configurar Git:

```bash
git config --global user.name "Alain Puga"
git config --global user.email "kiritothepunisher@gmail.com"
git config --global credential.helper osxkeychain
git config --global init.defaultBranch main
```

## Instalar Oh My Zsh

Desde la web:

- [Oh my zsh](https://ohmyz.sh/#install)

o usando:

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### Instalar Plugin Autosuggestions:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Clonar repo:

```bash
git clone https://github.com/alain-david/mac-configs.git
```

## FrontEnd

### Angular

Instalar NodeJS y Yarn:

```bash
# Descarga e instala Node.js:
brew install node@22

# Verifica la versión de Node.js:
node -v # Debería mostrar "v22.14.0".

# Descarga e instala Yarn:
corepack enable yarn

# Verifica la versión de Yarn:
yarn -v
```

Instalar Angular CLI:

```bash
sudo yarn global add @angular/cli
```

## Backend

- Docker
- .NET 8

### .NET

Descargar desde:

- [Microsoft Official](https://dotnet.microsoft.com/es-es/download)

### Docker:

#### Instalar Docker y Colima con HomeBrew:

```bash
brew install docker colima
```

#### Iniciar Colima:

```bash
colima start --cpu 4 --memory 8 --disk 60
```

(Ejemplo: 4 CPU, 8 GB RAM, 60 GB de disco para contenedores.)

#### Probar docker:

```bash
docker run hello-world
```

## Mobile

- Flutter
- IOS Environment
- Android Environment

### IOS Environment

Instalar Ruby Env:

```bash
brew install rbenv ruby-build rbenv-default-gems rbenv-gemset
```

Instalar Cocoapods:

```bash
brew install cocoapods
```

## BD

- MongoDB Compass
- RedisInsight
- Table Plus

## Imagenes

- GIMP

## Uninstallers:

- [AppCleaner (gratis)](https://freemacsoft.net/appcleaner/)
