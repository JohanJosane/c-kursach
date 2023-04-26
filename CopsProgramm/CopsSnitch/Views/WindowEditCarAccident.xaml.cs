using CopsSnitch.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Data.Entity.Validation;
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
using System.Windows.Shapes;

namespace CopsSnitch.Views
{
    /// <summary>
    /// Логика взаимодействия для WindowEditCarAccident.xaml
    /// </summary>
    public partial class WindowEditCarAccident : Window
    {
        private CarAccident _currentCarAccident = new CarAccident();
        public WindowEditCarAccident(CarAccident selectedAccident)
        {
            InitializeComponent();

            if (selectedAccident != null)
            {
                _currentCarAccident = selectedAccident;
            }

            DataContext = _currentCarAccident;
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder Errors = new StringBuilder();

            if (String.IsNullOrEmpty(_currentCarAccident.Place))
                Errors.AppendLine("Введите место проишествия");
            if (_currentCarAccident.Date == null)
                Errors.AppendLine("Введите дату проишествия");

            if (Errors.Length > 0)
            {
                MessageBox.Show(Errors.ToString());
                return;
            }

            if (_currentCarAccident.Id >= 0)
            {
                CopsBaseEntities.GetContext().CarAccident.AddOrUpdate(_currentCarAccident);
            }

            try
            {
                CopsBaseEntities.GetContext().SaveChanges();
                MessageBox.Show("Проишествие добавлено");
                Close();
            }
            catch (DbEntityValidationException ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
