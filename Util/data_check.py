from matplotlib import pyplot as plt
import seaborn as sns
import scipy.stats as stats
from scipy.stats import ttest_ind, kruskal


def compare_distributions(original_df, synthetic_df):
    """
    Vergleicht die Verteilungen von zwei DataFrames.

    :param original_df: Originaler DataFrame
    :param synthetic_df: Synthetischer DataFrame
    """
    # Histogramme und Dichtekurven für jede Spalte
    for column in original_df.columns:
        if column not in ['participant_id', 'test_id']:  # IDs auslassen
            plt.figure(figsize=(12, 6))
            sns.histplot(original_df[column], kde=True, color='blue', label='Original', stat='density')
            sns.histplot(synthetic_df[column], kde=True, color='red', label='Synthetic', stat='density')
            plt.title(f'Verteilung von {column}')
            plt.legend()
            plt.show()

            # Vergleiche die Mittelwerte
            compare_means(original_df, synthetic_df, column)


# Funktion zur Durchführung der Tests
def normality_test(data, column):
    """
    Testet, ob die Daten normalverteilt sind.
    :param data: dataframe to check
    :param column: column to check
    :return: true if normal distributed, false if not
    """
    stat, p_value = stats.shapiro(data[column])
    return p_value > 0.05  # Normal verteilt, wenn p-Wert > 0.05


def compare_means(original, synthetic, column):
    """
    Vergleicht die Mittelwerte von zwei DataFrames.
    :param original: dataframe with original data
    :param synthetic: dataframe with synthetic/generated data
    :param column: column to compare
    :return: none
    """
    is_normal_original = normality_test(original, column)
    is_normal_synthetic = normality_test(synthetic, column)

    print(f'Normalitätstest für {column}:')
    print(f'Originaldaten: {"Normalverteilt" if is_normal_original else "Nicht-normalverteilt"}')
    print(f'Generierte Daten: {"Normalverteilt" if is_normal_synthetic else "Nicht-normalverteilt"}')

    if is_normal_original and is_normal_synthetic:
        # t-Test anwenden
        stat, p_value = ttest_ind(original[column], synthetic[column], equal_var=False)
        print(f't-Test für {column}:')
    else:
        # Kruskal-Wallis H-Test anwenden
        stat, p_value = kruskal(original[column], synthetic[column])
        print(f'Kruskal-Wallis H-Test für {column}:')

    print(f'Statistik = {stat}, p-Wert = {p_value}')
    if p_value > 0.05:
        print("Die Verteilungen sind ähnlich (Nullhypothese nicht verworfen).")
    else:
        print("Die Verteilungen sind signifikant unterschiedlich (Nullhypothese verworfen).")
    print()

