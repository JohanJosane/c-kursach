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
using Word = Microsoft.Office.Interop.Word;

namespace CopsSnitch.Views
{
    /// <summary>
    /// Логика взаимодействия для CarAccidentPage.xaml
    /// </summary>
    public partial class CarAccidentPage : Page
    {
        public CarAccidentPage()
        {
            InitializeComponent();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            WindowEditCarAccident WER = new WindowEditCarAccident((sender as Button).DataContext as CarAccident);
            WER.Show();
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            WindowEditCarAccident WER = new WindowEditCarAccident(null);
            WER.Show();
        }

        private void Protocol_Click(object sender, RoutedEventArgs e)
        {
            Manager.Frame1.Navigate(new ProtocolPage());
        }        

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            var CarAccidentForRemoving = CarRP.SelectedItems.Cast<CarAccident>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {CarAccidentForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    CopsBaseEntities.GetContext().CarAccident.RemoveRange(CarAccidentForRemoving);
                    CopsBaseEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    CarRP.ItemsSource = CopsBaseEntities.GetContext().CarAccident.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Update_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                CopsBaseEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                CarRP.ItemsSource = CopsBaseEntities.GetContext().CarAccident.ToList();
            }
        }      
        private void otchet_Click(object sender, RoutedEventArgs e)
        {
            var allRequest = CopsBaseEntities.GetContext().CarAccident.ToList();

            var application = new Word.Application();

            Word.Document document = application.Documents.Add();

            Word.Paragraph userParagraph = document.Paragraphs.Add();
            Word.Range userRange = userParagraph.Range;
            userRange.Text = "Отчет по проишествиям";
            userRange.InsertParagraphAfter();

            Word.Paragraph tableParagraph = document.Paragraphs.Add();
            Word.Range tableRange = tableParagraph.Range;
            Word.Table paymentsTable = document.Tables.Add(tableRange, allRequest.Count() + 1, 3);
            paymentsTable.Borders.InsideLineStyle = paymentsTable.Borders.OutsideLineStyle
                = Word.WdLineStyle.wdLineStyleSingle;
            paymentsTable.Range.Cells.VerticalAlignment = Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;

            Word.Range cellRange;

            cellRange = paymentsTable.Cell(1, 1).Range;
            cellRange.Text = "Номер проишествия";

            cellRange = paymentsTable.Cell(1, 2).Range;
            cellRange.Text = "Дата проишествия";

            cellRange = paymentsTable.Cell(1, 3).Range;
            cellRange.Text = "Место проишествия";          


            paymentsTable.Rows[1].Range.Bold = 1;
            paymentsTable.Rows[1].Range.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;

            for (int i = 0; i < allRequest.Count(); i++)
            {
                var currentCategory = allRequest[i];

                cellRange = paymentsTable.Cell(i + 2, 1).Range;
                cellRange.Text = Convert.ToString(currentCategory.Id);
                cellRange.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;

                cellRange = paymentsTable.Cell(i + 2, 3).Range;
                cellRange.Text = Convert.ToString(currentCategory.Place);              

                cellRange = paymentsTable.Cell(i + 2, 2).Range;
                cellRange.Text = currentCategory.Date.ToString("dd.MM.yyyy");             
            }
            application.Visible = true;
        }
    }
}
