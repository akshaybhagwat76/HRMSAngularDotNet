namespace API.Helpers
{
    public class Common
    {
        /// <summary>
        /// To demonstrate extraction of file extension from base64 string.
        /// </summary>
        /// <param name="base64String">base64 string.</param>
        /// <returns>Henceforth file extension from string.</returns>
        public string GetFileExtension(string base64String)
        {
            if (string.IsNullOrEmpty(base64String))
            {
                return string.Empty;
            }

            var data = base64String.Split(",")[1].ToUpper();
            string dataBase64Prefix = base64String.Split(";")[0];
            string mimeContent = dataBase64Prefix.Split("/")[1];

            if (!string.IsNullOrEmpty(data))
            {
                data = data.ToUpper();
                if (data.StartsWith("IVBORW"))
                {
                    return ".png";
                }
                else if (data.StartsWith("/9J/4"))
                {
                    return ".jpg";
                }
                else if (data.StartsWith("AAAAF"))
                {
                    return ".mp4";
                }
                else if (data.StartsWith("JVBER"))
                {
                    return ".pdf";
                }
                else if (data.StartsWith("R0AAG"))
                {
                    return ".txt";
                }
                else if (data.StartsWith("AAABA"))
                {
                    return ".ico";
                }
                else if (data.StartsWith("UMFYI"))
                {
                    return ".rar";
                }
                else if (data.StartsWith("E1XYD"))
                {
                    return ".rtf";
                }
                else if (data.StartsWith("U1PKC"))
                {
                    return ".txt";
                }
                else if (data.StartsWith("UESDB"))
                {
                    if (!string.IsNullOrEmpty(mimeContent) && mimeContent.Contains("zip"))
                    {
                        return ".zip";
                    }
                    else if (!string.IsNullOrEmpty(mimeContent) && mimeContent.Contains("document"))
                    {
                        return ".docx";
                    }
                    else if (!string.IsNullOrEmpty(mimeContent) && mimeContent.Contains("sheet"))
                    {
                        return ".xlsx";
                    }
                    else if (!string.IsNullOrEmpty(mimeContent) && mimeContent.Contains("presentation"))
                    {
                        return ".pptx";
                    }
                    else
                    {
                        return string.Empty;
                    }
                }

                else if (data.StartsWith("R0LGO"))
                {
                    return ".gif";
                }
                else
                {
                    return string.Empty;
                }
            }
            return string.Empty;
        }

        public class ReplyFormat
        {
            public int Value { get; set; }
            public string Text { get; set; }
            public int Group { get; set; }
        }
    }
}
