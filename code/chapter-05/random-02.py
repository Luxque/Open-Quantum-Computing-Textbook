import secrets

def secrets_roll():
    return secrets.randbelow(6) + 1

print(f"Roll Result (Secrets): {secrets_roll()}")
