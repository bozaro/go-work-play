def add_local_repository(name, path, mapping=None):
    if mapping != None:
        for alias, target in mapping.items():
            if "@" + name == target:
                name = alias[1:]
                break

    if not native.existing_rule(name):
        native.local_repository(
            name=name,
            path=path,
        )
