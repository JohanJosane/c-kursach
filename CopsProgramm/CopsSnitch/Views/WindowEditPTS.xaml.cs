using CopsSnitch.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
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
    /// Логика взаимодействия для WindowEditPTS.xaml
    /// </summary>
    public partial class WindowEditPTS : Window
    {
        private PTS _currentPTS= new PTS();

        public WindowEditPTS(PTS selectedPTS)
        {
            InitializeComponent();

            if (selectedPTS != null)
            {
                _currentPTS = selectedPTS;
            }

            DataContext = _currentPTS;
            CmbOwner.ItemsSource = CopsBaseEntities.GetContext().Owner.ToList();
        }

        //Код для проверки редактирования
        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder Errors = new StringBuilder();
            var CurrentOwner = CmbOwner.SelectedItem as Owner;

            if (CurrentOwner == null)
                Errors.AppendLine("Выберите статус");
            if (String.IsNullOrEmpty(_currentPTS.RegistrNumber))
                Errors.AppendLine("Укажите номер автомобиля");
            if (String.IsNullOrEmpty(_currentPTS.NumberVIN))
                Errors.AppendLine("Укажите VIN номер автомобиля");
            if (String.IsNullOrEmpty(_currentPTS.CarBrand))
                Errors.AppendLine("Укажите марку автомобиля");
            if (String.IsNullOrEmpty(_currentPTS.CarModel))
                Errors.AppendLine("Укажите модель автомобиля");
            if (String.IsNullOrEmpty(_currentPTS.HP))
                Errors.AppendLine("Укажите кол-во лошадинных сил автомобиля");
            if (String.IsNullOrEmpty(_currentPTS.TipTS))
                Errors.AppendLine("Укажите тип автомобиля");
            if (String.IsNullOrEmpty(_currentPTS.ColorCar))
                Errors.AppendLine("Укажите цвет автомобиля");
            if (textBoxDate.SelectedDate == null)
                Errors.AppendLine("Укажите дату выпуска");


            if (Errors.Length > 0)
            {
                MessageBox.Show(Errors.ToString());
                return;
            }

            if (_currentPTS.Id >= 0)
            {
                CopsBaseEntities.GetContext().PTS.AddOrUpdate(_currentPTS);
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
