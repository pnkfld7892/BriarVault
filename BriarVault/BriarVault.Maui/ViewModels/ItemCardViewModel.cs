using BriarVault.Shared.Enum;
using BriarVault.Shared.Model;
using CommunityToolkit.Mvvm.ComponentModel;

namespace BriarVault.Maui.ViewModels;

public partial class ItemCardViewModel : ObservableObject
{
    [ObservableProperty]
    public partial int Id { get; set; }

    [ObservableProperty]
    string _name;

    [ObservableProperty]
    string _description;

    [ObservableProperty]
    Category category;
}