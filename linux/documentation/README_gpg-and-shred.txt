# NOTE: The Mnemonic seed is all I need to restore the wallets from any device! This must be kept encrypted as often as possible!
# IMPORTANT: Shred the plaintext version ASAP after use:
# shred -zvu -n 5 [filename]
#
# To decrypt:
# gpg -a -o [decrypted file] -d [file to decrypt.asc]
#
# To symmetric encrypt:
# gpg -a -c --cipher-algo=AES256 -o [output file.asc] [file to encrypt]
#
#
# IMPORTANT: After done using gpg, clear its password cache by forcing it to restart:
# gpgconf --kill gpg-agent
#
# (to confirm, attempt to use it again and ensure that it prompts for the passphrase)
#
# To clear the clipboard:
# xsel -c

