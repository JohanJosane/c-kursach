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
using System.Windows.Shapes;


namespace CopsSnitch.Views
{
    /// <summary>
    /// Логика взаимодействия для Main.xaml
    /// </summary>
    public partial class Main : Window
    {
        public Main()
        {
            InitializeComponent();
            Frame1.Navigate(new OwnerPage());
            Manager.Frame1 = Frame1;
        }

        //Код для кнопки перехеда на страницу ДТП
        private void CarAccident_Click(object sender, RoutedEventArgs e)
        {
            Manager.Frame1.Navigate(new CarAccidentPage());
        }

        //Код для кнопки перехеда на страницу Сотрудников
        private void Cops_Click(object sender, RoutedEventArgs e)
        {
            Manager.Frame1.Navigate(new CopsPage());
        }

        //Код для кнопки выходы из программы
        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            MainWindow Auth = new MainWindow();
            Auth.Show();
            Close();
        }

        //Код для кнопки перехеда на страницу Водителей
        private void Owner_Click(object sender, RoutedEventArgs e)
        {
            Manager.Frame1.Navigate(new OwnerPage());
        }       
    }
}
