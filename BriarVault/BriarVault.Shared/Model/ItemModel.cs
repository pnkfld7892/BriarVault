using BriarVault.Shared.Enum;

namespace BriarVault.Shared.Model;

public class ItemModel
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public Category Category { get; set; }
    
}