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
    /// Логика взаимодействия для WindowEditProtocol.xaml
    /// </summary>
    public partial class WindowEditProtocol : Window
    {
        private Protocol _currentProtocol = new Protocol();
        public WindowEditProtocol(Protocol selectedProtocol)
        {
            InitializeComponent();

            if (selectedProtocol != null)
            {
                _currentProtocol = selectedProtocol;
            }

            DataContext = _currentProtocol;
            OwnerId.ItemsSource = CopsBaseEntities.GetContext().Owner.ToList();
            CopsId.ItemsSource = CopsBaseEntities.GetContext().Cops.ToList();
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder Errors = new StringBuilder();
            var CurrentOwner = OwnerId.SelectedItem as Owner;
            var CurrentCops = CopsId.SelectedItem as Cops;

            _currentProtocol.OwnerId = CurrentOwner.Id;
            _currentProtocol.CopsId = CurrentCops.Id;


            if (CurrentOwner == null)
                Errors.AppendLine("Выберите виновника");
            if (CurrentCops == null)
                Errors.AppendLine("Выберите полицейского");
            if (_currentProtocol.IncidentAmount == null)
                Errors.AppendLine("Установите сумму штрафа");
            if (_currentProtocol.DateOfPayment == null)
                Errors.AppendLine("Укажите дату оплаты штрафа");


            if (Errors.Length > 0)
            {
                MessageBox.Show(Errors.ToString());
                return;
            }

            if (_currentProtocol.Id >= 0)
            {
                CopsBaseEntities.GetContext().Protocol.AddOrUpdate(_currentProtocol);
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
