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
    /// Логика взаимодействия для ProtocolPage.xaml
    /// </summary>
    public partial class ProtocolPage : Page
    {
        public ProtocolPage()
        {
            InitializeComponent();
        }

        //Кнопка добавления
        private void EditProtocol_Click(object sender, RoutedEventArgs e)
        {
            WindowEditProtocol WEP = new WindowEditProtocol(null);
            WEP.Show();
        }

        //Кнопка редактирования
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            WindowEditProtocol WEG = new WindowEditProtocol((sender as Button).DataContext as Protocol);
            WEG.Show();
        }

        //Код для кнопки удаления
        private void DeleteProtocol_Click(object sender, RoutedEventArgs e)
        {
            var ProtocolForRemoving = ProtocolPP.SelectedItems.Cast<Protocol>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {ProtocolForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    CopsBaseEntities.GetContext().Protocol.RemoveRange(ProtocolForRemoving);
                    CopsBaseEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    ProtocolPP.ItemsSource = CopsBaseEntities.GetContext().Protocol.ToList();
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
                ProtocolPP.ItemsSource = CopsBaseEntities.GetContext().Protocol.ToList();
            }
        }

        //Кнопка создания отчетов
        private void otchet_Click(object sender, RoutedEventArgs e)
        {
            var allRequest = CopsBaseEntities.GetContext().Protocol.ToList();

            var application = new Word.Application();

            Word.Document document = application.Documents.Add();

            Word.Paragraph userParagraph = document.Paragraphs.Add();
            Word.Range userRange = userParagraph.Range;
            userRange.Text = "Отчет по протоколу";
            userRange.InsertParagraphAfter();

            Word.Paragraph tableParagraph = document.Paragraphs.Add();
            Word.Range tableRange = tableParagraph.Range;
            Word.Table paymentsTable = document.Tables.Add(tableRange, allRequest.Count() + 1, 5);
            paymentsTable.Borders.InsideLineStyle = paymentsTable.Borders.OutsideLineStyle
                = Word.WdLineStyle.wdLineStyleSingle;
            paymentsTable.Range.Cells.VerticalAlignment = Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;

            Word.Range cellRange;

            cellRange = paymentsTable.Cell(1, 1).Range;
            cellRange.Text = "Номер протокола";
            cellRange = paymentsTable.Cell(1, 2).Range;
            cellRange.Text = "Виновный";
            cellRange = paymentsTable.Cell(1, 3).Range;
            cellRange.Text = "Сумма штрафа";
            cellRange = paymentsTable.Cell(1, 4).Range;
            cellRange.Text = "Дата оплаты";
            cellRange = paymentsTable.Cell(1, 5).Range;
            cellRange.Text = "Полицейский";


            paymentsTable.Rows[1].Range.Bold = 1;
            paymentsTable.Rows[1].Range.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;

            for (int i = 0; i < allRequest.Count(); i++)
            {
                var currentCategory = allRequest[i];
               
                    cellRange = paymentsTable.Cell(i + 2, 1).Range;
                    cellRange.Text = Convert.ToString(currentCategory.Id);
                    cellRange.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;

                    cellRange = paymentsTable.Cell(i + 2, 2).Range;
                    cellRange.Text = Convert.ToString(currentCategory.Owner.FIO);

                    cellRange = paymentsTable.Cell(i + 2, 3).Range;
                    cellRange.Text = Convert.ToString(currentCategory.IncidentAmount);

                    cellRange = paymentsTable.Cell(i + 2, 4).Range;
                    cellRange.Text = currentCategory.DateOfPayment.ToString("dd.MM.yyyy");

                    cellRange = paymentsTable.Cell(i + 2, 5).Range;
                    cellRange.Text = Convert.ToString(currentCategory.Cops.FIO);               
            }
          application.Visible = true;

        }
    }
}
