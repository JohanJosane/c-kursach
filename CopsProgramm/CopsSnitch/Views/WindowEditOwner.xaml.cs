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
    /// Логика взаимодействия для WindowEditOwner.xaml
    /// </summary>
    public partial class WindowEditOwner : Window
    {
        private Owner _currentOwner = new Owner();
        public WindowEditOwner(Owner selectedOwner)
        {
            InitializeComponent();

            if (selectedOwner != null)
            {
                _currentOwner = selectedOwner;
            }

            DataContext = _currentOwner;
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder Errors = new StringBuilder();
            if (String.IsNullOrEmpty(_currentOwner.FIO))
                Errors.AppendLine("Введите ФИО");
            if (String.IsNullOrEmpty(_currentOwner.NumberPhone))
                Errors.AppendLine("Введите номер телефона");
            if (textBoxDateBRZD.SelectedDate == null)
                Errors.AppendLine("Введите дату рождения");
            if (String.IsNullOrEmpty(_currentOwner.ResidentialAddress))
                Errors.AppendLine("Введите адрес проживания");
            if (String.IsNullOrEmpty(_currentOwner.DriversLicense))
                Errors.AppendLine("Введите водительское удостоверение");

            if (Errors.Length > 0)
            {
                MessageBox.Show(Errors.ToString());
                return;
            }

            if (_currentOwner.Id >= 0)
            {
                CopsBaseEntities.GetContext().Owner.AddOrUpdate(_currentOwner);
            }

            try
            {
                CopsBaseEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация о водители сохранена!");
                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
