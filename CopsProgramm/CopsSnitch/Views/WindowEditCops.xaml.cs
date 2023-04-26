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
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CopsSnitch.Views
{
    /// <summary>
    /// Логика взаимодействия для WindowEditCops.xaml
    /// </summary>
    public partial class WindowEditCops : Window
    {
        private Cops _currentCops = new Cops();
        public WindowEditCops(Cops selectedCops)
        {
            InitializeComponent();

            if (selectedCops != null)
            {
                _currentCops = selectedCops;
            }


            DataContext = _currentCops;
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder Errors = new StringBuilder();
            if (String.IsNullOrEmpty(_currentCops.FIO))
                Errors.AppendLine("Введите ФИО");
            if (String.IsNullOrEmpty(_currentCops.NumberPhone))
                Errors.AppendLine("Введите номер телефона");
            if (String.IsNullOrEmpty(_currentCops.PostCops))
                Errors.AppendLine("Введите должность");


            if (Errors.Length > 0)
            {
                MessageBox.Show(Errors.ToString());
                return;
            }

            if (_currentCops.Id >= 0)
            {
                CopsBaseEntities.GetContext().Cops.AddOrUpdate(_currentCops);
            }

            try
            {
                CopsBaseEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация о сотруднике сохранена");
                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
