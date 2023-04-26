using CopsSnitch.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CopsSnitch.Views
{
    /// <summary>
    /// Логика взаимодействия для CopsPage.xaml
    /// </summary>
    public partial class CopsPage : Page
    {
        public CopsPage()
        {
            InitializeComponent();
        }

        private void CopsAdd_Click(object sender, RoutedEventArgs e)
        {
            WindowEditCops WA = new WindowEditCops(null);
            WA.Show();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            WindowEditCops WEG = new WindowEditCops((sender as Button).DataContext as Cops);
            WEG.Show();
        }

        private void CopsDelete_Click(object sender, RoutedEventArgs e)
        {
            var CopsForRemoving = ApplicationPC.SelectedItems.Cast<Cops>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {CopsForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    CopsBaseEntities.GetContext().Cops.RemoveRange(CopsForRemoving);
                    CopsBaseEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    ApplicationPC.ItemsSource = CopsBaseEntities.GetContext().Cops.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                CopsBaseEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                ApplicationPC.ItemsSource = CopsBaseEntities.GetContext().Cops.ToList();
            }
        }
    }
}
