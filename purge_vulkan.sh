sudo nala purge vulkan-tools libvulkan1 libvulkan1:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 vulkan-validationlayers vulkan-validationlayers-dev libvulkan-dev vulkan-tools vulkan-sdk && apt autoremove --purge && sudo apt clean && sudo apt autoclean

# DO NOT DO THIS UNLESS EXTREMELY NECESSARY