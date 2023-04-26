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
using System.Windows.Threading;
using CopsSnitch.Model;
using CopsSnitch.Views;

namespace CopsSnitch
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer timer = new DispatcherTimer();
        string code;
        public MainWindow()
        {
            InitializeComponent();

        }

        public static class Globals
        {
            public static int userrole;
            public static User userinfo { get; set; }
        }

        //Код для кода доступа в систему
        private void gencode()
        {
            code = null;
            Random random = new Random();
            string[] massiveCharacters = new string[] { "2", "6", "7", "8", "a", "y", "e" };
            for (int i = 0; i < 3; i++)
            {
                code += massiveCharacters[random.Next(0, massiveCharacters.Length)];
            }
            textBoxCodSpawn.Text = code;
            timer.Interval = TimeSpan.FromSeconds(10);
            timer.Tick += Timer_Tick;
            timer.Start();

            textBoxCod.IsEnabled = true;
            Vhod.IsEnabled = true;
            Cod.IsEnabled = true;
            Cod.Visibility = Visibility.Visible;
        }

        //Код времени ожидания ввода кода
        void Timer_Tick(object sender, EventArgs e)
        {
            code = null;
            MessageBox.Show("Закончилось время ожидания. Повторите попытку");
            timer.Stop();
        }

        //Код обновления кода для входа в систему
        private void Cod_Click(object sender, RoutedEventArgs e)
        {
            timer.Stop();
            gencode();
            Cod.Focus();
        }

        //Код проверки логина
        private void LogBlock_Up(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                using (var db = new CopsBaseEntities())
                {
                    var login = db.User.AsNoTracking().FirstOrDefault(l => l.Login == textBoxLogin.Text.Trim());
                    if (login == null)
                    {
                        MessageBox.Show("Неверный логин");
                    }
                    else
                    {
                        textBoxPassword.IsEnabled = true;
                        textBoxLogin.IsEnabled = false;
                        textBoxPassword.Focus();
                    }
                }
            }
        }

        //Код проверки пароля
        private void PassBlock_Up(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                using (var db = new CopsBaseEntities())
                {
                    var login = db.User.AsNoTracking().FirstOrDefault(l => l.Login == textBoxLogin.Text.Trim() & l.Password == textBoxPassword.Password.Trim());
                    if (login == null)
                    {
                        MessageBox.Show("Неверный пароль");
                    }
                    else
                    {
                        textBoxPassword.IsEnabled = false;
                        gencode();
                        Cod.Focus();
                    }
                }
            }
        }

        //Код для кнопки "Войти"
        private void Vhod_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new CopsBaseEntities())
            {
                var auth = db.User.AsNoTracking().FirstOrDefault(m => m.Login == textBoxLogin.Text && m.Password == textBoxPassword.Password);
                if (auth != null & code == textBoxCod.Text)
                {
                    timer.Stop();
                    Globals.userrole = auth.RoleId;
                    Globals.userinfo = auth;
                    Main Mwin = new Main();
                    Mwin.Show();
                    Close();
                }
                else
                {
                    MessageBox.Show("Неверно написан код, повторите снова!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
                    timer.Stop();
                }
            }
        }
    }
}

