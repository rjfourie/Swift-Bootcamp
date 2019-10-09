let color_test = Color.Spades
print("color test for ", color_test, "\n")

print("Raw value for the Colors:")
for color in Color.allColors {
    print(color.rawValue);
}

print("Raw value for the value:")
for value in Value.allValues {
    print(value.rawValue);
}