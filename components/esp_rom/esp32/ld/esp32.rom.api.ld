/**
 * ROM APIs
 */

/* user may provide newer version of tjpgd */
/* so here directly assign the symbols with the ROM API address to make sure one from rom is correctly linked */
PROVIDE ( esp_rom_tjpgd_decomp = 0x400613e8 );
PROVIDE ( esp_rom_tjpgd_prepare = 0x40060fa8 );

PROVIDE ( esp_rom_crc32_le = crc32_le );
PROVIDE ( esp_rom_crc16_le = crc16_le );
PROVIDE ( esp_rom_crc8_le  = crc8_le );
PROVIDE ( esp_rom_crc32_be = crc32_be );
PROVIDE ( esp_rom_crc16_be = crc16_be );
PROVIDE ( esp_rom_crc8_be  = crc8_be );

PROVIDE ( esp_rom_gpio_pad_select_gpio    = gpio_pad_select_gpio );
PROVIDE ( esp_rom_gpio_pad_pullup_only    = gpio_pad_pullup );
PROVIDE ( esp_rom_gpio_pad_set_drv        = gpio_pad_set_drv );
PROVIDE ( esp_rom_gpio_pad_unhold         = gpio_pad_unhold );
PROVIDE ( esp_rom_gpio_connect_in_signal  = gpio_matrix_in );
PROVIDE ( esp_rom_gpio_connect_out_signal = gpio_matrix_out );

PROVIDE ( esp_rom_efuse_mac_address_crc8       = esp_crc8 );
PROVIDE ( esp_rom_efuse_get_flash_gpio_info    = ets_efuse_get_spiconfig );
PROVIDE ( esp_rom_efuse_is_secure_boot_enabled = ets_efuse_secure_boot_enabled );

PROVIDE ( esp_rom_uart_flush_tx       = uart_tx_flush );
PROVIDE ( esp_rom_uart_tx_one_char    = uart_tx_one_char );
PROVIDE ( esp_rom_uart_tx_wait_idle   = uart_tx_wait_idle );
PROVIDE ( esp_rom_uart_rx_one_char    = uart_rx_one_char );
PROVIDE ( esp_rom_uart_rx_string      = UartRxString );
PROVIDE ( esp_rom_uart_set_as_console = uart_tx_switch );
PROVIDE ( esp_rom_uart_putc           = ets_write_char_uart );

/* wpa_supplicant re-implements the MD5 functions: MD5Init, MD5Update, MD5Final */
/* so here we directly assign the symbols with the ROM API address */
PROVIDE ( esp_rom_md5_init   = 0x4005da7c );
PROVIDE ( esp_rom_md5_update = 0x4005da9c );
PROVIDE ( esp_rom_md5_final  = 0x4005db1c );

PROVIDE ( esp_rom_printf   = ets_printf );
PROVIDE ( esp_rom_delay_us = ets_delay_us );
PROVIDE ( esp_rom_install_uart_printf = ets_install_uart_printf );
PROVIDE ( esp_rom_get_reset_reason = rtc_get_reset_reason );

PROVIDE ( esp_rom_spiflash_set_bp = esp_rom_spiflash_lock );
PROVIDE ( esp_rom_spiflash_write_enable = SPI_write_enable);
