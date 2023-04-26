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
    /// Логика взаимодействия для OwnerPage.xaml
    /// </summary>
    public partial class OwnerPage : Page
    {     
        public OwnerPage()
        {
            InitializeComponent();
        }

        private void PTS_Click(object sender, RoutedEventArgs e)
        {
            Manager.Frame1.Navigate(new PTSPage());
        }

        private void EditDrivers_Click(object sender, RoutedEventArgs e)
        {
            WindowEditOwner WEG = new WindowEditOwner(null);
            WEG.Show();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            WindowEditOwner WEG = new WindowEditOwner((sender as Button).DataContext as Owner);
            WEG.Show();
        }

        private void DeleteDrivers_Click(object sender, RoutedEventArgs e)
        {
            var DriverForRemoving = OwnerGP.SelectedItems.Cast<Owner>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {DriverForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    CopsBaseEntities.GetContext().Owner.RemoveRange(DriverForRemoving);
                    CopsBaseEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    OwnerGP.ItemsSource = CopsBaseEntities.GetContext().Owner.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void UpdateGuest_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                CopsBaseEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                OwnerGP.ItemsSource = CopsBaseEntities.GetContext().Owner.ToList();
            }
        }
    }
}
