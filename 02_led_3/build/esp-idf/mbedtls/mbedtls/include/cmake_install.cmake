# Install script for directory: U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/02_led_3")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "U:/2399975528/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32s3-elf-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/build_info.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_dependencies.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "U:/2399975528/esp/v5.3.3/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

